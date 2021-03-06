﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Classes;
using RatingUniversity.Models;
using System.Data;

namespace RatingUniversity.Controllers
{
    public class Table29Controller : BaseInputDataController
    {
        protected List<nalichie_informacii_o_vuze_v_internete> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 31;
            base.Initialize(requestContext);
            this.fileName = "29_nalichie_informacii_o_vuze_v_internete.xlsx";
            this.listName = "info_o_vuze_v_internete";
            this.controllerName = "Table29";
            this.tableName = "J29";
            this.procedureName = "P4_3_dostupnost_info_o_vuze_v_internete";
        }

        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<nalichie_informacii_o_vuze_v_internete>();
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
                nalichie_informacii_o_vuze_v_internete record = new nalichie_informacii_o_vuze_v_internete();
                if (row[1] != DBNull.Value) record.vuz_name = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.vuz_web = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.vuz_int_rate = Convert.ToInt32(row[3]);
                if (row[4] != DBNull.Value) record.vuz_uz_rate = Convert.ToInt32(row[4]);
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<nalichie_informacii_o_vuze_v_internete> rowsToDelete = this.db.nalichie_informacii_o_vuze_v_internete.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.nalichie_informacii_o_vuze_v_internete.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.nalichie_informacii_o_vuze_v_internete.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table29/
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
            return View(this.db.nalichie_informacii_o_vuze_v_internete.Where(model => model.id_university == id && model.year == this.year).ToList());
        }
	}
}