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
    public class Table28Controller : BaseInputDataController
    {
        protected List<stepen_vnedreniya_ikt> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 30;
            base.Initialize(requestContext);
            this.fileName = "28_stepen_vnedreniya_ikt_v_uchebniy_process.xlsx";
            this.listName = "stepen_vnedreniya_ikt";
            this.controllerName = "Table28";
            this.tableName = "J28";
        }
        protected override void FormListOfData(DataTable table)
        {
            this.records = new List<stepen_vnedreniya_ikt>();
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
                stepen_vnedreniya_ikt record = new stepen_vnedreniya_ikt();
                if (row[1] != DBNull.Value) record.pc_count = Convert.ToInt32(row[1]);
                if (row[2] != DBNull.Value) record.pc_in_local_netw_count = Convert.ToInt32(row[2]);
                if (row[3] != DBNull.Value) record.pc_with_intenet_count = Convert.ToInt32(row[3]);
                if (row[4] != DBNull.Value) record.last_years_pc_count= Convert.ToInt32(row[4]);
                if (row[5] != DBNull.Value) record.internet_speed= Convert.ToDouble(row[5]);
                if (row[6] != DBNull.Value) record.admin_emails_count = Convert.ToInt32(row[6]);
                if (row[7] != DBNull.Value) record.pps_emails_count = Convert.ToInt32(row[7]);
                if (row[8] != DBNull.Value) record.web_service_types = Convert.ToDouble(row[8]);
                if (row[9] != DBNull.Value) record.study_monitoring = Convert.ToDouble(row[9]);
                if (row[10] != DBNull.Value) record.research_monitoring = Convert.ToDouble(row[10]);
                if (row[11] != DBNull.Value) record.pps_baza = Convert.ToDouble(row[11]);
                if (row[12] != DBNull.Value) record.student_baza = Convert.ToDouble(row[12]);
                if (row[13] != DBNull.Value) record.finance = Convert.ToDouble(row[13]);
                if (row[14] != DBNull.Value) record.admins_count = Convert.ToInt32(row[14]);
                if (row[15] != DBNull.Value) record.pps_count = Convert.ToInt32(row[15]);
                if (row[16] != DBNull.Value) record.students_count = Convert.ToInt32(row[16]);
                record.id_university = this.id;
                record.year = this.year;

                this.records.Add(record);
            }
        }

        protected override void DeleteData()
        {
            IQueryable<stepen_vnedreniya_ikt> rowsToDelete = this.db.stepen_vnedreniya_ikt.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete)
            {
                this.db.stepen_vnedreniya_ikt.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records)
            {
                this.db.stepen_vnedreniya_ikt.Add(newRecord);
            }
            this.db.SaveChanges();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table28/
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
            return View(this.db.stepen_vnedreniya_ikt.Where(model => model.id_university == id && model.year == this.year).ToList());
        }

        [Authorize(Roles = "admin")]
        [HttpPost]
        public override ActionResult Approve(int id)
        {
            Procedures proc = new Procedures();
            int year = this.year;
            int result = proc.P4_2_stepen_vnedreniya_ikt(id, year);
            MonitoringUpdate.Update(id, this.tableName, 1, this.year);
            return base.Approve(id);
        }
	}
}