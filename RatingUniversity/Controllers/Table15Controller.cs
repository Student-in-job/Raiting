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
    public class Table15Controller : BaseInputDataController
    {
        protected List<effektivnost_nir_sertifikat> records0;
        protected List<effektivnost_nir_patent> records1;
        protected List<effektivnost_nir_dalolatnoma> records2;
        protected TablesContext db = new TablesContext();

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 17;
            base.Initialize(requestContext);
            this.fileName = "15_effektivnost_nir.xlsx";
            this.listNames = new List<string>();
            this.listNames.Add("sertifikat");
            this.listNames.Add("patent");
            this.listNames.Add("dalolatnoma");
            //this.startRow = 8;
            //this.endRow = 2;
        }

        protected override void FormListOfData(System.Data.DataTable table, string listName)
        {
            if (listName == this.listNames[0])
            {
                this.records0 = new List<effektivnost_nir_sertifikat>();

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
                    effektivnost_nir_sertifikat record = new effektivnost_nir_sertifikat();
                    if (row[1] != DBNull.Value) record.otm_name = Functions.Translate(Convert.ToString(row[1]), "UZ", "LT");
                    if (row[2] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(row[2]), "UZ", "LT");
                    if (row[3] != DBNull.Value) record.sertifikat_name = Convert.ToString(row[3]);
                    if (row[4] != DBNull.Value) record.sertifikat_date = Convert.ToString(row[4]);
                    if (row[5] != DBNull.Value) record.sertifikat_number = Convert.ToString(row[5]);
                    if (row[6] != DBNull.Value) record.filename = Convert.ToString(row[6]);
                    record.university_id = this.id;
                    record.year = DateTime.Now.Year;

                    this.records0.Add(record);
                }
            }
            else if (listName == this.listNames[1])
            {
                this.records1 = new List<effektivnost_nir_patent>();
                
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
                    effektivnost_nir_patent record = new effektivnost_nir_patent();
                    if (row[1] != DBNull.Value) record.otm_name = Functions.Translate(Convert.ToString(row[1]), "UZ", "LT");
                    if (row[2] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(row[2]), "UZ", "LT");
                    if (row[3] != DBNull.Value) record.sertifikat_name = Convert.ToString(row[3]);
                    if (row[4] != DBNull.Value) record.sertifikat_date = Convert.ToString(row[4]);
                    if (row[5] != DBNull.Value) record.sertifikat_number = Convert.ToString(row[5]);
                    if (row[6] != DBNull.Value) record.filename = Convert.ToString(row[6]); 
                    record.university_id = this.id;
                    record.year = DateTime.Now.Year;

                    this.records1.Add(record);
                }
            }
            else if (listName == this.listNames[2])
            {
                this.records2 = new List<effektivnost_nir_dalolatnoma>();

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
                    effektivnost_nir_dalolatnoma record = new effektivnost_nir_dalolatnoma();
                    if (row[1] != DBNull.Value) record.otm_name = Functions.Translate(Convert.ToString(row[1]), "UZ", "LT");
                    if (row[2] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(row[2]), "UZ", "LT");
                    if (row[3] != DBNull.Value) record.sertifikat_name = Convert.ToString(row[3]);
                    if (row[4] != DBNull.Value) record.sertifikat_date = Convert.ToString(row[4]);
                    if (row[5] != DBNull.Value) record.sertifikat_number = Convert.ToString(row[5]);
                    if (row[6] != DBNull.Value) record.filename = Convert.ToString(row[6]); 
                    record.university_id = this.id;
                    record.year = DateTime.Now.Year;

                    this.records2.Add(record);
                }
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<effektivnost_nir_sertifikat> rowsToDelete0 = this.db.effektivnost_nir_sertifikat.Where(model => model.year == year && model.university_id == this.id);
            foreach (var row in rowsToDelete0)
            {
                this.db.effektivnost_nir_sertifikat.Remove(row);
            }
            IQueryable<effektivnost_nir_patent> rowsToDelete1 = this.db.effektivnost_nir_patent.Where(model => model.year == year && model.university_id == this.id);
            foreach (var row in rowsToDelete1)
            {
                this.db.effektivnost_nir_patent.Remove(row);
            }
            IQueryable<effektivnost_nir_dalolatnoma> rowsToDelete2 = this.db.effektivnost_nir_dalolatnoma.Where(model => model.year == year && model.university_id == this.id);
            foreach (var row in rowsToDelete2)
            {
                this.db.effektivnost_nir_dalolatnoma.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records0)
            {
                this.db.effektivnost_nir_sertifikat.Add(newRecord);
            }
            foreach (var newRecord in this.records1)
            {
                this.db.effektivnost_nir_patent.Add(newRecord);
            }
            foreach (var newRecord in this.records2)
            {
                this.db.effektivnost_nir_dalolatnoma.Add(newRecord);
            }
            this.db.SaveChanges();
            //MonitoringUpdate.Update(0, "J15", 0, yil);
        }
        //
        // GET: /Table11/
        public override ActionResult Index()
        {
            ViewBag.file = this.fileName;
            IQueryable<university> university = this.db.university.Where(model => model.id == this.id);
            ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
            Table15 modelTable = new Table15();
            modelTable.sertificat = this.db.effektivnost_nir_sertifikat.Where(model => model.university_id == this.id).ToList();
            modelTable.patent = this.db.effektivnost_nir_patent.Where(model => model.university_id == this.id).ToList();
            modelTable.dalolatnoma = this.db.effektivnost_nir_dalolatnoma.Where(model => model.university_id == this.id).ToList();
            return View(modelTable);
        }
	}
}