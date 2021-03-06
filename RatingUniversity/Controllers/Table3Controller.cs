﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using RatingUniversity.Models;
using RatingUniversity.Classes;

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
            this.tableName = "J3";
            this.controllerName = "Table3";
            this.procedureName = "P3_3_kolichestvo_sotrudnikov_vuza";
        }

        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<chislennost_pps_vuza>();
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
                int as_shtat = 0;
                int ur_shtat = 0;
                int so_shtat = 0;
                if (row[3] != DBNull.Value) record.as_fan_nom = Convert.ToInt32(row[3]);
                else record.as_fan_nom = 0;
                as_shtat += (int)record.as_fan_nom;
                if (row[4] != DBNull.Value) record.as_fan_doc = Convert.ToInt32(row[4]);
                else record.as_fan_doc = 0;
                as_shtat += (int)record.as_fan_doc;
                if (row[5] != DBNull.Value) record.as_prof = Convert.ToInt32(row[5]);
                else record.as_prof = 0;
                as_shtat += (int)record.as_prof;
                if (row[6] != DBNull.Value) record.as_doz = Convert.ToInt32(row[6]);
                else record.as_doz = 0;
                as_shtat += (int)record.as_doz;
                if (row[7] != DBNull.Value) record.as_katta = Convert.ToInt32(row[7]);
                else record.as_katta = 0;
                as_shtat += (int)record.as_katta;
                if (row[8] != DBNull.Value) record.as_ass = Convert.ToInt32(row[8]);
                else record.as_ass = 0;
                as_shtat += (int)record.as_ass;
                if (row[9] != DBNull.Value) record.ur_prof = Convert.ToInt32(row[9]);
                else record.ur_prof = 0;
                ur_shtat += (int)record.ur_prof;
                if (row[10] != DBNull.Value) record.ur_doc = Convert.ToInt32(row[10]);
                else record.ur_doc = 0;
                ur_shtat += (int)record.ur_doc;
                if (row[11] != DBNull.Value) record.ur_katta = Convert.ToInt32(row[11]);
                else record.ur_katta = 0;
                ur_shtat += (int)record.ur_katta;
                if (row[12] != DBNull.Value) record.ur_ass = Convert.ToInt32(row[12]);
                else record.ur_ass = 0;
                ur_shtat += (int)record.ur_ass;
                if (row[13] != DBNull.Value) record.so_prof = Convert.ToInt32(row[13]);
                else record.so_prof = 0;
                so_shtat += (int)record.so_prof;
                if (row[14] != DBNull.Value) record.so_doc = Convert.ToInt32(row[14]);
                else record.so_doc = 0;
                so_shtat += (int)record.so_doc;
                if (row[15] != DBNull.Value) record.so_katta = Convert.ToInt32(row[15]);
                else record.so_katta = 0;
                so_shtat += (int)record.so_katta;
                if (row[16] != DBNull.Value) record.so_ass = Convert.ToInt32(row[16]);
                else record.so_ass = 0;
                so_shtat += (int)record.so_ass;

                record.ass_shtat = as_shtat;
                record.urindosh = ur_shtat;
                record.saotbay = so_shtat;
                record.id_university = this.id;
                record.year = this.year;//DateTime.Now.Year;

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
            base.SaveData();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table3/
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
            ViewBag.file = this.fileName;
            ViewBag.id = id;
            ViewBag.Status = MonitoringUpdate.GetStatus(id, this.tableName, this.year);
            IQueryable<university> university = this.db.university.Where(model => model.id == id);
            ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
            return View(this.db.chislennost_pps_vuza.Where(model=>model.id_university==id && model.year == this.year).ToList());
        }
	}
}