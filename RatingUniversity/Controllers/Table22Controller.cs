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
    public class Table22Controller : BaseInputDataController
    {
        protected List<osnashennost_laboratoriy> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 24;
            base.Initialize(requestContext);
            this.fileName = "22_osnashennost_laboratoriy.xlsx";
            this.listName = "osnashennost_laboratoriy";
            this.controllerName = "Table22";
            this.tableName = "J22";
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<osnashennost_laboratoriy>();
            bool flag = false;
            foreach (System.Data.DataRow row in table.Rows)
            {
                if ((row[0] != DBNull.Value) && ((row[1] != DBNull.Value) || (row[2] != DBNull.Value) || (row[3] != DBNull.Value)))
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
                osnashennost_laboratoriy record = new osnashennost_laboratoriy();
                if (row[1] != DBNull.Value) record.fan_name = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.lab_asbob_name = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.lab_holat = Convert.ToString(row[3]);
                if (row[4] != DBNull.Value) record.yordam_asbob_name = Convert.ToString(row[4]);
                if (row[5] != DBNull.Value) record.yordam_holat = Convert.ToString(row[5]);
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<osnashennost_laboratoriy> rowsToDelete = this.db.osnashennost_laboratoriy.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.osnashennost_laboratoriy.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.osnashennost_laboratoriy.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }

        //
        // GET: /Table22/
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
            return View(this.db.osnashennost_laboratoriy.Where(model => model.id_university == id && model.year == this.year).ToList());
        }

        [Authorize(Roles = "admin")]
        [HttpPost]
        public override ActionResult Approve(int id)
        {
            Procedures proc = new Procedures();
            int year = this.year;
            //int result = proc.P3_5_effektivnost_provodimih_nir(id, year);
            MonitoringUpdate.Update(id, this.tableName, 1, this.year);
            return base.Approve(id);
        }
	}
}