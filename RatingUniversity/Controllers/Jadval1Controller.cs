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
    public class Jadval1Controller : BaseInputDataController
    {
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            base.Initialize(requestContext);
            ViewBag.active = Functions.CreateActive(this.active, 34);
            this.tableName = "J1";
            this.fileName = "table1.xls";
            this.controllerName = "Jadval1";
        }
        //
        // GET: /Jadval1/
        [Authorize(Roles="admin, user")]
		public ActionResult Index(int? page)
		{
			TablesContext db = new TablesContext();
			var list = db.Jadval1.Where(pr => pr.Year == this.year).OrderBy(j => j.Year).OrderBy(j=>j.Reyting);
			ViewBag.bor = (list.Count() > 0);

            ViewBag.status = MonitoringUpdate.GetStatus(null, this.tableName, this.year);
			
            int pageSize = 50;
			int pageNumber = (page ?? 1);
			return View(list.ToPagedList(pageNumber, pageSize));
		}

		[HttpPost]
        [Authorize(Roles = "admin")]
		public override ActionResult Upload(IEnumerable<HttpPostedFileBase> files)
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
						string ID_upl = "admin";
						string savepath = Server.MapPath("~/Files/Upload/") + this.year + "/" + ID_upl+"/";
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

		private void GetExcelData_Jadval1(DataTable data)
		{
			List<Jadval1> uploadExl = new List<Jadval1>();
			for (int i = 4; i < data.Rows.Count; i++)
			{
                if ((i == 305) && (data.Rows[i][0] == "")) break;
				Jadval1 NewUpload = new Jadval1();
                if (data.Rows[i][1] != DBNull.Value) 
                    NewUpload.OtmName = Convert.ToString(data.Rows[i][1]);
                if (data.Rows[i][2] != DBNull.Value) 
                    NewUpload.State = Convert.ToString(data.Rows[i][2]);
				//if (data.Rows[i][3] != null) Int32.TryParse(data.Rows[i][3], NewUpload.Reyting);
                if (data.Rows[i][3] != DBNull.Value)
                    NewUpload.Reyting = Convert.ToInt32(data.Rows[i][3]);
				NewUpload.Year = (short) this.year;
				//NewUpload.UniversityId = 24;
				uploadExl.Add(NewUpload);
			}

			using (TablesContext db=new TablesContext())
			{
				IQueryable<Jadval1> deleteRows = db.Jadval1.Where(x => x.Year == this.year);
				foreach(var row in deleteRows)
				{
					db.Jadval1.Remove(row);
				}
				db.SaveChanges();
		 
				foreach (var t in uploadExl)
					db.Jadval1.Add(t);
				db.SaveChanges();
                MonitoringUpdate.Update(this.tableName, 0, this.year);
			}
		}

        public override ActionResult ApproveAdmin()
        {
            MonitoringUpdate.Update(this.tableName, 1, this.year);
            return RedirectToAction("index", this.controllerName);
        }
	}
}