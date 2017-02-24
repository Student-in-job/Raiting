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
    public class MonitoringController : BaseViewController
    {
        TablesContext db = new TablesContext();
        //
        // GET: /Monitoring/
        public ActionResult Index()
        {
            IEnumerable<university> universities = this.db.university;
            int year = Classes.Functions.GetYear();
            IEnumerable<Monitorings> monitorings = this.db.Monitorings.Where(model => model.Year == year).ToList();
            List<Classes.Monitor> monitors = new List<Monitor>();
            foreach (university currentUniversity in universities.OrderBy(model => model.name_RU))
            {
                Classes.Monitor newMonitor = new Monitor(
                    currentUniversity.id,
                    (ViewBag.lang == "RU") ?
                        currentUniversity.name_RU :
                        (ViewBag.alfabet == "CY") ?
                            currentUniversity.name_UZ :
                            Classes.Functions.Translate(currentUniversity.name_UZ, ViewBag.lang, ViewBag.alfabet)
                    );
                Monitorings currentMonitorings = monitorings.Where(model => model.UniverId == currentUniversity.id).FirstOrDefault();
                if (currentMonitorings != null)
                    newMonitor.InitializeValues(currentMonitorings);
                monitors.Add(newMonitor);
            }
            return View(monitors);
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