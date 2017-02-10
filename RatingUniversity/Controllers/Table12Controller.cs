using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Classes;
using RatingUniversity.Models;
using System.Data;

namespace RatingUniversity.Controllers
{
    public class Table12Controller : BaseInputDataController
    {
        protected List<citiruemost_publikaciy_pps_vuza> records;
        protected TablesContext db = new TablesContext();

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 14;
            base.Initialize(requestContext);
            this.fileName = "12_citiruemost_publikaciy_pps_vuza.xlsx";
            this.listNames = new List<string>();
            this.listNames.Add("eng_lang");
            this.listNames.Add("rus_uzb_lang");
            this.controllerName = "Table12";
            this.tableName = "J12";
        }

        protected override void FormListOfData(DataTable table, string listName)
        {
            if (this.records == null)
                this.records = new List<citiruemost_publikaciy_pps_vuza>();
            bool flag = false;
            foreach (System.Data.DataRow row in table.Rows)
            {
                if ((row[0] != DBNull.Value) && (row[1] != DBNull.Value))
                {
                    if (!flag)
                    {
                        flag = Convert.ToString(row[0]) == "1" && Convert.ToString(row[1]) == "2";
                        continue;
                    }
                }
                else
                {
                    continue;
                }
                if (!flag) continue;
                citiruemost_publikaciy_pps_vuza record = new citiruemost_publikaciy_pps_vuza();
                if (row[1] != DBNull.Value) record.fio = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.source = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.info = Convert.ToString(row[3]);
                if (row[4] != DBNull.Value) record.link = Convert.ToString(row[4]);
                if (row[5] != DBNull.Value) record.usage = Convert.ToInt32(row[5]);
                record.lang = (listName == this.listNames[0]) ? (byte)1 : (byte)0;
                record.id_university = this.id;
                record.year = this.year;//DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<citiruemost_publikaciy_pps_vuza> rowsToDelete = this.db.citiruemost_publikaciy_pps_vuza.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.citiruemost_publikaciy_pps_vuza.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.citiruemost_publikaciy_pps_vuza.Add(newRecord);
            }
            this.db.SaveChanges();
            base.SaveData();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table12/
        public ActionResult Index(int? id)
        {
            if ((this.id == 0) && (id == null))
            {
                return RedirectToAction("ListIndex", "BaseInputData", new { controllerName = this.controllerName, active = this.active });
            }
            else if (id == null)
            {
                id = this.id;
            }
            ViewBag.id = id;
            ViewBag.Status = MonitoringUpdate.GetStatus(id, this.tableName, this.year);
            IQueryable<university> university = this.db.university.Where(model => model.id == id);
            ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
            return View(this.db.citiruemost_publikaciy_pps_vuza.Where(model => model.id_university == id && model.year == this.year).ToList());
        }

        [Authorize(Roles = "admin")]
        [HttpPost]
        public override ActionResult Approve(int id)
        {
            Procedures proc = new Procedures();
            int year = this.year;
            int result = proc.P3_1_citiruemost_publikaciy_pps_vuza(id, year);
            MonitoringUpdate.Update(id, this.tableName, 1, this.year);
            return base.Approve(id);
        }
	}
}