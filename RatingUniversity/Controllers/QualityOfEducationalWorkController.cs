using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using RatingUniversity;
using RatingUniversity.Classes;
using RatingUniversity.Models;

namespace RatingUniversity.Controllers
{
    public class QualityOfEducationalWorkController : Controller
    {
        private URaitingEntities db = new URaitingEntities();
        
        #region Качество учебно-методической работы и преподавания
        // GET: /QualityOfEducationalWork/DolyaPPS
        public ActionResult DolyaPPS(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(0);
            ViewBag.Title = "Доля профессорско-преподавательского состава (ППС), имеющего степень PhD (ученую степень доктора, кандидата наук), магистра (дипломированного специалиста) зарубежных высших образовательных учреждений (вузов), входящих в число 500 лучших вузов мира";
            return View(db.I1_dolya_pps_s_uchenoy_stepenyu.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        // GET: /QualityOfEducationalWork/SurveyOfStudents
        public ActionResult SurveyOfStudents(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(1);
            ViewBag.Title = "Уровень качества преподавания (по результатам опроса студентов)";
            return View(db.I2_uroven_kachestva_prepodavaniya.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        // GET: /QualityOfEducationalWork/NumberOfEducationMatherials
        public ActionResult NumberOfEducationMatherials(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(2);
            ViewBag.Title = "Количество учебников, учебных пособий и учебно-методических комплексов, изданных в установленном порядке в течение года преподавателями вуза (в расчете на 100 человек ППС)";
            return View(db.I3_kolichestvo_uchebnikov_i_posobiy.Where(model => model.YEAR == year).OrderByDescending(model => model.I3).ToList());
        }

        // GET: /QualityOfEducationalWork/NumberOfForeigners
        public ActionResult NumberOfForeigners(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(3);
            ViewBag.Title = "Доля иностранных преподавателей и иностранных студентов (соответственно в % от общей численности)";
            return View(db.I4_dolya_inostrannih_prepodavateley_i_studentov.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        // GET: /QualityOfEducationalWork/ForeignUniversitiesExchange
        public ActionResult ForeignUniversitiesExchange(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(4);
            ViewBag.Title = "Участие преподавателей и студентов в программах обмена с зарубежными вузами";
            return View(db.I5_uchastie_v_programme_obmena.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //GET: /QualityOfEducationalWork/CourcesInEnglish

        public ActionResult CourcesInEnglish(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(5);
            ViewBag.Title = "Количество учебных курсов по направлениям образования (специальностям) с преподаванием на иностранных языках (в % от общего количества)";
            return View(db.I6_kolichestvo_uchebnih_kursov_na_inostrannom.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //GET: /QualityOfEducationalWork/ForeignLanguage
        public ActionResult ForeignLanguage(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(6);
            ViewBag.Title = "Уровень владения профессорско-преподавательским составом иностранными языками и информационно-коммуникационными технологиями";
            return View(db.I7_uroven_angliyskogo_i_ikt_u_pps.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //GET: /QualityOfEducationalWork/ForeignLecturesParticipants
        public ActionResult ForeignLecturesParticipants(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(7);
            ViewBag.Title = "Доля преподавателей вуза, участвующих в проведении лекций (семинаров, практических занятий, тренингов) в аккредитованных зарубежных вузах, входящих в число 300 лучших вузов мира (в % от общего количества)";
            return View(db.I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //GET: /QualityOfEducationalWork/SSPOTraining
        public ActionResult SSPOTraining(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(8);
            ViewBag.Title = "Численность ППС, проводящего учебные занятия в учреждениях ССПО";
            return View(db.I9_dolya_pps_prepodayushego_v_sspo.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }
        #endregion

        // GET: /Dolya_PPS/
        public ActionResult Index(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            return RedirectToAction("DolyaPPS/year/"+year.ToString());
        }

        // GET: /Dolya_PPS/Details/5
        /*public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            I1_dolya_pps_s_uchenoy_stepenyu i1_dolya_pps_s_uchenoy_stepenyu = db.I1_dolya_pps_s_uchenoy_stepenyu.Find(id);
            if (i1_dolya_pps_s_uchenoy_stepenyu == null)
            {
                return HttpNotFound();
            }
            return View(i1_dolya_pps_s_uchenoy_stepenyu);
        }*/

        // GET: /Dolya_PPS/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Dolya_PPS/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        /*[HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="ID,name,I11,I12,I1,YEAR")] I1_dolya_pps_s_uchenoy_stepenyu i1_dolya_pps_s_uchenoy_stepenyu)
        {
            if (ModelState.IsValid)
            {
                db.I1_dolya_pps_s_uchenoy_stepenyu.Add(i1_dolya_pps_s_uchenoy_stepenyu);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(i1_dolya_pps_s_uchenoy_stepenyu);
        }*/

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
