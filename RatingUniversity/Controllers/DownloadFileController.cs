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
using System.Net;
//using System.Threading.Tasks;
//using Microsoft.Office.Interop.Excel;

namespace RatingUniversity.Controllers
{
    public class DownloadFileController : Controller
    {
        //
        // GET: /DownloadFile/
        //public async Task<ActionResult> Index()
		public ActionResult Index()
        {
			TablesContext db = new TablesContext();
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			//IQueryable<Jadval1> poisk_reyting = db.Jadval1.Where(pr => pr.Year == yil);
			
			var list = db.Jadval1.Where(pr => pr.Year == yil).OrderBy(j => j.Year).OrderBy(j => j.Reyting);
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;
			//return View(await list.ToListAsync());
			return View(list.ToList());
        }
		
		public FileResult Download()
		{
			string filename = Server.MapPath("~/Files/table1.xls");
			byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
			string client_fileName = "table1.xls";
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
					//Set file details.
					SetFileDetails(f, out fileName, out filepath, out fileExtension);

					if (fileExtension == ".xls" || fileExtension == ".xlsx")
					{
						//Save the uploaded file to the application folder.
						string savedExcelFiles = Server.MapPath("~/Files/Upload/") + fileName;
						f.SaveAs(savedExcelFiles);

						//Read Data From ExcelFiles.
						ReadDataFromExcelFiles(savedExcelFiles);
					}
					else
					{
						//TODO: Send Alert to the users file not supported.
					}
				}
			}
			return RedirectToAction("Index", "DownloadFile");
		}


		/// <summary>
		/// This method is used to get the file details and set.
		/// </summary>
		private static void SetFileDetails(HttpPostedFileBase f, out string fileName, out string filepath, out string fileExtension)
		{
			fileName = Path.GetFileName(f.FileName);
			fileExtension = Path.GetExtension(f.FileName);
			filepath = Path.GetFullPath(f.FileName);
		}


		/// <summary>
		/// This method is used to get the data source and read the data from files.
		/// </summary>
		private void ReadDataFromExcelFiles(string savedExcelFiles)
		{
			//Create a connection string to access the data of Excel file by the help of Microsoft ACE OLEDB providers.
			var connectionString = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 12.0;", savedExcelFiles);

			//Fill the DataSet by the Sheets.
			var adapter = new OleDbDataAdapter("SELECT * FROM [List1$]", connectionString);
			var ds = new DataSet();
			adapter.Fill(ds, "T1");
			DataTable data = ds.Tables["T1"];
			
			GetExcelData_Jadval1(data);
		}


		private static void GetExcelData_Jadval1(DataTable data)
		{
			List<Jadval1> uploadExl = new List<Jadval1>();
			for (int i = 4; i < data.Rows.Count - 4; i++)
			{
				Jadval1 NewUpload = new Jadval1();
				NewUpload.OtmName = Convert.ToString(data.Rows[i][1]);
				NewUpload.State = Convert.ToString(data.Rows[i][2]);
				//if (data.Rows[i][3] != null) Int32.TryParse(data.Rows[i][3], NewUpload.Reyting);
				NewUpload.Reyting = Convert.ToInt32(data.Rows[i][3]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());

				uploadExl.Add(NewUpload);
			}

			using (TablesContext db=new TablesContext())
			{
				foreach (var t in uploadExl)
				db.Jadval1.Add(t);
				db.SaveChanges();
			}

		}



	}
}