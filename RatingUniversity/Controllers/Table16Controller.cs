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
    public class Table16Controller : BaseInputDataController
    {
        protected List<informaciya_o_dissertaciyah> records;
        protected TablesContext db = new TablesContext();

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 18;
            base.Initialize(requestContext);
            this.fileName = "16_informaciya_o_dissertaciyah.xlsx";
            this.listName = "informaciya_o_dissertaciyah";
            this.controllerName = "Table16";
            this.tableName = "J16";
            this.procedureName = "P3_3_kolichestvo_sotrudnikov_vuza";
        }

        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<informaciya_o_dissertaciyah>();
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
                informaciya_o_dissertaciyah record = new informaciya_o_dissertaciyah();
                if (row[1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(row[1]), "UZ", "LT");
                if (row[2] != DBNull.Value) record.work_place = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.iht_shifr = Functions.Translate(Convert.ToString(row[3]), "UZ", "LT");
                if (row[4] != DBNull.Value) record.iht_nomi = Convert.ToString(row[4]);
                if (row[5] != DBNull.Value) record.disser_name = Convert.ToString(row[5]);
                if (row[6] != DBNull.Value) record.kengash_shifr = Convert.ToString(row[6]);
                if (row[7] != DBNull.Value) record.kengash_email = Convert.ToString(row[7]);
                if (row[8] != DBNull.Value) record.date = Convert.ToString(row[8]);
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<informaciya_o_dissertaciyah> rowsToDelete = this.db.informaciya_o_dissertaciyah.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.informaciya_o_dissertaciyah.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.informaciya_o_dissertaciyah.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table16/
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
            return View(this.db.informaciya_o_dissertaciyah.Where(model => model.id_university == id && model.year == this.year).ToList());
        }
	}
}