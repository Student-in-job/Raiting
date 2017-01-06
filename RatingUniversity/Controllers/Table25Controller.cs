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
    public class Table25Controller : BaseInputDataController
    {
        protected List<granti_po_vidam_issledovaniy> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 27;
            base.Initialize(requestContext);
            this.fileName = "25_granti_po_vidam_issledovaniy.xlsx";
            this.listName = "granti_po_vidam_issledovaniy";
            //this.startRow = 8;
            //this.endRow = 2;
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<granti_po_vidam_issledovaniy>();
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
                granti_po_vidam_issledovaniy record = new granti_po_vidam_issledovaniy();
                if (row[1] != DBNull.Value) record.tormog_name = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.buyurtma_name = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.fundamental = Convert.ToBoolean(row[3]);
                if (row[4] != DBNull.Value) record.amaliy = Convert.ToBoolean(row[4]);
                if (row[5] != DBNull.Value) record.innovatsion = Convert.ToBoolean(row[5]);
                if (row[6] != DBNull.Value) record.lizenziya = Convert.ToBoolean(row[6]);
                if (row[7] != DBNull.Value) record.yarmarka = Convert.ToBoolean(row[7]);
                if (row[8] != DBNull.Value) record.summa = Convert.ToDouble(row[8]);
                record.id_university = this.id;
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<granti_po_vidam_issledovaniy> rowsToDelete = this.db.granti_po_vidam_issledovaniy.Where(model => model.year == year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.granti_po_vidam_issledovaniy.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.granti_po_vidam_issledovaniy.Add(newRecord);
            }
            this.db.SaveChanges();
        }
        //
        // GET: /Table25/
        public ActionResult Index(int? id)
        {
            if (this.id == 0)
            {
                if (id == null)
                {
                    return RedirectToAction("ListIndex", "BaseInputData", new { controllerName = "Table25", active = this.active });
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
            return View(this.db.granti_po_vidam_issledovaniy.Where(model => model.id_university == id && model.year == year).ToList());
        }
	}
}