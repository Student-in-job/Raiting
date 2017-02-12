using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using RatingUniversity.Models;
using RatingUniversity.Classes;
using System.Data;
using System.Threading;
using System.Globalization;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Microsoft.Owin.Security;

namespace RatingUniversity.Controllers
{
    public class BaseInputDataController : BaseViewController
    {
        protected string fileName;
        protected string fileFullName;
        protected ExcelFile excelFile;
        protected string listName;
        protected string lang;
        protected string alfabet;
        protected List<string> listNames;
        protected int active;
        protected string tableName;
        protected string controllerName;
        protected int year;

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            base.Initialize(requestContext);
            ViewBag.active = Functions.CreateActive(this.active, 34);
            this.year = DateTime.Now.Year;
        }

        protected void ReadDataFromExcelFiles()
        {
            try
            {
                this.excelFile = new ExcelFile(this.fileFullName);
                if ((this.listName != string.Empty) && (this.listName != null))
                {
                    DataTable table = this.excelFile.ReadData(this.listName);
                    this.FormListOfData(table);
                    this.DeleteData();
                    this.SaveData();
                }
                else if (this.listNames != null)
                {
                    foreach (string list in this.listNames)
                    {
                        DataTable table = this.excelFile.ReadData(list);
                        this.FormListOfData(table, list);
                    }
                    this.DeleteData();
                    this.SaveData();
                }
            }
            catch (Exception exp)
            {
                throw new Exception(exp.Message);
            }
            
        }

        protected virtual void FormListOfData(DataTable table)
        { }

        protected virtual void FormListOfData(DataTable table, string tableName)
        { }

        protected virtual void DeleteData()
        { }

        protected virtual void SaveData()
        {
            int year = DateTime.Now.Year;
            MonitoringUpdate.Update(id, this.tableName, 0, year);
        }

        //
        // GET: /BaseInputData/
        //[Authorize(Roles="user")]
        //public virtual ActionResult Index()
        //{
        //    return View();
        //}
        
        [Authorize(Roles = "admin")]
        public virtual ActionResult ListIndex(string controllerName, int active)
        {
            ViewBag.active = Functions.CreateActive(active, 34); 
            TablesContext db = new TablesContext();
            ViewBag.controller = controllerName;
            return View(db.university.ToList());
        }

        [Authorize(Roles="user")]
        public FileResult Download()
        {
            string fullFileName = Server.MapPath("~/Files/"+this.fileName);
            byte[] fileBytes = System.IO.File.ReadAllBytes(fullFileName);
            string client_fileName = this.fileName;
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, client_fileName);
        }

        [Authorize(Roles="user")]
        [HttpPost]
        public ActionResult Upload(IEnumerable<HttpPostedFileBase> files)
        {
            try
            {
                if (files != null)
                {
                    string fileName;
                    string fileExtension;

                    foreach (var file in files)
                    {
                        //Set file details.
                        fileName = Path.GetFileName(file.FileName);
                        fileExtension = Path.GetExtension(file.FileName);

                        if (fileExtension == ".xls" || fileExtension == ".xlsx")
                        {
                            //Save the uploaded file to the application folder.
                            string savePath = Server.MapPath("~/Files/Upload/") + DateTime.Now.Year.ToString() + "/" + this.id.ToString() + "/";
                            if (!Directory.Exists(savePath))
                                Directory.CreateDirectory(savePath);
                            this.fileFullName = savePath + Path.GetFileNameWithoutExtension(file.FileName) + DateTime.Now.ToString("_yyyy_MM_dd__HH_mm_ss") + fileExtension;
                            file.SaveAs(this.fileFullName);

                            //Read Data From ExcelFiles.
                            this.ReadDataFromExcelFiles();
                        }
                        else
                        {
                            ViewBag.Error = ErrorCodes.NotExcel;
                            return View("ErrorFile");
                            //TODO: Send Alert to the users file not supported.
                        }
                    }
                }
                return RedirectToAction("Index");
            }
            catch (Exception exp)
            {
                ViewBag.ErrorMessage = exp.Message;
                return View("Error", new HandleErrorInfo(exp, this.controllerName, "Upload"));
            }
        }

        [Authorize(Roles = "admin")]
        [HttpPost]
        public virtual ActionResult Approve(int id)
        {
            int year = DateTime.Now.Year;
            MonitoringUpdate.Update(id, this.tableName, 1, year);
            return RedirectToAction("index", this.controllerName, new { id = id });
        }
	}
}