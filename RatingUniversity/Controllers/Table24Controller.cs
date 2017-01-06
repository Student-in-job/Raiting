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
            //this.startRow = 8;
            //this.endRow = 2;
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<summi_respublikanskih_grantov>();
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
                summi_respublikanskih_grantov record = new summi_respublikanskih_grantov();
                if (row[1] != DBNull.Value) record.iqtisodiyot_tarmogi = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.buyurtma_name = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.buyurtma_summa = Convert.ToDouble(row[3]);
                if (row[4] != DBNull.Value) record.grant_name = Convert.ToString(row[4]);
                if (row[5] != DBNull.Value) record.grant_summa = Convert.ToDouble(row[5]);
                //if (row[6] != DBNull.Value) record.grant_summa = Convert.ToDouble(row[6]);
                record.id_university = this.id;
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<summi_respublikanskih_grantov> rowsToDelete = this.db.summi_respublikanskih_grantov.Where(model => model.year == year && model.id_university == this.id);
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
        } 
        //
        // GET: /Table24/
        public ActionResult Index(int? id)
        {
            if (this.id == 0)
            {
                if (id == null)
                {
                    return RedirectToAction("ListIndex", "BaseInputData", new { controllerName = "Table24", active = this.active });
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
            return View(this.db.summi_respublikanskih_grantov.Where(model => model.id_university == id && model.year == year).ToList());
        }
	}
}