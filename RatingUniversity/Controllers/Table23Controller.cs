using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Classes;
using RatingUniversity.Models;
using System.Data;
using System.Data.Entity;

namespace RatingUniversity.Controllers
{
    public class Table23Controller : BaseInputDataController
    {
        protected List<summi_mejdunarodnih_grantov> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 25;
            base.Initialize(requestContext);
            this.fileName = "23_summi_mejdunarodnih_grantov.xlsx";
            this.listName = "summi_mejdunarodnih_grantov";
            this.controllerName = "Table23";
            this.tableName = "J23";
            this.procedureName = "P3_4_summa_finansovih_sredstv_na_issledovaniya";
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<summi_mejdunarodnih_grantov>();
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
                summi_mejdunarodnih_grantov record = new summi_mejdunarodnih_grantov();
                if (row[1] != DBNull.Value) record.grant_name = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.grant_summa = Convert.ToDouble(row[2]);
                else record.grant_summa = 0;
                if (row[3] != DBNull.Value) record.buyurtma_name = Convert.ToString(row[3]);
                if (row[4] != DBNull.Value) record.buyurtma_summa = Convert.ToDouble(row[4]);
                else record.buyurtma_summa = 0;
                if (row[5] != DBNull.Value) record.filename = "#" + Convert.ToString(row[5]);
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<summi_mejdunarodnih_grantov> rowsToDelete = this.db.summi_mejdunarodnih_grantov.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.summi_mejdunarodnih_grantov.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.summi_mejdunarodnih_grantov.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }

        //
        // GET: /Table23/
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
            return View(this.db.summi_mejdunarodnih_grantov.Where(model => model.id_university == id && model.year == this.year).ToList());
        }

        protected override void UpdateFileName(string fileName, int recordId)
        {
            TablesContext db = new TablesContext();
            summi_mejdunarodnih_grantov record = db.summi_mejdunarodnih_grantov.Find(recordId);
            record.filename = fileName;
            db.Entry(record).State = EntityState.Modified;
            db.SaveChanges();
        }
	}
}