using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Classes;
using RatingUniversity.Models;
using System.Data;
using System.Data.Entity;
using System.IO;

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
            this.controllerName = "Table15";
            this.tableName = "J15";
            this.procedureName = "P3_5_effektivnost_provodimih_nir";
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
                    if (row[6] != DBNull.Value) record.filename = "#" + Convert.ToString(row[6]);
                    else record.filename = "#";
                    record.id_university = this.id;
                    record.year = this.year;

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
                    else record.filename = "#";
                    record.id_university = this.id;
                    record.year = this.year;

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
                    else record.filename = "#";
                    record.id_university = this.id;
                    record.year = this.year;

                    this.records2.Add(record);
                }
            }
        }

        protected override void DeleteData()
        {
            IQueryable<effektivnost_nir_sertifikat> rowsToDelete0 = this.db.effektivnost_nir_sertifikat.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete0)
            {
                this.db.effektivnost_nir_sertifikat.Remove(row);
            }
            IQueryable<effektivnost_nir_patent> rowsToDelete1 = this.db.effektivnost_nir_patent.Where(model => model.year == this.year && model.id_university == this.id);
            foreach (var row in rowsToDelete1)
            {
                this.db.effektivnost_nir_patent.Remove(row);
            }
            IQueryable<effektivnost_nir_dalolatnoma> rowsToDelete2 = this.db.effektivnost_nir_dalolatnoma.Where(model => model.year == this.year && model.id_university == this.id);
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
            MonitoringUpdate.Update(this.id, this.tableName, 0, this.year);
        }
        //
        // GET: /Table15/
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
            Table15 modelTable = new Table15();
            modelTable.sertificat = this.db.effektivnost_nir_sertifikat.Where(model => model.id_university == id && model.year == this.year).ToList();
            modelTable.patent = this.db.effektivnost_nir_patent.Where(model => model.id_university == id && model.year == this.year).ToList();
            modelTable.dalolatnoma = this.db.effektivnost_nir_dalolatnoma.Where(model => model.id_university == id && model.year == this.year).ToList();
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
                                        effektivnost_nir_sertifikat record = db.effektivnost_nir_sertifikat.Find(id);
                                        record.filename = saveFileName;
                                        db.Entry(record).State = EntityState.Modified;
                                        break;
                                    }
                                case 2:
                                    {
                                        effektivnost_nir_patent record = db.effektivnost_nir_patent.Find(id);
                                        record.filename = saveFileName;
                                        db.Entry(record).State = EntityState.Modified;
                                        break;
                                    }
                                case 3:
                                    {
                                        effektivnost_nir_dalolatnoma record = db.effektivnost_nir_dalolatnoma.Find(id);
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