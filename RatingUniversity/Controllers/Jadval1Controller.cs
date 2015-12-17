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
using RatingUniversity.Classes;
using System.Threading;
using System.Globalization;

using PagedList;
using PagedList.Mvc;

//using System.Threading.Tasks;
//using Microsoft.Office.Interop.Excel;

namespace RatingUniversity.Controllers
{
    public class Jadval1Controller : BaseViewController
    {
        int active = 0;
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            base.Initialize(requestContext);
            ViewBag.active = Functions.CreateActive(this.active, 34);
        }
        //
        // GET: /Jadval1/
        [Authorize(Roles="admin, user")]
		public ActionResult Index(int? page)
		{
			TablesContext db = new TablesContext();
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			var list = db.Jadval1.Where(pr => pr.Year == yil).OrderBy(j => j.Year).OrderBy(j=>j.Reyting);
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;

			int? status_table = db.Monitoring.Where(x => x.Year == yil).Where(y => y.UniverId == this.id).Select(z => z.J1).FirstOrDefault();
			ViewBag.status = status_table;
			DateTime? status_dt = db.Monitoring.Where(x => x.Year == yil).Where(y => y.UniverId == this.id).Select(z => z.Srok).FirstOrDefault();
			ViewBag.status_date = 0;
			ViewBag.date = status_dt;
			if (status_dt < DateTime.Now) ViewBag.status_date = 1;

			ViewBag.role = 0;
			//nuzjno dobavit Yesli (user == podtverjditel) ViewBag.role = 1;
			ViewBag.UniverId = this.id;
			//return View(list.ToList());

			int pageSize = 50;
			int pageNumber = (page ?? 1);
			return View(list.ToPagedList(pageNumber, pageSize));
		}

        [Authorize(Roles = "admin")]
		public ActionResult Tasdiqlash(int UniverId = 0)
		{
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			MonitoringUpdate.Update(UniverId, "J1", 1, yil);
			return RedirectToAction("Index", "Jadval1");
		}

        [Authorize(Roles = "admin")]
		public FileResult Download()
		{
			string filename = Server.MapPath("~/Files/table1.xls");
			byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
			string client_fileName = "table1.xls";
			return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, client_fileName);
		}

		[HttpPost]
        [Authorize(Roles = "admin")]
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
						string ID_upl = "admin";
						string savepath = Server.MapPath("~/Files/Upload/") + yil + "/" + ID_upl+"/";
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
			return RedirectToAction("Index", "Jadval1");
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
			for (int i = 4; i < data.Rows.Count; i++)
			{
				if (i == 305) break;
				Jadval1 NewUpload = new Jadval1();
				NewUpload.OtmName = Convert.ToString(data.Rows[i][1]);
				NewUpload.State = Convert.ToString(data.Rows[i][2]);
				//if (data.Rows[i][3] != null) Int32.TryParse(data.Rows[i][3], NewUpload.Reyting);
				NewUpload.Reyting = Convert.ToInt32(data.Rows[i][3]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				//NewUpload.UniversityId = 24;
				uploadExl.Add(NewUpload);
			}

			using (TablesContext db=new TablesContext())
			{
				int yil = Int32.Parse(DateTime.Now.Year.ToString());
				IQueryable<Jadval1> deleteRows = db.Jadval1.Where(x => x.Year == yil);
				foreach(var row in deleteRows)
				{
					db.Jadval1.Remove(row);
				}
				db.SaveChanges();
		 
				foreach (var t in uploadExl)
					db.Jadval1.Add(t);
				db.SaveChanges();
				MonitoringUpdate.Update(0, "J1", 0, yil);

			}
		}
	}
}