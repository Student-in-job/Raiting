using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Models;

namespace RatingUniversity.Controllers
{
    public class MonitoringController : Controller
    {
        //
        // GET: /Monitoring/
        public ActionResult Index()
        {
			TablesContext db = new TablesContext();
			int yil = Int32.Parse(DateTime.Now.Year.ToString());
			var list = db.Monitorings.Where(pr => pr.Year == yil).OrderBy(j => j.Year).ToList();
			ViewBag.bor = true;
			if (list.Count() == 0)
				ViewBag.bor = false;
			return View(list);

        }
	}
}