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
	public class Jadval18Controller : BaseInputDataController
    {
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 20;
            base.Initialize(requestContext);
            ViewBag.active = Functions.CreateActive(this.active, 34);
            this.controllerName = "Jadval18";
            this.tableName = "J18";
            this.procedureName = "P1_9_prepodavaniye_v_sspo";
            this.fileName = "table18.xls";
        }
        //
        // GET: /Jadval18/
		[Authorize(Roles = "admin, user")]
		public ActionResult Index(int? id, int? page)
		{
			TablesContext db = new TablesContext();
			int? UniverId = this.id;
			if (id == null && User.IsInRole("admin")) return View("List", db.university.ToList());
			else if (id != null && User.IsInRole("admin")) UniverId = id;

			var list = db.Jadval18.Where(pr => pr.Year == this.year).Where(y => y.UniversityId == UniverId).OrderBy(j => j.Year);
            ViewBag.bor = (list.Count() > 0);

			DateTime? status_dt = db.Monitorings.Where(x => x.Year == this.year).Where(y => y.UniverId == UniverId).Select(z => z.Srok).FirstOrDefault();
			ViewBag.status_date = 0;
			ViewBag.date = status_dt;
			if (status_dt < DateTime.Now) ViewBag.status_date = 1;

            ViewBag.id = UniverId;
            ViewBag.status = MonitoringUpdate.GetStatus(UniverId, this.tableName, this.year);
			IQueryable<university> university = db.university.Where(model => model.id == UniverId);
			ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
			//return View(list.ToList());
			int pageSize = 50;
			int pageNumber = (page ?? 1);
			return View(list.ToPagedList(pageNumber, pageSize));
		}
        
        [HttpPost]
		[Authorize(Roles = "user")]
		public override ActionResult Upload(IEnumerable<HttpPostedFileBase> files)
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
						string ID_upl = this.id.ToString();
						string savepath = Server.MapPath("~/Files/Upload/") + this.year + "/" + ID_upl + "/";
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
			return RedirectToAction("Index", "Jadval18");
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

			GetExcelData_Jadval18(data);
		}

		private void GetExcelData_Jadval18(DataTable data)
		{
			int UniverId = this.id;
			List<Jadval18> uploadExl = new List<Jadval18>();
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
				Jadval18 NewUpload = new Jadval18();
				NewUpload.FullName = Convert.ToString(data.Rows[i][1]);
				NewUpload.Khk_ak_Name = Convert.ToString(data.Rows[i][2]);
				NewUpload.Post = Convert.ToString(data.Rows[i][3]);
				NewUpload.Orindosh = Convert.ToString(data.Rows[i][4]);
				NewUpload.Soatbay = Convert.ToString(data.Rows[i][5]);
				NewUpload.Subject = Convert.ToString(data.Rows[i][6]);
				NewUpload.Asos = Convert.ToString(data.Rows[i][7]);
				NewUpload.AsosFile = "#" + Convert.ToString(data.Rows[i][8]);
                NewUpload.Year = (short) this.year;
				NewUpload.Status = 1;
				NewUpload.UniversityId = UniverId;

				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				IQueryable<Jadval18> deleteRows = db.Jadval18.Where(x => x.Year == this.year).Where(y => y.UniversityId == UniverId);
				foreach (var row in deleteRows)
				{
					db.Jadval18.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadval18.Add(t);
				db.SaveChanges();
				MonitoringUpdate.Update(UniverId, this.tableName, 0, this.year);
			}

		}

        protected override void UpdateFileName(string fileName, int recordId)
        {
            TablesContext db = new TablesContext();
            Jadval18 record = db.Jadval18.Find(recordId);
            record.AsosFile = fileName;
            db.Entry(record).State = EntityState.Modified;
            db.SaveChanges();
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
				Jadval18 j2 = db.Jadval18.Find(id);
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