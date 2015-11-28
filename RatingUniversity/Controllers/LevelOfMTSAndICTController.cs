using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Models;
using RatingUniversity.Classes;

namespace RatingUniversity.Controllers
{
    public class LevelOfMTSAndICTController : Controller
    {
        private URaitingEntities db = new URaitingEntities();

        // GET: /LevelOfMTSAndICT/LibraryState
        public ActionResult LibraryState(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(19);
            ViewBag.Title = "Обеспеченность ИРЦ учебной литературой, включая электронные версии, в соответствии с требованиями учебных программ";
            return View(db.I20_obespechennost_irc_uchebnoy_literaturoy.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        // GET: /LevelOfMTSAndICT/UseOfICT
        public ActionResult UseOfICT(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(20);
            ViewBag.Title = "Степень использования и внедрения ИКТ в учебном процессе и научно-исследовательской работе";
            return View(db.I21_stepen_vnedreniya_ikt_v_uchebniy_process.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        // GET: /LevelOfMTSAndICT/InternetState
        public ActionResult InternetState(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(21);
            ViewBag.Title = "Доступность информации о вузе в Интернете (качество вэб-сайта, наличие необходимой информации о вузе, публикаций и материалов, контактных данных для электронных запросов пользователей, обновляемость сайта и другие)";
            return View(db.I22_dostupnost_informacii_o_vuze_v_internete.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        // GET: /LevelOfMTSAndICT/ModernLab
        public ActionResult ModernLab(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            ViewBag.year = year;
            ViewBag.active = Functions.CreateActive(22);
            ViewBag.Title = "Степень оснащенности современным учебно-лабораторным и учебно-презентационным оборудованием";
            return View(db.I23_osnashennost_laboratornim_oborudovaniem.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }

        //
        // GET: /LevelOfMTSAndICT/
        public ActionResult Index(int? year)
        {
            if (year == null)
                year = DateTime.Now.Year;
            return RedirectToAction("LibraryState/year/" + year.ToString());
        }
	}
}