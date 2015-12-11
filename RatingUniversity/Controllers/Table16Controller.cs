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
            //this.startRow = 8;
            //this.endRow = 2;
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
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<informaciya_o_dissertaciyah> rowsToDelete = this.db.informaciya_o_dissertaciyah.Where(model => model.year == year && model.id_university == this.id);
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
            //MonitoringUpdate.Update(0, "J16", 0, yil);
        }
        //
        // GET: /Table3/
        public override ActionResult Index()
        {
            ViewBag.file = this.fileName;
            IQueryable<university> university = this.db.university.Where(model => model.id == this.id);
            ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
            return View(this.db.informaciya_o_dissertaciyah.Where(model => model.id_university == this.id).ToList());
        }
	}
}