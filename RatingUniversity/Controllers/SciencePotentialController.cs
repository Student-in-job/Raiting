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
    public class SciencePotentialController : Controller
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
        // GET: /SciencePotential/Citation
        public ActionResult Citation(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(13);
            ViewBag.Title = "Цитируемость публикаций ППС вуза по данным международных индексов";
            return View(db.I14_citiruemost_publikaciy_pps.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //
        // GET: /SciencePotential/NumberOfPapers
        public ActionResult NumberOfPapers(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(14);
            ViewBag.Title = "Количество статей, изданных в зарубежных реферируемых научных журналах, республиканских научных изданиях (включенных в список ВАК), опубликованных монографий (в расчете на 1 ППС)";
            return View(db.I15_kolichestvo_izdannih_statey.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //
        // GET: /SciencePotential/NumberOfAcademics
        public ActionResult NumberOfAcademics(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(15);
            ViewBag.Title = "Количество сотрудников высших учебных заведений утвержденных Президиумом ВАК в ученой степени доктора наук и профессоров-преподавателей, имеющих ученые степени (звания)";
            return View(db.I16_kolichestvo_sotrudnikov_utverjdennih_vak.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //
        // GET: /SciencePotential/AmountOfFinance
        public ActionResult AmountOfFinance(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(16);
            ViewBag.Title = "Сумма финансовых средств, полученных от научно-исследовательской деятельности (в расчете на 1 ППС)";
            return View(db.I17_summa_finansovih_sredstv_poluchennih_na_nauchnuyu_deyatelnost.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //
        // GET: /SciencePotential/EffectivityOfWork
        public ActionResult EffectivityOfWork(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(17);
            ViewBag.Title = "Эффективность проводимых научно-изыскательских работ";
            return View(db.I18_effektivnost_provodimih_nauchnih_rabot.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //
        // GET: /SciencePotential/LabEquipment
        public ActionResult LabEquipment(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(18);
            ViewBag.Title = "Степень оснащенности научной экспериментально-лабораторной базы современным оборудованием";
            return View(db.I19_stepen_osnashennosti_laboratoriy_oborudovaniem.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //
        // GET: /SciencePotential/
        public ActionResult Index(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            return RedirectToAction("Citation/year/" + year.ToString());
        }
	}
}