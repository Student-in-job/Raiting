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
    public class Table30Controller : BaseInputDataController
    {
        protected List<osnashennost_laboratornim_oborudovaniem> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 32;
            base.Initialize(requestContext);
            this.fileName = "30_osnashennost_laboratornim_oborudovaniem.xlsx";
            this.listName = "osnashennost_laboratornim_obor";
            //this.startRow = 8;
            //this.endRow = 2;
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<osnashennost_laboratornim_oborudovaniem>();
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
                osnashennost_laboratornim_oborudovaniem record = new osnashennost_laboratornim_oborudovaniem();
                if (row[1] != DBNull.Value) record.napravlenie = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.nazvaniya_predmetov_s_lab = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.kolichestvo_lab_zanyatiy = Convert.ToInt32(row[3]);
                if (row[4] != DBNull.Value) record.kolichestvo_polnostyu_osnashennih_lab = Convert.ToInt32(row[4]);
                record.id_university = this.id;
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<osnashennost_laboratornim_oborudovaniem> rowsToDelete = this.db.osnashennost_laboratornim_oborudovaniem.Where(model => model.year == year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.osnashennost_laboratornim_oborudovaniem.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.osnashennost_laboratornim_oborudovaniem.Add(newRecord);
            }
            this.db.SaveChanges();
        }
        //
        // GET: /Table30/
        public ActionResult Index(int? id)
        {
            if (this.id == 0)
            {
                if (id == null)
                {
                    return RedirectToAction("ListIndex", "BaseInputData", new { controllerName = "Table30", active = this.active });
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
            return View(this.db.osnashennost_laboratornim_oborudovaniem.Where(model => model.id_university == id && model.year == year).ToList());
        }
	}
}