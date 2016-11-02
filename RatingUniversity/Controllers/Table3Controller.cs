using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using RatingUniversity.Models;

namespace RatingUniversity.Controllers
{
    public class Table3Controller : BaseInputDataController
    {
        protected List<chislennost_pps_vuza> records;
        protected TablesContext db = new TablesContext();

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 6;
            base.Initialize(requestContext);
            this.fileName = "3_chislennost_pps_vuza.xlsx";
            this.listName = "chislennost_pps_vuza";
            //this.startRow = 8;
            //this.endRow = 2;
        }

        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<chislennost_pps_vuza>();
            /*
            for (int i = this.startRow; i < table.Rows.Count-this.endRow; i++)
            {
                chislennost_pps_vuza record = new chislennost_pps_vuza();
                if (table.Rows[i][0] != DBNull.Value) record.ass_shtat = Convert.ToInt32(table.Rows[i][0]);
                if (table.Rows[i][1] != DBNull.Value) record.urindosh = Convert.ToInt32(table.Rows[i][1]);
                if (table.Rows[i][2] != DBNull.Value) record.saotbay = Convert.ToInt32(table.Rows[i][2]);
                if (table.Rows[i][3] != DBNull.Value) record.as_fan_nom = Convert.ToInt32(table.Rows[i][3]);
                if (table.Rows[i][4] != DBNull.Value) record.as_fan_doc = Convert.ToInt32(table.Rows[i][4]);
                if (table.Rows[i][5] != DBNull.Value) record.as_prof = Convert.ToInt32(table.Rows[i][5]);
                if (table.Rows[i][6] != DBNull.Value) record.as_doz = Convert.ToInt32(table.Rows[i][6]);
                if (table.Rows[i][7] != DBNull.Value) record.as_katta = Convert.ToInt32(table.Rows[i][7]);
                if (table.Rows[i][8] != DBNull.Value) record.as_ass = Convert.ToInt32(table.Rows[i][8]);
                if (table.Rows[i][9] != DBNull.Value) record.ur_prof = Convert.ToInt32(table.Rows[i][9]);
                if (table.Rows[i][10] != DBNull.Value) record.ur_doc = Convert.ToInt32(table.Rows[i][10]);
                if (table.Rows[i][11] != DBNull.Value) record.ur_katta = Convert.ToInt32(table.Rows[i][11]);
                if (table.Rows[i][12] != DBNull.Value) record.ur_ass = Convert.ToInt32(table.Rows[i][12]);
                if (table.Rows[i][13] != DBNull.Value) record.so_prof = Convert.ToInt32(table.Rows[i][13]);
                if (table.Rows[i][14] != DBNull.Value) record.so_doc = Convert.ToInt32(table.Rows[i][14]);
                if (table.Rows[i][15] != DBNull.Value) record.so_katta = Convert.ToInt32(table.Rows[i][15]);
                if (table.Rows[i][16] != DBNull.Value) record.so_ass = Convert.ToInt32(table.Rows[i][16]);
                record.university_id = this.id;
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
            */
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
                chislennost_pps_vuza record = new chislennost_pps_vuza();
                if (row[0] != DBNull.Value) record.ass_shtat = Convert.ToInt32(row[0]);
                if (row[1] != DBNull.Value) record.urindosh = Convert.ToInt32(row[1]);
                if (row[2] != DBNull.Value) record.saotbay = Convert.ToInt32(row[2]);
                if (row[3] != DBNull.Value) record.as_fan_nom = Convert.ToInt32(row[3]);
                if (row[4] != DBNull.Value) record.as_fan_doc = Convert.ToInt32(row[4]);
                if (row[5] != DBNull.Value) record.as_prof = Convert.ToInt32(row[5]);
                if (row[6] != DBNull.Value) record.as_doz = Convert.ToInt32(row[6]);
                if (row[7] != DBNull.Value) record.as_katta = Convert.ToInt32(row[7]);
                if (row[8] != DBNull.Value) record.as_ass = Convert.ToInt32(row[8]);
                if (row[9] != DBNull.Value) record.ur_prof = Convert.ToInt32(row[9]);
                if (row[10] != DBNull.Value) record.ur_doc = Convert.ToInt32(row[10]);
                if (row[11] != DBNull.Value) record.ur_katta = Convert.ToInt32(row[11]);
                if (row[12] != DBNull.Value) record.ur_ass = Convert.ToInt32(row[12]);
                if (row[13] != DBNull.Value) record.so_prof = Convert.ToInt32(row[13]);
                if (row[14] != DBNull.Value) record.so_doc = Convert.ToInt32(row[14]);
                if (row[15] != DBNull.Value) record.so_katta = Convert.ToInt32(row[15]);
                if (row[16] != DBNull.Value) record.so_ass = Convert.ToInt32(row[16]);
                record.id_university = this.id;
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<chislennost_pps_vuza> rowsToDelete = this.db.chislennost_pps_vuza.Where(model => model.year == year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.chislennost_pps_vuza.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.chislennost_pps_vuza.Add(newRecord);
            }
            this.db.SaveChanges();
            //MonitoringUpdate.Update(0, "J1", 0, yil);
        }
        //
        // GET: /Table3/
        public ActionResult Index(int? id)
        {
            if (this.id == 0)
            {
                if (id == null)
                {
                    return RedirectToAction("ListIndex", "BaseInputData", new { controllerName = "Table3", active = this.active });
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
            return View(this.db.chislennost_pps_vuza.Where(model=>model.id_university==id && model.year == year).ToList());
        }
	}
}