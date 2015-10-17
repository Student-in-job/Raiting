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
			string filename = Server.MapPath("~/Files/table8.xls");
			byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
			string client_fileName = "table8.xls";
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
						//Save the uploaded file to the application folder.
						string yil = DateTime.Now.Year.ToString();
						string ID_upl = "24";
						string savepath = Server.MapPath("~/Files/Upload/") + yil + "/" + ID_upl + "/";
						Directory.CreateDirectory(savepath);
						string savedExcelFiles = savepath + Path.GetFileNameWithoutExtension(f.FileName) + DateTime.Now.ToString("_yyyy_MM_dd__HH_mm_ss") + fileExtension;
						f.SaveAs(savedExcelFiles);
						ReadDataFromExcelFiles(savedExcelFiles);
					}
					else
					{
						//TODO: Send Alert to the users file not supported.
					}
				}
			}
			return RedirectToAction("Index", "Jadval8");
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
			GetExcelData_Jadval8(data, 1);//1-professor, 2-student

			var adapter_s = new OleDbDataAdapter("SELECT * FROM [List2$]", connectionString);
			var ds_s = new DataSet();
			adapter_s.Fill(ds, "T2");
			DataTable data_s = ds.Tables["T2"];

			GetExcelData_Jadval8(data_s, 2);//1-professor, 2-student
		}

		private static void GetExcelData_Jadval8(DataTable data, int profstud)
		{
			List<Jadval8> uploadExl = new List<Jadval8>();
			for (int i = 4; i < data.Rows.Count - 7; i++)
			{
				Jadval8 NewUpload = new Jadval8();
				NewUpload.FullName = Convert.ToString(data.Rows[i][2]);
				NewUpload.State_otm_nomi = Convert.ToString(data.Rows[i][3]);
				NewUpload.Talim_yonalish = Convert.ToString(data.Rows[i][4]);
				NewUpload.Loyiha_nomi = Convert.ToString(data.Rows[i][5]);
				NewUpload.Konferensiya_nomi = Convert.ToString(data.Rows[i][6]);
				NewUpload.Student_oqituvchi = profstud;
				NewUpload.Asos = Convert.ToString(data.Rows[i][1]);
				//NewUpload.Asos_fayl = Convert.ToString(data.Rows[i][8]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = 24;

				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				int yil = Int32.Parse(DateTime.Now.Year.ToString());
				IQueryable<Jadval8> deleteRows = db.Jadval8.Where(x => x.Year == yil).Where(x=> x.Student_oqituvchi == profstud);
				foreach (var row in deleteRows)
				{
					db.Jadval8.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadval8.Add(t);
				db.SaveChanges();
			}

		}


	}
}