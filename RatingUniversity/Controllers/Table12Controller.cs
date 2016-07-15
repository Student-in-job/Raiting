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
    public class Table12Controller : BaseInputDataController
    {
        protected List<citiruemost_publikaciy_pps_vuza> records;
        protected TablesContext db = new TablesContext();

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 14;
            base.Initialize(requestContext);
            this.fileName = "12_citiruemost_publikaciy_pps_vuza.xlsx";
            this.listName = "citiruemost_publikaciy_pps_vuza";
            //this.startRow = 8;
            //this.endRow = 2;
        }

        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<citiruemost_publikaciy_pps_vuza>();
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
                citiruemost_publikaciy_pps_vuza record = new citiruemost_publikaciy_pps_vuza();
                if (row[1] != DBNull.Value) record.fio = Convert.ToString(row[1]);
                if (row[2] != DBNull.Value) record.source = Convert.ToString(row[2]);
                if (row[3] != DBNull.Value) record.info = Convert.ToString(row[3]);
                if (row[4] != DBNull.Value) record.link = Convert.ToString(row[4]);
                if (row[5] != DBNull.Value) record.usage = Convert.ToInt32(row[5]);
                record.university_id = this.id;
                record.year = DateTime.Now.Year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<citiruemost_publikaciy_pps_vuza> rowsToDelete = this.db.citiruemost_publikaciy_pps_vuza.Where(model => model.year == year && model.university_id == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.citiruemost_publikaciy_pps_vuza.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.citiruemost_publikaciy_pps_vuza.Add(newRecord);
            }
            this.db.SaveChanges();
            //MonitoringUpdate.Update(0, "J12", 0, yil);
        }
        //
        // GET: /Table3/
        public override ActionResult Index()
        {
            ViewBag.file = this.fileName;
            IQueryable<university> university = this.db.university.Where(model => model.id == this.id);
            ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
            return View(this.db.citiruemost_publikaciy_pps_vuza.Where(model=>model.university_id==this.id).ToList());
        }
	}
}