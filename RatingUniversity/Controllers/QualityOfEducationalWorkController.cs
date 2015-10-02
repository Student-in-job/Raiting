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

namespace RatingUniversity.Controllers
{
    public class QualityOfEducationalWorkController : Controller
    {
        private URaitingEntities db = new URaitingEntities();

        public List<string> active = new List<string>();
        
        //Set up active menu item
        private void CreateActive(int Position)
        {
            for (int index = 0; index < 9; index++)
            {
                string value = (index == Position) ? "class=active" : string.Empty;
                this.active.Add(value);
            }
        }
        
        #region Качество учебно-методической работы и преподавания
        // GET: /QualityOfEducationalWork/DolyaPPS
        public ActionResult DolyaPPS()
        {
            this.CreateActive(0);
            ViewBag.active = this.active;
            ViewBag.Title = "Доля профессорско-преподавательского состава (ППС), имеющего степень PhD (ученую степень доктора, кандидата наук), магистра (дипломированного специалиста) зарубежных высших образовательных учреждений (вузов), входящих в число 500 лучших вузов мира";
            return View(db.I1_dolya_pps_s_uchenoy_stepenyu.OrderByDescending(model => model.I1).ToList());
        }

        // GET: /QualityOfEducationalWork/SurveyOfStudents
        public ActionResult SurveyOfStudents()
        {
            this.CreateActive(1);
            ViewBag.active = this.active;
            ViewBag.Title = "Уровень качества преподавания (по результатам опроса студентов)";
            return View(db.I2_uroven_kachestva_prepodavaniya.OrderByDescending(model => model.I2).ToList());
        }

        // GET: /QualityOfEducationalWork/NumberOfEducationMatherials
        public ActionResult NumberOfEducationMatherials()
        {
            this.CreateActive(2);
            ViewBag.active = this.active;
            ViewBag.Title = "Количество учебников, учебных пособий и учебно-методических комплексов, изданных в установленном порядке в течение года преподавателями вуза (в расчете на 100 человек ППС)";
            return View(db.I3_kolichestvo_uchebnikov_i_posobiy.OrderByDescending(model => model.I3).ToList());
        }

        // GET: /QualityOfEducationalWork/NumberOfForeigners
        public ActionResult NumberOfForeigners()
        {
            this.CreateActive(3);
            ViewBag.active = this.active;
            ViewBag.Title = "Доля иностранных преподавателей и иностранных студентов (соответственно в % от общей численности)";
            return View(db.I4_dolya_inostrannih_prepodavateley_i_studentov.OrderByDescending(model => model.I4));
        }

        // GET: /QualityOfEducationalWork/ForeignUniversitiesExchange
        public ActionResult ForeignUniversitiesExchange()
        {
            this.CreateActive(4);
            ViewBag.active = this.active;
            ViewBag.Title = "Участие преподавателей и студентов в программах обмена с зарубежными вузами";
            return View(db.I5_uchastie_v_programme_obmena.OrderByDescending(model => model.I5));
        }

        //GET: /QualityOfEducationalWork/CourcesInEnglish

        public ActionResult CourcesInEnglish()
        {
            this.CreateActive(5);
            ViewBag.active = this.active;
            ViewBag.Title = "Количество учебных курсов по направлениям образования (специальностям) с преподаванием на иностранных языках (в % от общего количества)";
            return View(db.I6_kolichestvo_uchebnih_kursov_na_inostrannom.OrderByDescending(model => model.I6));
        }

        //GET: /QualityOfEducationalWork/ForeignLanguage
        public ActionResult ForeignLanguage()
        {
            this.CreateActive(6);
            ViewBag.active = this.active;
            ViewBag.Title = "Уровень владения профессорско-преподавательским составом иностранными языками и информационно-коммуникационными технологиями";
            return View(db.I7_uroven_angliyskogo_i_ikt_u_pps.OrderByDescending(model => model.I7));
        }

        //GET: /QualityOfEducationalWork/ForeignLecturesParticipants
        public ActionResult ForeignLecturesParticipants()
        {
            this.CreateActive(7);
            ViewBag.active = this.active;
            ViewBag.Title = "Доля преподавателей вуза, участвующих в проведении лекций (семинаров, практических занятий, тренингов) в аккредитованных зарубежных вузах, входящих в число 300 лучших вузов мира (в % от общего количества)";
            return View(db.I8_dolya_pps_prepodayushih_v_zarubejnih_vuzah.OrderByDescending(model => model.I8));
        }

        //GET: /QualityOfEducationalWork/SSPOTraining
        public ActionResult SSPOTraining()
        {
            this.CreateActive(8);
            ViewBag.active = this.active;
            ViewBag.Title = "Численность ППС, проводящего учебные занятия в учреждениях ССПО";
            return View(db.I9_dolya_pps_prepodayushego_v_sspo.OrderByDescending(model => model.I9));
        }
        #endregion

        // GET: /Dolya_PPS/
        public ActionResult Index()
        {
            return RedirectToAction("DolyaPPS");
        }

        // GET: /Dolya_PPS/Details/5
        public ActionResult Details(int? id)
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
        }

        // GET: /Dolya_PPS/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Dolya_PPS/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
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
        }

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
