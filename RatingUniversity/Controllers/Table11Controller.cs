using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Models;
using RatingUniversity.Classes;

namespace RatingUniversity.Controllers
{
    public class Table11Controller : BaseInputDataController
    {
        protected List<monografiya> records0;
        protected List<darslik> records1;
        protected List<qullanma> records2;
        protected List<majmua> records3;
        protected TablesContext db = new TablesContext();

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 13;
            base.Initialize(requestContext);
            this.fileName = "11_kolichestvo_izdannoy_uchebnoy_literaturi.xlsx";
            this.listNames = new List<string>();
            this.listNames.Add("monografiya");
            this.listNames.Add("darslik");
            this.listNames.Add("qullanma");
            this.listNames.Add("majmua");
            //this.startRow = 8;
            //this.endRow = 2;
        }

        protected override void FormListOfData(System.Data.DataTable table, string listName)
        {
            if (listName == this.listNames[0])
            {
                this.records0 = new List<monografiya>();
                /*
                for (int i = this.startRow; i < table.Rows.Count - this.endRow; i++)
                {
                    monografiya record = new monografiya();
                    if (table.Rows[i][1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(table.Rows[i][1]), "UZ", "LT");
                    if (table.Rows[i][2] != DBNull.Value) record.kod_spec = Functions.Translate(Convert.ToString(table.Rows[i][2]), "UZ", "LT");
                    if (table.Rows[i][3] != DBNull.Value) record.monograf_name = Convert.ToString(table.Rows[i][3]);
                    if (table.Rows[i][4] != DBNull.Value) record.monograf_year = Convert.ToString(table.Rows[i][4]);
                    if (table.Rows[i][5] != DBNull.Value) record.filename = Convert.ToString(table.Rows[i][5]);
                    record.university_id = this.id;
                    record.year = DateTime.Now.Year;

                    this.records0.Add(record);
                }*/
                bool flag = false;
                foreach(System.Data.DataRow row in table.Rows)
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
                    if(!flag) continue;
                    monografiya record = new monografiya();
                    if (row[1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(row[1]), "UZ", "LT");
                    if (row[2] != DBNull.Value) record.kod_spec = Functions.Translate(Convert.ToString(row[2]), "UZ", "LT");
                    if (row[3] != DBNull.Value) record.monograf_name = Convert.ToString(row[3]);
                    if (row[4] != DBNull.Value) record.monograf_year = Convert.ToString(row[4]);
                    if (row[5] != DBNull.Value) record.filename = Convert.ToString(row[5]);
                    record.id_university = this.id;
                    record.year = DateTime.Now.Year;

                    this.records0.Add(record);
                }
            }
            else if (listName == this.listNames[1])
            {
                this.records1 = new List<darslik>();
                /*
                for (int i = this.startRow; i < table.Rows.Count - this.endRow; i++)
                {
                    darslik record = new darslik();
                    if (table.Rows[i][1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(table.Rows[i][1]), "UZ", "LT");
                    if (table.Rows[i][2] != DBNull.Value) record.kod_spec = Functions.Translate(Convert.ToString(table.Rows[i][2]), "UZ", "LT");
                    if (table.Rows[i][3] != DBNull.Value) record.ucheb_name = Convert.ToString(table.Rows[i][3]);
                    if (table.Rows[i][4] != DBNull.Value) record.ucheb_number = Convert.ToString(table.Rows[i][4]);
                    if (table.Rows[i][5] != DBNull.Value) record.filename = Convert.ToString(table.Rows[i][5]);
                    record.university_id = this.id;
                    record.year = DateTime.Now.Year;

                    this.records1.Add(record);
                }*/
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
                    darslik record = new darslik();
                    if (row[1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(row[1]), "UZ", "LT");
                    if (row[2] != DBNull.Value) record.kod_spec = Functions.Translate(Convert.ToString(row[2]), "UZ", "LT");
                    if (row[3] != DBNull.Value) record.ucheb_name = Convert.ToString(row[3]);
                    if (row[4] != DBNull.Value) record.ucheb_number = Convert.ToString(row[4]);
                    if (row[5] != DBNull.Value) record.filename = Convert.ToString(row[5]);
                    record.id_university = this.id;
                    record.year = DateTime.Now.Year;

                    this.records1.Add(record);
                }
            }
            else if (listName == this.listNames[2])
            {
                this.records2 = new List<qullanma>();
                /*
                for (int i = this.startRow; i < table.Rows.Count - this.endRow; i++)
                {
                    qullanma record = new qullanma();
                    if (table.Rows[i][1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(table.Rows[i][1]), "UZ", "LT");
                    if (table.Rows[i][2] != DBNull.Value) record.kod_spec = Functions.Translate(Convert.ToString(table.Rows[i][2]), "UZ", "LT");
                    if (table.Rows[i][3] != DBNull.Value) record.posobie_name = Convert.ToString(table.Rows[i][3]);
                    if (table.Rows[i][4] != DBNull.Value) record.posobie_number = Convert.ToString(table.Rows[i][4]);
                    if (table.Rows[i][5] != DBNull.Value) record.filename = Convert.ToString(table.Rows[i][5]);
                    record.university_id = this.id;
                    record.year = DateTime.Now.Year;

                    this.records2.Add(record);
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
                    qullanma record = new qullanma();
                    if (row[1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(row[1]), "UZ", "LT");
                    if (row[2] != DBNull.Value) record.kod_spec = Functions.Translate(Convert.ToString(row[2]), "UZ", "LT");
                    if (row[3] != DBNull.Value) record.posobie_name = Convert.ToString(row[3]);
                    if (row[4] != DBNull.Value) record.posobie_number = Convert.ToString(row[4]);
                    if (row[5] != DBNull.Value) record.filename = Convert.ToString(row[5]);
                    record.id_university = this.id;
                    record.year = DateTime.Now.Year;

                    this.records2.Add(record);
                }
            }
            else if (listName == this.listNames[3])
            {
                this.records3 = new List<majmua>();
                /*
                for (int i = this.startRow; i < table.Rows.Count - this.endRow; i++)
                {
                    majmua record = new majmua();
                    if (table.Rows[i][1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(table.Rows[i][1]), "UZ", "LT");
                    if (table.Rows[i][2] != DBNull.Value) record.kod_spec = Functions.Translate(Convert.ToString(table.Rows[i][2]), "UZ", "LT");
                    if (table.Rows[i][3] != DBNull.Value) record.metodich_name = Convert.ToString(table.Rows[i][3]);
                    if (table.Rows[i][4] != DBNull.Value) record.metodich_number = Convert.ToString(table.Rows[i][4]);
                    if (table.Rows[i][5] != DBNull.Value) record.filename = Convert.ToString(table.Rows[i][5]);
                    record.university_id = this.id;
                    record.year = DateTime.Now.Year;

                    this.records3.Add(record);
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
                    majmua record = new majmua();
                    if (row[1] != DBNull.Value) record.fio = Functions.Translate(Convert.ToString(row[1]), "UZ", "LT");
                    if (row[2] != DBNull.Value) record.kod_spec = Functions.Translate(Convert.ToString(row[2]), "UZ", "LT");
                    if (row[3] != DBNull.Value) record.metodich_name = Convert.ToString(row[3]);
                    if (row[4] != DBNull.Value) record.metodich_number = Convert.ToString(row[4]);
                    if (row[5] != DBNull.Value) record.filename = Convert.ToString(row[5]);
                    record.id_university = this.id;
                    record.year = DateTime.Now.Year;

                    this.records3.Add(record);
                }
            }
        }

        protected override void DeleteData()
        {
            int year = DateTime.Now.Year;
            IQueryable<monografiya> rowsToDelete0 = this.db.monografiya.Where(model => model.year == year && model.id_university == this.id);
            foreach (var row in rowsToDelete0)
            {
                this.db.monografiya.Remove(row);
            }
            IQueryable<darslik> rowsToDelete1 = this.db.darslik.Where(model => model.year == year && model.id_university == this.id);
            foreach (var row in rowsToDelete1)
            {
                this.db.darslik.Remove(row);
            }
            IQueryable<qullanma> rowsToDelete2 = this.db.qullanma.Where(model => model.year == year && model.id_university == this.id);
            foreach (var row in rowsToDelete2)
            {
                this.db.qullanma.Remove(row);
            }
            IQueryable<majmua> rowsToDelete3 = this.db.majmua.Where(model => model.year == year && model.id_university == this.id);
            foreach (var row in rowsToDelete3)
            {
                this.db.majmua.Remove(row);
            }
            this.db.SaveChanges();
        }

        protected override void SaveData()
        {
            foreach (var newRecord in this.records0)
            {
                this.db.monografiya.Add(newRecord);
            }
            foreach (var newRecord in this.records1)
            {
                this.db.darslik.Add(newRecord);
            }
            foreach (var newRecord in this.records2)
            {
                this.db.qullanma.Add(newRecord);
            }
            foreach (var newRecord in this.records3)
            {
                this.db.majmua.Add(newRecord);
            }
            this.db.SaveChanges();
            //MonitoringUpdate.Update(0, "J11", 0, yil);
        }
        //
        // GET: /Table11/
        public ActionResult Index(int? id)
        {
            if (this.id == 0)
            {
                if (id == null)
                {
                    return RedirectToAction("ListIndex", "BaseInputData", new { controllerName = "Table11", active = this.active });
                }
            }
            else
            {
                id = this.id;
            }
            int year = DateTime.Now.Year;
            ViewBag.file = this.fileName;
            IQueryable<university> university = this.db.university.Where(model => model.id == id);
            ViewBag.university = (ViewBag.lang == "RU") ? university.ToList()[0].name_RU : university.ToList()[0].name_UZ;
            Table11 modelTable = new Table11();
            modelTable.monografiya = this.db.monografiya.Where(model => model.id_university == id && model.year == year).ToList();
            modelTable.darslik = this.db.darslik.Where(model => model.id_university == id && model.year == year).ToList();
            modelTable.qullanma = this.db.qullanma.Where(model => model.id_university == id && model.year == year).ToList();
            modelTable.majmua = this.db.majmua.Where(model => model.id_university == id && model.year == year).ToList();
            return View(modelTable);
        }
	}
}