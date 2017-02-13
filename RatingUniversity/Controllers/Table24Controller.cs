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
    public class Table24Controller : BaseInputDataController
    {
        protected List<summi_respublikanskih_grantov> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 26;
            base.Initialize(requestContext);
            this.fileName = "24_summi_respublikanskih_grantov.xlsx";
            this.listName = "summi_uzb_grantov";
            this.controllerName = "Table24";
            this.tableName = "J24";
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<summi_respublikanskih_grantov>();
            bool flag = false;
            foreach (System.Data.DataRow row in table.Rows)
            {
                if ((row[0] != DBNull.Value) && (row[1] != DBNull.Value) && (row[2] != DBNull.Value) && (row[3] != DBNull.Value))
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
                summi_respublikanskih_grantov record = new summi_respublikanskih_grantov();
                if (row[1] != DBNull.Value) record.iqtisodiyot_tarmogi = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.buyurtma_name = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.buyurtma_summa = Convert.ToDouble(row[3]);
                else record.buyurtma_summa = 0;
                if (row[4] != DBNull.Value) record.grant_name = Convert.ToString(row[4]);
                if (row[5] != DBNull.Value) record.grant_summa = Convert.ToDouble(row[5]);
                else record.grant_summa = 0;
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<summi_respublikanskih_grantov> rowsToDelete = this.db.summi_respublikanskih_grantov.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.summi_respublikanskih_grantov.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.summi_respublikanskih_grantov.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        } 
        //
        // GET: /Table24/
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
            return View(this.db.summi_respublikanskih_grantov.Where(model => model.id_university == id && model.year == this.year).ToList());
        }

        [Authorize(Roles = "admin")]
        [HttpPost]
        public override ActionResult Approve(int id)
        {
            Procedures proc = new Procedures();
            int year = this.year;
            int result = proc.P3_4_summa_finansovih_sredstv_na_issledovaniya(id, year);
            MonitoringUpdate.Update(id, this.tableName, 1, this.year);
            return base.Approve(id);
        }
	}
}