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
        protected URaitingEntities db = new URaitingEntities();

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            base.Initialize(requestContext);
            this.fileName = "3_chislennost_pps_vuza.xlsx";
            this.listName = "chislennost_pps_vuza";
        }

        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<chislennost_pps_vuza>();
            for (int i = 8; i < table.Rows.Count-2; i++)
            {
                chislennost_pps_vuza record = new chislennost_pps_vuza();
                if (table.Rows[i][0] != null) record.ass_shtat = Convert.ToInt32(table.Rows[i][0]);
                if (table.Rows[i][1] != null) record.urindosh = Convert.ToInt32(table.Rows[i][1]);
                if (table.Rows[i][2] != null) record.saotbay = Convert.ToInt32(table.Rows[i][2]);
                if (table.Rows[i][3] != null) record.as_fan_nom = Convert.ToInt32(table.Rows[i][3]);
                if (table.Rows[i][4] != null) record.as_fan_doc = Convert.ToInt32(table.Rows[i][4]);
                if (table.Rows[i][5] != null) record.as_prof = Convert.ToInt32(table.Rows[i][5]);
                if (table.Rows[i][6] != null) record.as_doz = Convert.ToInt32(table.Rows[i][6]);
                if (table.Rows[i][7] != null) record.as_katta = Convert.ToInt32(table.Rows[i][7]);
                if (table.Rows[i][8] != null) record.as_ass = Convert.ToInt32(table.Rows[i][8]);
                if (table.Rows[i][9] != null) record.ur_prof = Convert.ToInt32(table.Rows[i][9]);
                if (table.Rows[i][10] != null) record.ur_doc = Convert.ToInt32(table.Rows[i][10]);
                if (table.Rows[i][11] != null) record.ur_katta = Convert.ToInt32(table.Rows[i][11]);
                if (table.Rows[i][12] != null) record.ur_ass = Convert.ToInt32(table.Rows[i][12]);
                if (table.Rows[i][13] != null) record.so_prof = Convert.ToInt32(table.Rows[i][13]);
                if (table.Rows[i][14] != null) record.so_doc = Convert.ToInt32(table.Rows[i][14]);
                if (table.Rows[i][15] != null) record.so_katta = Convert.ToInt32(table.Rows[i][15]);
                if (table.Rows[i][16] != null) record.so_ass = Convert.ToInt32(table.Rows[i][16]);
                record.university_id = this.id;
                record.year = DateTime.Now.Year;

                this.records.Add(record);
                /*
                Jadval1 NewUpload = new Jadval1();
                NewUpload.OtmName = Convert.ToString(data.Rows[i][1]);
                NewUpload.State = Convert.ToString(data.Rows[i][2]);
                //if (data.Rows[i][3] != null) Int32.TryParse(data.Rows[i][3], NewUpload.Reyting);
                NewUpload.Reyting = Convert.ToInt32(data.Rows[i][3]);
                NewUpload.Year = Convert.ToInt16(DateTime.Now.Year.ToString());
                NewUpload.UniversityId = 24;
                uploadExl.Add(NewUpload);
                */
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<chislennost_pps_vuza> rowsToDelete = this.db.chislennost_pps_vuza.Where(model => model.year == year && model.university_id == this.id);
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
        public override ActionResult Index()
        {
            ViewBag.file = this.fileName;

            return View(this.db.chislennost_pps_vuza.Where(model=>model.university_id==this.id).ToList());
        }
	}
}