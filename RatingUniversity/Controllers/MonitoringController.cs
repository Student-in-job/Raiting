using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Models;
using RatingUniversity.Classes;
using System.Data.Entity;

namespace RatingUniversity.Controllers
{
    public class MonitoringController : Controller
    {
        TablesContext db = new TablesContext();
        //
        // GET: /Monitoring/
        public ActionResult Index()
        {
            ViewBag.Regions = this.db.region.ToList();
            return View(this.db.university.OrderBy(m => m.id).ToList());
        }

         //
        // GET: /Monitoring/Status
        public ActionResult Status()
        {
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			var list = db.Monitorings.Where(pr => pr.Year == yil).OrderBy(j => j.Year).ToList();
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;
			return View(list);

        }
	}
}