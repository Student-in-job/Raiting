using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using RatingUniversity.Models;
using RatingUniversity.Classes;
using System.Data;

namespace RatingUniversity.Controllers
{
    public class BaseInputDataController : Controller
    {
        protected string fileName;
        protected string fileFullName;
        protected ExcelFile excelFile;
        protected string listName;
        protected int id = 46;

        protected void ReadDataFromExcelFiles()
        {
            this.excelFile = new ExcelFile(this.fileFullName);
            DataTable table = this.excelFile.ReadData(this.listName);

            this.FormListOfData(table);
            this.DeleteData();
            this.SaveData();
        }

        protected virtual void FormListOfData(DataTable table)
        { }

        protected virtual void DeleteData()
        { }

        protected virtual void SaveData()
        { }

        //
        // GET: /BaseInputData/
        public virtual ActionResult Index()
        {
            return View();
        }

        public FileResult Download()
        {
            string fullFileName = Server.MapPath("~/Files/"+this.fileName);
            byte[] fileBytes = System.IO.File.ReadAllBytes(fullFileName);
            string client_fileName = this.fileName;
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, client_fileName);
        }

        [HttpPost]
        public ActionResult Upload(IEnumerable<HttpPostedFileBase> files)
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
                        this.fileFullName = savePath + Path.GetFileNameWithoutExtension(this.fileFullName) + DateTime.Now.ToString("_yyyy_MM_dd__HH_mm_ss") + fileExtension;
                        file.SaveAs(this.fileFullName);

                        //Read Data From ExcelFiles.
                        this.ReadDataFromExcelFiles();
                    }
                    else
                    {
                        Response.Write("Error file");
                        Response.End();
                        //TODO: Send Alert to the users file not supported.
                    }
                }
            }
            return RedirectToAction("Index");
        }
	}
}