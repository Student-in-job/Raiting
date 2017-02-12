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
            this.controllerName = "Table25";
            this.tableName = "J25";
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
                if (row[3] != DBNull.Value) record.fundamental = Convert.ToDouble(row[3]);
                else record.fundamental = 0;
                if (row[4] != DBNull.Value) record.amaliy = Convert.ToDouble(row[4]);
                else record.amaliy = 0;
                if (row[5] != DBNull.Value) record.innovatsion = Convert.ToDouble(row[5]);
                else record.innovatsion = 0;
                if (row[6] != DBNull.Value) record.lizenziya = Convert.ToDouble(row[6]);
                else record.lizenziya = 0;
                if (row[7] != DBNull.Value) record.yarmarka = Convert.ToDouble(row[7]);
                else record.yarmarka = 0;
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<granti_po_vidam_issledovaniy> rowsToDelete = this.db.granti_po_vidam_issledovaniy.Where(model => model.year == this.year && model.id_university == this.id);
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
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table25/
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
            return View(this.db.granti_po_vidam_issledovaniy.Where(model => model.id_university == id && model.year == this.year).ToList());
        }

        [Authorize(Roles = "admin")]
        [HttpPost]
        public override ActionResult Approve(int id)
        {
            Procedures proc = new Procedures();
            int year = this.year;
            int result = proc.P3_5_effektivnost_provodimih_nir(id, year);
            MonitoringUpdate.Update(id, this.tableName, 1, this.year);
            return base.Approve(id);
        }
	}
}