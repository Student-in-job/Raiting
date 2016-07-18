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
using RatingUniversity.Classes;
using PagedList;
using PagedList.Mvc;
using System.Threading;
using System.Globalization;

namespace RatingUniversity.Controllers
{
	public class Jadval7Controller : BaseViewController
    {
        int active;
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 9;
            base.Initialize(requestContext);
            ViewBag.active = Functions.CreateActive(this.active, 34);
        }
        //
        // GET: /Jadval7/
		[Authorize(Roles = "admin, user")]
		public ActionResult Index(int? id, int? page)
		{
			TablesContext db = new TablesContext();
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			int? UniverId = this.id;
			if (id == null && User.IsInRole("admin")) return View("List", db.university.ToList());
			else if (id != null && User.IsInRole("admin")) UniverId = id;

			var list = db.Jadval7.Where(pr => pr.Year == yil).Where(y => y.UniversityId == UniverId).OrderBy(j => j.Year);
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;

			int? status_table = db.Monitorings.Where(x => x.Year == yil).Where(y => y.UniverId == UniverId).Select(z => z.J7).FirstOrDefault();
			ViewBag.status = status_table;
			DateTime? status_dt = db.Monitorings.Where(x => x.Year == yil).Where(y => y.UniverId == UniverId).Select(z => z.Srok).FirstOrDefault();
			ViewBag.status_date = 0;
			ViewBag.date = status_dt;
			if (status_dt < DateTime.Now) ViewBag.status_date = 1;

			ViewBag.role = 0;
			if (User.IsInRole("admin")) ViewBag.role = 1;
			ViewBag.UniverId = UniverId;
			IQueryable<university> university = db.university.Where(model => model.id == UniverId);
			ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
//			return View(list.ToList());
			int pageSize = 50;
			int pageNumber = (page ?? 1);
			return View(list.ToPagedList(pageNumber, pageSize));
		}

		[Authorize(Roles = "admin")]
		public ActionResult Tasdiqlash(int UniverId = 0)
		{
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			MonitoringUpdate.Update(UniverId, "J7", 1, yil);
			return RedirectToAction("Index", "Jadval7");
		}

