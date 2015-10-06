using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Models;
using System.IO;
using System.Data;
using System.Data.Entity;
using System.Data.OleDb;
using System.Data.Sql;
using System.Data.SqlClient;

namespace RatingUniversity.Controllers
{
    public class Jadval8Controller : Controller
    {
        //
        // GET: /Jadval8/
        public ActionResult Index()
        {
			TablesContext db = new TablesContext();
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			//IQueryable<Jadval1> poisk_reyting = db.Jadval1.Where(pr => pr.Year == yil);

			var list = db.Jadval8.Where(pr => pr.Year == yil).OrderBy(j => j.Year);
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;
			//return View(await list.ToListAsync());
			return View(list.ToList());
		}
		public FileResult Download()
		{
			string filename = Server.MapPath("~/Files/table6.xls");
			byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
			string client_fileName = "table6.xls";
			return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, client_fileName);
		}

		[HttpPost]
		public ActionResult Upload(IEnumerable<HttpPostedFileBase> files)
		{
			if (files != null)
			{
				string fileName;
				string filepath;
				string fileExtension;

				foreach (var f in files)
				{
					SetFileDetails(f, out fileName, out filepath, out fileExtension);
					if (fileExtension == ".xls" || fileExtension == ".xlsx")
					{
						string savedExcelFiles = Server.MapPath("~/Files/Upload/") + fileName;
						f.SaveAs(savedExcelFiles);
						ReadDataFromExcelFiles(savedExcelFiles);
					}
					else
					{
						//TODO: Send Alert to the users file not supported.
					}
				}
			}
			return RedirectToAction("Index", "Jadval6");
		}


		private static void SetFileDetails(HttpPostedFileBase f, out string fileName, out string filepath, out string fileExtension)
		{
			fileName = Path.GetFileName(f.FileName);
			fileExtension = Path.GetExtension(f.FileName);
			filepath = Path.GetFullPath(f.FileName);
		}


		private void ReadDataFromExcelFiles(string savedExcelFiles)
		{
			//Create a connection string to access the data of Excel file by the help of Microsoft ACE OLEDB providers.
			var connectionString = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 12.0;", savedExcelFiles);

			//Fill the DataSet by the Sheets.
			var adapter = new OleDbDataAdapter("SELECT * FROM [List1$]", connectionString);
			var ds = new DataSet();
			adapter.Fill(ds, "T1");
			DataTable data = ds.Tables["T1"];

			GetExcelData_Jadval8(data);
		}

		private static void GetExcelData_Jadval8(DataTable data)
		{
			List<Jadval8> uploadExl = new List<Jadval8>();
			for (int i = 4; i < data.Rows.Count - 6; i++)
			{
				Jadval8 NewUpload = new Jadval8();
				NewUpload.FullName = Convert.ToString(data.Rows[i][2]);
				NewUpload.State_otm_nomi = Convert.ToString(data.Rows[i][3]);
				NewUpload.Talim_yonalish = Convert.ToString(data.Rows[i][4]);
				NewUpload.Loyiha_nomi = Convert.ToString(data.Rows[i][5]);
				NewUpload.Konferensiya_nomi = Convert.ToString(data.Rows[i][6]);
				NewUpload.Student_oqituvchi = Convert.ToInt32(data.Rows[i][7]);///???????????????? jadvalda yo'q!!!
				NewUpload.Asos = Convert.ToString(data.Rows[i][1]);
				//NewUpload.Asos_fayl = Convert.ToString(data.Rows[i][8]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());

				

				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				foreach (var t in uploadExl)
					db.Jadval8.Add(t);
				db.SaveChanges();
			}

		}


	}
}