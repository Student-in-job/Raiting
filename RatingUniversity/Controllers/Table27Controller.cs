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
    public class Table27Controller : BaseInputDataController
    {
        protected List<nalichie_elektronnoy_literaturi> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 29;
            base.Initialize(requestContext);
            this.fileName = "27_nalichie_elektronnoy_literaturi.xlsx";
            this.listName = "nalichie_elektronnoy_literaturi";
            //this.startRow = 8;
            //this.endRow = 2;
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<nalichie_elektronnoy_literaturi>();
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
                nalichie_elektronnoy_literaturi record = new nalichie_elektronnoy_literaturi();
                if (row[1] != DBNull.Value) record.napravlenie = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.nazvaniya_predmetov = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.osn_literatura = Convert.ToString(row[3]);
                if (row[4] != DBNull.Value) record.nalichie_uzb = Convert.ToBoolean(row[4]);
                if (row[5] != DBNull.Value) record.nalichie_rus = Convert.ToBoolean(row[5]);
                if (row[6] != DBNull.Value) record.nalichie_angl = Convert.ToBoolean(row[6]);
                record.id_university = this.id;
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<nalichie_elektronnoy_literaturi> rowsToDelete = this.db.nalichie_elektronnoy_literaturi.Where(model => model.year == year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.nalichie_elektronnoy_literaturi.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.nalichie_elektronnoy_literaturi.Add(newRecord);
            }
            this.db.SaveChanges();
        }
        //
        // GET: /Table27/
        public ActionResult Index(int? id)
        {
            if (this.id == 0)
            {
                if (id == null)
                {
                    return RedirectToAction("ListIndex", "BaseInputData", new { controllerName = "Table27", active = this.active });
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
            return View(this.db.nalichie_elektronnoy_literaturi.Where(model => model.id_university == id && model.year == year).ToList());
        }
	}
}