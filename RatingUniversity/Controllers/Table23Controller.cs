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
    public class Table23Controller : BaseInputDataController
    {
        protected List<summi_mejdunarodnih_grantov> records;
        protected TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            this.active = 24;
            base.Initialize(requestContext);
            this.fileName = "23_summi_mejdunarodnih_grantov.xlsx";
            this.listName = "summi_mejdunarodnih_grantov";
            //this.startRow = 8;
            //this.endRow = 2;
        }//
        // GET: /Table23/
        public ActionResult Index()
        {
            return View();
        }
	}
}