		[Authorize(Roles = "admin, user")]
		public FileResult Download()
		{
			string filename = Server.MapPath("~/Files/table7.xls");
			byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
			string client_fileName = "table7.xls";
			return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, client_fileName);
		}

		[HttpPost]
		[Authorize(Roles = "user")]
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
						string ID_upl = this.id.ToString();
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
			int UniverId = this.id;
			List<Jadval7> uploadExl = new List<Jadval7>();
			bool flag = false;
			for (int i = 1; i < data.Rows.Count; i++)
			{
				if ((data.Rows[i][0] != DBNull.Value) && (data.Rows[i][1] != DBNull.Value))
				{
					if (!flag)
					{
						flag = Convert.ToString(data.Rows[i][0]) == "1" && Convert.ToString(data.Rows[i][1]) == "2";
						continue;
					}
				}
				else
				{
					continue;
				}
				if (!flag) continue;
				Jadval7 NewUpload = new Jadval7();
				NewUpload.FullName_uzb = Convert.ToString(data.Rows[i][2]);
				NewUpload.State_uzb = Convert.ToString(data.Rows[i][3]);
				NewUpload.Mutaxassislik_uzb = Convert.ToString(data.Rows[i][4]);
				NewUpload.FullName_xorij = Convert.ToString(data.Rows[i][5]);
				NewUpload.State_xorij = Convert.ToString(data.Rows[i][6]);
				NewUpload.Mutaxassislik_xorij = Convert.ToString(data.Rows[i][7]);
				NewUpload.Asos = Convert.ToString(data.Rows[i][1]);
				NewUpload.Asos_fayl = "#"+Convert.ToString(data.Rows[i][8]);
				NewUpload.Bak_mag = 0;
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = UniverId;
				NewUpload.Status = 1;

				uploadExl.Add(NewUpload);
			}

			var adapter_mag = new OleDbDataAdapter("SELECT * FROM [List2$]", connectionString);
			var ds_mag = new DataSet();
			adapter_mag.Fill(ds_mag, "T1");
			DataTable data_mag = ds_mag.Tables["T1"];

			flag = false;
			for (int i = 1; i < data_mag.Rows.Count; i++)
			{
				if ((data_mag.Rows[i][0] != DBNull.Value) && (data_mag.Rows[i][1] != DBNull.Value))
				{
					if (!flag)
					{
						flag = Convert.ToString(data_mag.Rows[i][0]) == "1" && Convert.ToString(data_mag.Rows[i][1]) == "2";
						continue;
					}
				}
				else
				{
					continue;
				}
				if (!flag) continue;
				Jadval7 NewUpload = new Jadval7();
				NewUpload.FullName_uzb = Convert.ToString(data_mag.Rows[i][2]);
				NewUpload.State_uzb = Convert.ToString(data_mag.Rows[i][3]);
				NewUpload.Mutaxassislik_uzb = Convert.ToString(data_mag.Rows[i][4]);
				NewUpload.FullName_xorij = Convert.ToString(data_mag.Rows[i][5]);
				NewUpload.State_xorij = Convert.ToString(data_mag.Rows[i][6]);
				NewUpload.Mutaxassislik_xorij = Convert.ToString(data_mag.Rows[i][7]);
				NewUpload.Asos = Convert.ToString(data_mag.Rows[i][1]);
				NewUpload.Asos_fayl = "#"+Convert.ToString(data_mag.Rows[i][8]);
				NewUpload.Bak_mag = 1;
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = UniverId;
				NewUpload.Status = 1;

				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				int yil = Int32.Parse(DateTime.Now.Year.ToString());
				IQueryable<Jadval7> deleteRows = db.Jadval7.Where(x => x.Year == yil).Where(y => y.UniversityId == UniverId);
				foreach (var row in deleteRows)
				{
					db.Jadval7.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadval7.Add(t);
				db.SaveChanges();
				MonitoringUpdate.Update(UniverId, "J7", 0, yil);
			}

		}

		[Authorize(Roles = "user")]
		public ActionResult UploadData(IEnumerable<HttpPostedFileBase> files, int id)
		{
			if (files != null)
			{
				string fileName;
				string filepath;
				string fileExtension;

				foreach (var f in files)
				{
					SetFileDetails(f, out fileName, out filepath, out fileExtension);

					if (fileExtension == ".pdf")
					{
						//Save the uploaded file to the application folder.
						string yil = DateTime.Now.Year.ToString();
						string ID_upl = this.id.ToString();
						string savepath = Server.MapPath("~/Files/Upload/") + yil + "/" + ID_upl + "/J7/";
						Directory.CreateDirectory(savepath);
						string savedFiles = savepath + id.ToString() + "_" + Path.GetFileNameWithoutExtension(f.FileName) + DateTime.Now.ToString("_yyyy_MM_dd__HH_mm_ss") + fileExtension;
						f.SaveAs(savedFiles);
						TablesContext db = new TablesContext();
						Jadval7 j = db.Jadval7.Find(id);
						j.Asos_fayl = id.ToString() + "_" + Path.GetFileNameWithoutExtension(f.FileName) + DateTime.Now.ToString("_yyyy_MM_dd__HH_mm_ss") + fileExtension;
						db.Entry(j).State = EntityState.Modified;
						db.SaveChanges();
					}
					else
					{
						//TODO: Send Alert to the users file not supported.
						//						return Content("Faqat pdf fayl yuklanishi kerak!");

						return Content("" +
						"<HTML>" +
						"<HEAD>" +
						"<META HTTP-EQUIV='REFRESH' CONTENT='3; URL=" + HttpContext.Request.UrlReferrer.ToString() + "'>" +
						"</HEAD>" +
						"<BODY>" +
						"Faqat pdf fayl yuklanishi kerak!" +
						"</BODY>" +
						"</HTML>");
					}
				}
			}
			return Redirect(Request.UrlReferrer.ToString());
//			return RedirectToAction("Index", "Jadval7");
		}

		[Authorize(Roles = "admin")]
		public ActionResult Status(int? id)
		{
			if (id == null)
			{
				return RedirectToAction("Index");
			}
			using (TablesContext db = new TablesContext())
			{
				Jadval7 j2 = db.Jadval7.Find(id);
				if (j2 == null) Redirect(Request.UrlReferrer.ToString());
				if (j2.Status == 1) j2.Status = 0;
				else j2.Status = 1;
				db.Entry(j2).State = EntityState.Modified;
				db.SaveChanges();
			}
			return Redirect(Request.UrlReferrer.ToString());
		}


	}
}