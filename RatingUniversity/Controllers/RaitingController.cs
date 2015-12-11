using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Models;
using RatingUniversity.Classes;
using System.Threading;
using System.Globalization;

namespace RatingUniversity.Controllers
{
    public class RaitingController : Controller
    {
        private TablesContext db = new TablesContext();
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            base.Initialize(requestContext);
            if (Session["CurrentCulture"] != null)
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["CurrentCulture"].ToString());
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(Session["CurrentCulture"].ToString());
            }
            string culture = Thread.CurrentThread.CurrentCulture.ToString();
            if (culture.IndexOf("ru") != -1)
            {
                ViewBag.lang = "RU";
                ViewBag.alfabet = "RU";
            }
            else
            {
                ViewBag.lang = "UZ";
                ViewBag.alfabet = (culture.IndexOf("Cyrl") != -1) ? "CY" : "LT";
            }
        }
        //
        // GET: /Raiting/
        public ActionResult Index(int? year)
        {
            if (year == null)
            {
                year = DateTime.Now.Year;
            }
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(4, 5);
            ViewBag.Title = "РЕЙТИНГ высших образовательных учреждений Республики Узбекистан за " + year.ToString() +" год";
            return View(db.RAITING_TOTAL.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        public ActionResult QualityOfEducationalWork(int? year)
        {
            if (year == null)
            {
                year = DateTime.Now.Year;
            }
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(0, 5);
            ViewBag.Title = "РЕЙТИНГ высших образовательных учреждений Республики Узбекистан за " + year.ToString() + " год";
            ViewBag.Subtitle = "Уровень качества преподавания";
            return View(db.I1_TOTAL.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }
        public ActionResult KnowledgeAndQualification(int? year)
        {
            if (year == null)
            {
                year = DateTime.Now.Year;
            }
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(1, 5);
            ViewBag.Title = "РЕЙТИНГ высших образовательных учреждений Республики Узбекистан за " + year.ToString() + " год";
            ViewBag.Subtitle = "Уровень знания студентов и квалификация выпускников";
            return View(db.I2_TOTAL.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }
        public ActionResult SciencePotential(int? year)
        {
            if (year == null)
            {
                year = DateTime.Now.Year;
            }
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(2, 5);
            ViewBag.Title = "РЕЙТИНГ высших образовательных учреждений Республики Узбекистан за " + year.ToString() + " год";
            ViewBag.Subtitle = "Уровень научного потенциала высшего учебного заведения";
            return View(db.I3_TOTAL.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        public ActionResult LevelOfMTSAndICT(int? year)
        {
            if (year == null)
            {
                year = DateTime.Now.Year;
            }
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(3, 5);
            ViewBag.Title = "РЕЙТИНГ высших образовательных учреждений Республики Узбекистан за " + year.ToString() + " год";
            ViewBag.Subtitle = "Уровень оснащенности материально-технической базы и внедрения ИКТ";
            return View(db.I4_TOTAL.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }
	}
}