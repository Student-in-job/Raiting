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
    public class Jadval7Controller : Controller
    {
        //
        // GET: /Jadval7/
        public ActionResult Index()
        {
			TablesContext db = new TablesContext();
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			//IQueryable<Jadval1> poisk_reyting = db.Jadval1.Where(pr => pr.Year == yil);

			var list = db.Jadval7.Where(pr => pr.Year == yil).OrderBy(j => j.Year);
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;
			//return View(await list.ToListAsync());
			return View(list.ToList());
		}

		public FileResult Download()
		{
			string filename = Server.MapPath("~/Files/table7.xls");
			byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
			string client_fileName = "table7.xls";
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
			return RedirectToAction("Index", "Jadval7");
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
//			GetExcelData_Jadval7(data,0);

			List<Jadval7> uploadExl = new List<Jadval7>();
			for (int i = 4; i < data.Rows.Count - 7; i++)
			{
				Jadval7 NewUpload = new Jadval7();
				NewUpload.FullName_uzb = Convert.ToString(data.Rows[i][2]);
				NewUpload.State_uzb = Convert.ToString(data.Rows[i][3]);
				NewUpload.Mutaxassislik_uzb = Convert.ToString(data.Rows[i][4]);
				NewUpload.FullName_xorij = Convert.ToString(data.Rows[i][5]);
				NewUpload.State_xorij = Convert.ToString(data.Rows[i][6]);
				NewUpload.Mutaxassislik_xorij = Convert.ToString(data.Rows[i][7]);
				NewUpload.Asos = Convert.ToString(data.Rows[i][1]);
				//NewUpload.Asos_fayl = Convert.ToString(data.Rows[i][8]);
				NewUpload.Bak_mag = 0;
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = 24;

				uploadExl.Add(NewUpload);
			}

			var adapter_mag = new OleDbDataAdapter("SELECT * FROM [List2$]", connectionString);
			var ds_mag = new DataSet();
			adapter_mag.Fill(ds, "T2");
			DataTable data_mag = ds.Tables["T2"];

			//GetExcelData_Jadval7(data_mag, 1);
			for (int i = 4; i < data_mag.Rows.Count - 7; i++)
			{
				Jadval7 NewUpload = new Jadval7();
				NewUpload.FullName_uzb = Convert.ToString(data_mag.Rows[i][2]);
				NewUpload.State_uzb = Convert.ToString(data_mag.Rows[i][3]);
				NewUpload.Mutaxassislik_uzb = Convert.ToString(data_mag.Rows[i][4]);
				NewUpload.FullName_xorij = Convert.ToString(data_mag.Rows[i][5]);
				NewUpload.State_xorij = Convert.ToString(data_mag.Rows[i][6]);
				NewUpload.Mutaxassislik_xorij = Convert.ToString(data_mag.Rows[i][7]);
				NewUpload.Asos = Convert.ToString(data_mag.Rows[i][1]);
				//NewUpload.Asos_fayl = Convert.ToString(data.Rows[i][8]);
				NewUpload.Bak_mag = 1;
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = 24;

				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				int yil = Int32.Parse(DateTime.Now.Year.ToString());
				IQueryable<Jadval7> deleteRows = db.Jadval7.Where(x => x.Year == yil);
				foreach (var row in deleteRows)
				{
					db.Jadval7.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadval7.Add(t);
				db.SaveChanges();
			}

		}

		private static void GetExcelData_Jadval7(DataTable data, int bak_mag)
		{
			List<Jadval7> uploadExl = new List<Jadval7>();
			for (int i = 4; i < data.Rows.Count - 7; i++)
			{
				Jadval7 NewUpload = new Jadval7();
				NewUpload.FullName_uzb = Convert.ToString(data.Rows[i][2]);
				NewUpload.State_uzb = Convert.ToString(data.Rows[i][3]);
				NewUpload.Mutaxassislik_uzb = Convert.ToString(data.Rows[i][4]);
				NewUpload.FullName_xorij = Convert.ToString(data.Rows[i][5]);
				NewUpload.State_xorij = Convert.ToString(data.Rows[i][6]);
				NewUpload.Mutaxassislik_xorij = Convert.ToString(data.Rows[i][7]);
				NewUpload.Asos = Convert.ToString(data.Rows[i][1]);
				//NewUpload.Asos_fayl = Convert.ToString(data.Rows[i][8]);
				NewUpload.Bak_mag = bak_mag;
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = 24;

				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				int yil = Int32.Parse(DateTime.Now.Year.ToString());
				IQueryable<Jadval7> deleteRows = db.Jadval7.Where(x => x.Year == yil);
				foreach (var row in deleteRows)
				{
					db.Jadval7.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadval7.Add(t);
				db.SaveChanges();
			}

		}




	}
}