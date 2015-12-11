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
    public class KnowledgeAndQualificationController : Controller
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
        // GET: /KnowledgeAndQualification/AssessmentByTest
        public ActionResult AssessmentByTest(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(9);
            ViewBag.Title = "Оценка знаний студентов (по результатам выборочного тестирования студентов по специальным профильным дисциплинам)";
            return View(db.I10_rezultati_attestacii_u_studentov.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //
        // GET: /KnowledgeAndQualification/AssessmentByWorkers
        public ActionResult AssessmentByWorkers(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(10);
            ViewBag.Title = "Оценка квалификации выпускников вуза по результатам опроса работодателей";
            return View(db.I11_ocenka_kvalifikacii_vipusknikov_rabotodatelyami.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        } 

        //
        // GET: /KnowledgeAndQualification/NumberOfWorkingStudents
        public ActionResult NumberOfWorkingStudents(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(11);
            ViewBag.Title = "Доля выпускников, трудоустроенных по специальности в течение 6 месяцев после окончания ВУЗа";
            return View(db.I12_dolya_trudoustroennih_vipusknikov.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        // GET: /KnowledgeAndQualification/NumberOfHonoredStudents
        public ActionResult NumberOfHonoredStudents(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(12);
            ViewBag.Title = "Количество студентов, удостоенных наград (дипломов) и занявших призовые места на международных и республиканских олимпиадах и престижных конкурсах";
            return View(db.I13_kolichestvo_studentov_udostoennih_nagrad.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }
        //
        // GET: /KnowledgeAndQualification/
        public ActionResult Index(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            return RedirectToAction("AssessmentByTest/year/" + year.ToString());
        }
	}
}