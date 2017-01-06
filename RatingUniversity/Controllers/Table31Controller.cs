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
            this.active = 32;
            base.Initialize(requestContext);
            this.fileName = "31_nalichie_multimedia_v_auditorii.xlsx";
            this.listName = "nalichie_multimedia_v_auditorii";
            //this.startRow = 8;
            //this.endRow = 2;
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
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<nalichie_multimedia_v_auditorii> rowsToDelete = this.db.nalichie_multimedia_v_auditorii.Where(model => model.year == year && model.id_university == this.id);
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
        }
        //
        // GET: /Table31/
        public ActionResult Index(int? id)
        {
            if (this.id == 0)
            {
                if (id == null)
                {
                    return RedirectToAction("ListIndex", "BaseInputData", new { controllerName = "Table31", active = this.active });
                }
            }
            else
            {
                id = this.id;
            }
            ViewBag.file = this.fileName;
            int year = DateTime.Now.Year;
            IQueryable<university> university = this.db.university.Where(model => model.id == id);
            ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
            return View(this.db.nalichie_multimedia_v_auditorii.Where(model => model.id_university == id && model.year == year).ToList());
        }
	}
}