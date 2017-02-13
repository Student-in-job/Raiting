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
    public class Table14Controller : BaseInputDataController
    {
        protected List<kolichestvo_izdannih_mestnih_statey> records;
        protected TablesContext db = new TablesContext();

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 16;
            base.Initialize(requestContext);
            this.fileName = "14_kolichestvo_izdannih_mestnih_statey.xlsx";
            this.listName = "kolichestvo_mestnih_statey";
            this.controllerName = "Table14";
            this.tableName = "J14";
        }

        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<kolichestvo_izdannih_mestnih_statey>();
           
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
                kolichestvo_izdannih_mestnih_statey record = new kolichestvo_izdannih_mestnih_statey();
                if (row[1] != DBNull.Value) record.fio = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.journal = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.paper = Convert.ToString(row[3]);
                if (row[4] != DBNull.Value) record.paper_year = Convert.ToString(row[4]);
                if (row[5] != DBNull.Value) record.link = Convert.ToString(row[5]);
                if (row[6] != DBNull.Value) record.coauthor_count = Convert.ToSingle(row[6]);
                if (row[7] != DBNull.Value) record.filename= Convert.ToString(row[7]);
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<kolichestvo_izdannih_mestnih_statey> rowsToDelete = this.db.kolichestvo_izdannih_mestnih_statey.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.kolichestvo_izdannih_mestnih_statey.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.kolichestvo_izdannih_mestnih_statey.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table14/
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
            return View(this.db.kolichestvo_izdannih_mestnih_statey.Where(model => model.id_university == id && model.year == this.year).ToList());
        }

        [Authorize(Roles = "admin")]
        [HttpPost]
        public override ActionResult Approve(int id)
        {
            Procedures proc = new Procedures();
            int year = this.year;
            int result = proc.P3_2_kolichestvo_izdannih_statey(id, year);
            MonitoringUpdate.Update(id, this.tableName, 1, this.year);
            return base.Approve(id);
        }
	}
}