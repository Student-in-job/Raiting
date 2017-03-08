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
    public class Table31Controller : BaseInputDataController
    {
        protected List<nalichie_multimedia_v_auditorii> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 33;
            base.Initialize(requestContext);
            this.fileName = "31_nalichie_multimedia_v_auditorii.xlsx";
            this.listName = "nalichie_multimedia_v_auditorii";
            this.controllerName = "Table31";
            this.tableName = "J31";
            this.procedureName = "P4_4_stepen_osnashennosti_laboratoriy";
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<nalichie_multimedia_v_auditorii>();
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
                nalichie_multimedia_v_auditorii record = new nalichie_multimedia_v_auditorii();
                if (row[1] != DBNull.Value) record.vuz_name = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.rooms_total_count = Convert.ToInt32(row[2]);
                if (row[3] != DBNull.Value) record.rooms_with_multimedia = Convert.ToInt32(row[3]);
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<nalichie_multimedia_v_auditorii> rowsToDelete = this.db.nalichie_multimedia_v_auditorii.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.nalichie_multimedia_v_auditorii.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.nalichie_multimedia_v_auditorii.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table31/
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
            return View(this.db.nalichie_multimedia_v_auditorii.Where(model => model.id_university == id && model.year == this.year).ToList());
        }
	}
}