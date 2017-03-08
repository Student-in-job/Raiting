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

namespace RatingUniversity.Controllers
{
	public class Jadval2_1Controller : BaseInputDataController
    {
        TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 4;
            base.Initialize(requestContext);
            ViewBag.active = Functions.CreateActive(this.active, 34);
            this.tableName = "J2_1";
            this.procedureName = "P2_1_ochenka_znaniy_studentov";
            this.fileName = "table2_1.xls";
            this.controllerName = "Jadval2_1";
        }
        //
        // GET: /Jadval2_1/
		[Authorize(Roles = "admin, user")]
		public ActionResult Index()
		{
			ViewBag.status = MonitoringUpdate.GetStatus(null, this.tableName, this.year);
            int UniverId = this.id;
			IEnumerable <Jadval_talababilim_2_1> list;
            if (!User.IsInRole("admin"))
                list = db.Jadval_talababilim_2_1.Where(model=> model.Year == this.year && model.UniversityId == this.id).ToList();
			else 
                list = db.Jadval_talababilim_2_1.Where(model => model.Year == this.year).ToList();
            ViewBag.bor = (list.Count() > 0);

            Dictionary<int, string> listUniversities = new Dictionary<int, string>();
            IEnumerable<university> universities = this.db.university.ToList();
            foreach (university record in universities)
            {
                string universityName = (ViewBag.lang == "RU") ? record.name_RU : record.name_UZ;
                listUniversities.Add(record.id, universityName);
            }
            ViewBag.listUniversities = listUniversities;

			DateTime? status_dt = db.Monitorings.Where(x => x.Year == this.year).Where(y => y.UniverId == UniverId).Select(z => z.Srok).FirstOrDefault();
			ViewBag.status_date = 0;
			ViewBag.date = status_dt;
			if (status_dt < DateTime.Now) ViewBag.status_date = 1;

			return View(list);
		}

		[Authorize(Roles = "admin, user")]
		public override ActionResult Download()
		{
            string filename_original = Server.MapPath("~/Files/table2_1.xls");
            string dt = DateTime.Now.ToString("_yyyy_MM_dd__HH_mm_ss");
            string path = Server.MapPath("~/Files/downloads/");
            DirectoryInfo di = new DirectoryInfo(path);
            if (!di.Exists) Directory.CreateDirectory(path);
            string filename = Server.MapPath("~/Files/downloads/table2_1_" + dt + ".xls");
            System.IO.File.Copy(filename_original, filename);

			OleDbConnection oledbcon = new OleDbConnection(string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties='Excel 12.0 xml;HDR=No'", filename));
			TablesContext db = new TablesContext();
			var list = db.Database.SqlQuery<university>(@"select u.id, u.name_RU, u.name_UZ, u.id_branch, u.id_region from university u ORDER BY u.name_"+ViewBag.lang);
			OleDbCommand MyCommand = new OleDbCommand();
			oledbcon.Open();
			MyCommand.Connection = oledbcon;
			int xi = 4;
			foreach (var l in list)
			{
				string sql = "update [List1$A" + xi.ToString() + ":A" + xi.ToString() + "] set F1=(@param1);";
				MyCommand.CommandType = CommandType.Text;
				MyCommand.CommandText = sql;
				MyCommand.Parameters.Clear();
				MyCommand.Parameters.Add("param1", OleDbType.Integer).Value = l.id;
				MyCommand.ExecuteNonQuery();
				sql = "update [List1$B" + xi.ToString() + ":B" + xi.ToString() + "] set F1=(@param2);";
				MyCommand.CommandType = CommandType.Text;
				MyCommand.CommandText = sql;
				MyCommand.Parameters.Clear();
				MyCommand.Parameters.Add("param2", OleDbType.VarChar).Value = (ViewBag.lang == "RU") ? l.name_RU : l.name_UZ;
				MyCommand.ExecuteNonQuery();
				xi++;
			}
			oledbcon.Close();

            byte[] fileBytes = System.IO.File.ReadAllBytes(filename);
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, this.fileName);
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
					//Set file details.
					SetFileDetails(f, out fileName, out filepath, out fileExtension);

					if (fileExtension == ".xls" || fileExtension == ".xlsx")
					{
						//Save the uploaded file to the application folder.
                        string ID_upl = "admin";
						string savepath = Server.MapPath("~/Files/Upload/") + this.year + "/" + ID_upl + "/";
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
			return RedirectToAction("Index", "Jadval2_1");
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

			GetExcelData_Jadval2_1(data);
		}

		private void GetExcelData_Jadval2_1(DataTable data)
		{
			List<Jadval_talababilim_2_1> uploadExl = new List<Jadval_talababilim_2_1>();
			for (int i = 2; i < data.Rows.Count - 3; i++)
			{
				Jadval_talababilim_2_1 NewUpload = new Jadval_talababilim_2_1();
				if (data.Rows[i][0].ToString() == "") break;
				NewUpload.T_Qualified = Convert.ToInt32(data.Rows[i][2]);
				NewUpload.T_All = Convert.ToInt32(data.Rows[i][3]);
				NewUpload.Year = (short) this.year;
				NewUpload.UniversityId = Convert.ToInt32(data.Rows[i][0]);
				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				IQueryable<Jadval_talababilim_2_1> deleteRows = db.Jadval_talababilim_2_1.Where(x => x.Year == this.year);
				foreach (var row in deleteRows)
				{
					db.Jadval_talababilim_2_1.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadval_talababilim_2_1.Add(t);
				db.SaveChanges();
                MonitoringUpdate.Update(this.tableName, 0, this.year);
			}
		}
	}
}