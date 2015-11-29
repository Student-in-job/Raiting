﻿using System;
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
using RatingUniversity.Classes;
using PagedList;
using PagedList.Mvc;

namespace RatingUniversity.Controllers
{
    public class Jadval32Controller : Controller
    {
        //
        // GET: /Jadval32/
		public ActionResult Index(int? page)
		{
			TablesContext db = new TablesContext();
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			int UniverId = 24;
			var list = db.Jadval32.Where(pr => pr.Year == yil).Where(y => y.UniversityId == UniverId).OrderBy(j => j.Year);
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;

			int? status_table = db.Monitoring.Where(x => x.Year == yil).Where(y => y.UniverId == UniverId).Select(z => z.J32).FirstOrDefault();
			ViewBag.status = status_table;
			DateTime? status_dt = db.Monitoring.Where(x => x.Year == yil).Where(y => y.UniverId == UniverId).Select(z => z.Srok).FirstOrDefault();
			ViewBag.status_date = 0;
			ViewBag.date = status_dt;
			if (status_dt < DateTime.Now) ViewBag.status_date = 1;

			ViewBag.role = 0;
			//nuzjno dobavit Yesli (user == podtverjditel) ViewBag.role = 1;
			ViewBag.UniverId = UniverId;
//			return View(list.ToList());
			int pageSize = 50;
			int pageNumber = (page ?? 1);
			return View(list.ToPagedList(pageNumber, pageSize));

		}

		public ActionResult Tasdiqlash(int UniverId = 0)
		{
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			MonitoringUpdate.Update(UniverId, "J32", 1, yil);
			return RedirectToAction("Index", "Jadval32");
		}
		public FileResult Download()
		{
			string filename = Server.MapPath("~/Files/table32.xls");
			byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
			string client_fileName = "table32.xls";
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
			return RedirectToAction("Index", "Jadval32");
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
			int UniverId = 24;

			List<Jadval32> uploadExl = new List<Jadval32>();
			for (int i = 4; i < data.Rows.Count-5; i++)
			{
				Jadval32 NewUpload = new Jadval32();
				if (data.Rows[i][1] == null) break;
				NewUpload.FullName = Convert.ToString(data.Rows[i][1]);
				NewUpload.BirthDate = Convert.ToDateTime(data.Rows[i][2]);
				NewUpload.Post = Convert.ToString(data.Rows[i][3]);
				NewUpload.stavka = Convert.ToDouble(data.Rows[i][4]);
				NewUpload.GraduatedOtm = Convert.ToString(data.Rows[i][5]);
				NewUpload.Diplom_ixtisoslik = Convert.ToString(data.Rows[i][6]);
				NewUpload.Diplom_mutaxassislik = Convert.ToString(data.Rows[i][7]);
				NewUpload.Ilmiy_daraja = Convert.ToString(data.Rows[i][8]);
				NewUpload.Ilmiy_unvon = Convert.ToString(data.Rows[i][9]);
				NewUpload.Qaysi_yildan_kafedrada_ishlaydi = Convert.ToInt32(data.Rows[i][10]);
				NewUpload.Oxirgi_malaka_oshirgan_yili = Convert.ToInt32(data.Rows[i][11]);
				NewUpload.Subjects = Convert.ToString(data.Rows[i][12]);
				NewUpload.Turi = 1;
				//NewUpload.Asos_fayl = Convert.ToString(data.Rows[i][8]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = UniverId;

				uploadExl.Add(NewUpload);
			
			}

			adapter = new OleDbDataAdapter("SELECT * FROM [List2$]", connectionString);
			ds = new DataSet();
			adapter.Fill(ds, "T2");
			data = ds.Tables["T2"];

			for (int i = 4; i < data.Rows.Count - 5; i++)
			{
				if (data.Rows[i][1] == null) break;
				Jadval32 NewUpload = new Jadval32();
				NewUpload.FullName = Convert.ToString(data.Rows[i][1]);
				NewUpload.BirthDate = Convert.ToDateTime(data.Rows[i][2]);
				NewUpload.Post = Convert.ToString(data.Rows[i][3]);
				NewUpload.stavka = Convert.ToDouble(data.Rows[i][4]);
				NewUpload.GraduatedOtm = Convert.ToString(data.Rows[i][5]);
				NewUpload.Diplom_ixtisoslik = Convert.ToString(data.Rows[i][6]);
				NewUpload.Diplom_mutaxassislik = Convert.ToString(data.Rows[i][7]);
				NewUpload.Ilmiy_daraja = Convert.ToString(data.Rows[i][8]);
				NewUpload.Ilmiy_unvon = Convert.ToString(data.Rows[i][9]);
				NewUpload.Qaysi_yildan_kafedrada_ishlaydi = Convert.ToInt32(data.Rows[i][10]);
				NewUpload.Oxirgi_malaka_oshirgan_yili = Convert.ToInt32(data.Rows[i][11]);
				NewUpload.Subjects = Convert.ToString(data.Rows[i][12]);
				NewUpload.Turi = 2;
				//NewUpload.Asos_fayl = Convert.ToString(data.Rows[i][8]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = UniverId;

				uploadExl.Add(NewUpload);

			}
			adapter = new OleDbDataAdapter("SELECT * FROM [List3$]", connectionString);
			ds = new DataSet();
			adapter.Fill(ds, "T3");
			data = ds.Tables["T3"];

			for (int i = 4; i < data.Rows.Count - 5; i++)
			{
				if (data.Rows[i][1] == null) break;
				Jadval32 NewUpload = new Jadval32();
				NewUpload.FullName = Convert.ToString(data.Rows[i][1]);
				NewUpload.BirthDate = Convert.ToDateTime(data.Rows[i][2]);
				NewUpload.Post = Convert.ToString(data.Rows[i][3]);
				NewUpload.stavka = Convert.ToDouble(data.Rows[i][4]);
				NewUpload.GraduatedOtm = Convert.ToString(data.Rows[i][5]);
				NewUpload.Diplom_ixtisoslik = Convert.ToString(data.Rows[i][6]);
				NewUpload.Diplom_mutaxassislik = Convert.ToString(data.Rows[i][7]);
				NewUpload.Ilmiy_daraja = Convert.ToString(data.Rows[i][8]);
				NewUpload.Ilmiy_unvon = Convert.ToString(data.Rows[i][9]);
				NewUpload.Qaysi_yildan_kafedrada_ishlaydi = Convert.ToInt32(data.Rows[i][10]);
				NewUpload.Oxirgi_malaka_oshirgan_yili = Convert.ToInt32(data.Rows[i][11]);
				NewUpload.Subjects = Convert.ToString(data.Rows[i][12]);
				NewUpload.Turi = 1;
				//NewUpload.Asos_fayl = Convert.ToString(data.Rows[i][8]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = UniverId;

				uploadExl.Add(NewUpload);

			}

			using (TablesContext db = new TablesContext())
			{
				int yil = Int32.Parse(DateTime.Now.Year.ToString());
				IQueryable<Jadval32> deleteRows = db.Jadval32.Where(x => x.Year == yil).Where(y=>y.UniversityId == UniverId);
				foreach (var row in deleteRows)
				{
					db.Jadval32.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadval32.Add(t);
				db.SaveChanges();
				MonitoringUpdate.Update(UniverId, "J32", 0, yil);
			}

		}
	}
}