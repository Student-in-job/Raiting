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
    public class Table26Controller : BaseInputDataController
    {
        protected List<osnashennost_irc_literaturoy> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 28;
            base.Initialize(requestContext);
            this.fileName = "26_osnashennost_irc_literaturoy.xlsx";
            this.listName = "osnashennost_irc_literaturoy";
            this.controllerName = "Table26";
            this.tableName = "J26";
            this.procedureName = "P4_1_osnashennost_irc_literaturoy";
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<osnashennost_irc_literaturoy>();
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
                osnashennost_irc_literaturoy record = new osnashennost_irc_literaturoy();
                record.nalichie_uzb = false;
                record.nalichie_rus = false;
                record.nalichie_angl = false;
                if (row[1] != DBNull.Value) record.napravlenie = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.nazvaniya_predmetov = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.osn_literatura = Convert.ToString(row[3]);
                if (row[4] != DBNull.Value) record.nalichie_uzb = (Convert.ToString(row[4]).TrimEnd(' ').TrimStart(' ') == "+");
                if (row[5] != DBNull.Value) record.nalichie_rus = (Convert.ToString(row[5]).TrimEnd(' ').TrimStart(' ') == "+");
                if (row[6] != DBNull.Value) record.nalichie_angl = (Convert.ToString(row[6]).TrimEnd(' ').TrimStart(' ') == "+");
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<osnashennost_irc_literaturoy> rowsToDelete = this.db.osnashennost_irc_literaturoy.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.osnashennost_irc_literaturoy.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.osnashennost_irc_literaturoy.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table26/
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
            return View(this.db.osnashennost_irc_literaturoy.Where(model => model.id_university == id && model.year == this.year).ToList());
        }
	}
}