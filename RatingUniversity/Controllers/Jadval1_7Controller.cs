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

namespace RatingUniversity.Controllers
{
    public class Jadval1_7Controller : Controller
    {
        //
        // GET: /Jadval1_7/
		public ActionResult Index()
		{
			TablesContext db = new TablesContext();
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			var list = db.Jadval_AKTdaraja_1_7.Where(pr => pr.Year == yil).OrderBy(j => j.Year);
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;
			return View(list.ToList());
		}

		public FileResult Download()
		{
			string filename = Server.MapPath("~/Files/table1_7.xlsx");
			byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
			string client_fileName = "table1_7.xlsx";
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
						string yil = DateTime.Now.Year.ToString();
						string ID_upl = "24";
						string savepath = Server.MapPath("~/Files/Upload/") + yil + "/" + ID_upl + "/";
						Directory.CreateDirectory(savepath);
						string savedExcelFiles = savepath + Path.GetFileNameWithoutExtension(f.FileName) + DateTime.Now.ToString("_yyyy_MM_dd__HH_mm_ss") + fileExtension;
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
			return RedirectToAction("Index", "Jadval1_7");
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

			GetExcelData_Jadval1_7(data);
		}


		private static void GetExcelData_Jadval1_7(DataTable data)
		{
			List<Jadval_AKTdaraja_1_7> uploadExl = new List<Jadval_AKTdaraja_1_7>();
			for (int i = 2; i < data.Rows.Count-2; i++)
			{
				Jadval_AKTdaraja_1_7 NewUpload = new Jadval_AKTdaraja_1_7();
				NewUpload.P = Convert.ToInt32(data.Rows[i][2]);
				NewUpload.P7 = Convert.ToInt32(data.Rows[i][3]);
				NewUpload.P8 = Convert.ToInt32(data.Rows[i][4]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = 24;
				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				int yil = Int32.Parse(DateTime.Now.Year.ToString());
				IQueryable<Jadval_AKTdaraja_1_7> deleteRows = db.Jadval_AKTdaraja_1_7.Where(x => x.Year == yil);
				foreach (var row in deleteRows)
				{
					db.Jadval_AKTdaraja_1_7.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadval_AKTdaraja_1_7.Add(t);
				db.SaveChanges();
			}
		}
	}
}