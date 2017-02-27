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
    public class Jadval1_2Controller : BaseInputDataController
    {
        TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 1;
            base.Initialize(requestContext);
            this.tableName = "J1_2";
            this.procedureName = "P1_2_kachestvo_prepodavaniya";
            this.fileName = "table1_2.xls";
            this.controllerName = "Jadval1_2";
        }
        //
        // GET: /Jadval1_2/
        [Authorize(Roles = "admin, user")]
		public ActionResult Index()
		{
			ViewBag.status = MonitoringUpdate.GetStatus(null, this.tableName, this.year);
            IEnumerable<Jadval_talimsifati_1_2> list;
            if (!User.IsInRole("admin"))
                list = db.Jadvaltalimsifati_1_2.Where(model => model.Year == this.year && model.UniversityId == this.id).ToList();
			else
                list = db.Jadvaltalimsifati_1_2.Where(model => model.Year == this.year).ToList();
            ViewBag.bor = (list.Count() > 0);

            Dictionary<int, string> listUniversities = new Dictionary<int, string>();
            IEnumerable<university> universities = this.db.university.ToList();
            foreach(university record in universities)
            {
                string universityName = (ViewBag.lang == "RU") ? record.name_RU : record.name_UZ;
                listUniversities.Add(record.id, universityName);
            }
            ViewBag.listUniversities = listUniversities;

            int? status_table = db.Monitorings.Where(x => x.Year == this.year).Where(y => y.UniverId == this.id).Select(z => z.J1_2).FirstOrDefault();
			DateTime? status_dt = db.Monitorings.Where(x => x.Year == this.year).Where(y => y.UniverId == this.id).Select(z => z.Srok).FirstOrDefault();
			ViewBag.status_date = 0;
			ViewBag.date = status_dt;
			if (status_dt < DateTime.Now) ViewBag.status_date = 1;

			return View(list);
		}

        [Authorize(Roles = "admin")]
        public override ActionResult Download()
		{
			string filename_original = Server.MapPath("~/Files/table1_2.xls");
			string dt = DateTime.Now.ToString("_yyyy_MM_dd__HH_mm_ss");
            string path = Server.MapPath("~/Files/downloads/");
            DirectoryInfo di = new DirectoryInfo(path);
            if (!di.Exists) Directory.CreateDirectory(path);
			string filename = Server.MapPath("~/Files/downloads/table1_2_" + dt + ".xls");
            System.IO.File.Copy(filename_original, filename);

			OleDbConnection oledbcon = new OleDbConnection(string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties='Excel 12.0 xml;HDR=No'", filename));
			TablesContext db = new TablesContext();
            var list = db.Database.SqlQuery<university>(@"select u.id, u.name_UZ, u.name_RU, u.id_branch, u.id_region from university u ORDER BY u.name_" + ViewBag.lang);
			OleDbCommand MyCommand = new OleDbCommand();
			oledbcon.Open();
			MyCommand.Connection = oledbcon;
			int xi = 5;
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
        [Authorize(Roles="user")]
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
			return RedirectToAction("Index", "Jadval1_2");
		}


		/// <summary>
		/// This method is used to get the file details and set.
		/// </summary>
		private void SetFileDetails(HttpPostedFileBase f, out string fileName, out string filepath, out string fileExtension)
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

			GetExcelData_Jadval1_2(data);
		}


		private void GetExcelData_Jadval1_2(DataTable data)
		{
			List<Jadval_talimsifati_1_2> uploadExl = new List<Jadval_talimsifati_1_2>();
			for (int i = 3; i < data.Rows.Count; i++)
			{
				Jadval_talimsifati_1_2 NewUpload = new Jadval_talimsifati_1_2();
				if (data.Rows[i][0].ToString() == "") break;
				NewUpload.T = Convert.ToInt32(data.Rows[i][2]);
				NewUpload.N1 = Convert.ToInt32(data.Rows[i][3]);
				NewUpload.N41 = Convert.ToInt32(data.Rows[i][4]);
				NewUpload.N51 = Convert.ToInt32(data.Rows[i][5]);
				NewUpload.N2 = Convert.ToInt32(data.Rows[i][6]);
				NewUpload.N42 = Convert.ToInt32(data.Rows[i][7]);
				NewUpload.N52 = Convert.ToInt32(data.Rows[i][8]);
				NewUpload.N3 = Convert.ToInt32(data.Rows[i][9]);
				NewUpload.N43 = Convert.ToInt32(data.Rows[i][10]);
				NewUpload.N53 = Convert.ToInt32(data.Rows[i][11]);
				NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
				NewUpload.UniversityId = Convert.ToInt32(data.Rows[i][0]);
				uploadExl.Add(NewUpload);
			}

			using (TablesContext db = new TablesContext())
			{
				IQueryable<Jadval_talimsifati_1_2> deleteRows = db.Jadvaltalimsifati_1_2.Where(x => x.Year == (short)this.year);
				foreach (var row in deleteRows)
				{
					db.Jadvaltalimsifati_1_2.Remove(row);
				}
				db.SaveChanges();

				foreach (var t in uploadExl)
					db.Jadvaltalimsifati_1_2.Add(t);
				db.SaveChanges();
				MonitoringUpdate.Update(0, "J1_2", 0, this.year);
			}
		}
	}
}