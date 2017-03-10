using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Models;
using RatingUniversity.Classes;
using System.IO;
using System.Data.Entity;

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
            this.controllerName = "Table11";
            this.tableName = "J11";
            this.procedureName = "P1_3_kolvo_uchebnikov_posobiy_umk";
        }

        protected override void FormListOfData(System.Data.DataTable table, string listName)
        {
            if (listName == this.listNames[0])
            {
                this.records0 = new List<monografiya>();
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
                    if (row[5] != DBNull.Value) record.filename = "#" + Convert.ToString(row[5]);
                    else record.filename = "#";
                    record.id_university = this.id;
                    record.year = this.year;//DateTime.Now.Year;

                    this.records0.Add(record);
                }
            }
            else if (listName == this.listNames[1])
            {
                this.records1 = new List<darslik>();
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
                    if (row[5] != DBNull.Value) record.filename = "#" + Convert.ToString(row[5]);
                    else record.filename = "#";
                    record.id_university = this.id;
                    record.year = this.year;//DateTime.Now.Year;

                    this.records1.Add(record);
                }
            }
            else if (listName == this.listNames[2])
            {
                this.records2 = new List<qullanma>();
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
                    if (row[5] != DBNull.Value) record.filename = "#" + Convert.ToString(row[5]);
                    else record.filename = "#";
                    record.id_university = this.id;
                    record.year = this.year;//DateTime.Now.Year;

                    this.records2.Add(record);
                }
            }
            else if (listName == this.listNames[3])
            {
                this.records3 = new List<majmua>();
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
                    if (row[5] != DBNull.Value) record.filename = "#" + Convert.ToString(row[5]);
                    else record.filename = "#";
                    record.id_university = this.id;
                    record.year = this.year;//DateTime.Now.Year;

                    this.records3.Add(record);
                }
            }
        }

        protected override void DeleteData()
        {
            IQueryable<monografiya> rowsToDelete0 = this.db.monografiya.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete0)
            {
                this.db.monografiya.Remove(row);
            }
            IQueryable<darslik> rowsToDelete1 = this.db.darslik.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete1)
            {
                this.db.darslik.Remove(row);
            }
            IQueryable<qullanma> rowsToDelete2 = this.db.qullanma.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete2)
            {
                this.db.qullanma.Remove(row);
            }
            IQueryable<majmua> rowsToDelete3 = this.db.majmua.Where(model => model.year == this.year && model.id_university == this.id);
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
            base.SaveData();
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table11/
        [Authorize(Roles="user")]
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
            Table11 modelTable = new Table11();
            modelTable.monografiya = this.db.monografiya.Where(model => model.id_university == id && model.year == this.year).ToList();
            modelTable.darslik = this.db.darslik.Where(model => model.id_university == id && model.year == this.year).ToList();
            modelTable.qullanma = this.db.qullanma.Where(model => model.id_university == id && model.year == this.year).ToList();
            modelTable.majmua = this.db.majmua.Where(model => model.id_university == id && model.year == this.year).ToList();
            return View(modelTable);
        }

        public ActionResult UploadFilesOverload(IEnumerable<HttpPostedFileBase> files, int id, int resType)
        {
            try
            {
                if (files != null)
                {
                    string fileName;
                    string fileExtension;
                    foreach (var file in files)
                    {
                        fileExtension = Path.GetExtension(file.FileName);
                        fileName = Path.GetFileName(file.FileName);

                        if (fileExtension == ".pdf")
                        {
                            //Save the uploaded file to the application folder.
                            string filePath = this.year.ToString() + "/" + this.id.ToString() + "/" + this.tableName + "/";
                            string savePath = Server.MapPath("~/Files/Upload/");
                            DirectoryInfo di = new DirectoryInfo(savePath + filePath);
                            if (!di.Exists)
                                Directory.CreateDirectory(savePath + filePath);
                            string saveFileName = filePath + id + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm_ss") + fileExtension;
                            file.SaveAs(savePath + saveFileName);
                            TablesContext db = new TablesContext();
                            switch (resType)
                            {
                                case 1:
                                    {
                                        monografiya record = db.monografiya.Find(id);
                                        record.filename = saveFileName;
                                        db.Entry(record).State = EntityState.Modified;
                                        break;
                                    }
                                case 2:
                                    {
                                        darslik record = db.darslik.Find(id);
                                        record.filename = saveFileName;
                                        db.Entry(record).State = EntityState.Modified;
                                        break;
                                    }
                                case 3:
                                    {
                                        qullanma record = db.qullanma.Find(id);
                                        record.filename = saveFileName;
                                        db.Entry(record).State = EntityState.Modified;
                                        break;
                                    }
                                case 4:
                                    {
                                        majmua record = db.majmua.Find(id);
                                        record.filename = saveFileName;
                                        db.Entry(record).State = EntityState.Modified;
                                        break;
                                    }
                            }
                            db.SaveChanges();
                        }
                        else
                        {
                            //TODO: Send Alert to the users file not supported.
                            ViewBag.Error = ErrorCodes.NotPDF;
                            return View("ErrorFile");
                        }
                    }
                }
                return Redirect(Request.UrlReferrer.ToString());
            }
            catch (Exception exp)
            {
                ViewBag.ErrorMessage = exp.Message;
                return View("Error", new HandleErrorInfo(exp, this.controllerName, "UploadFiles"));
            }
        }
	}
}