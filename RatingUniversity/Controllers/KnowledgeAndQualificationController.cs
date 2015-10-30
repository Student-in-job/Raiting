using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Models;

namespace RatingUniversity.Controllers
{
    public class KnowledgeAndQualificationController : Controller
    {
        private URaitingEntities db = new URaitingEntities();

        public List<string> active = new List<string>();

        private void CreateActive(int Position)
        {
            for (int index = 0; index < 13; index++)
            {
                string value = (index == Position) ? "class=active" : string.Empty;
                this.active.Add(value);
            }
        }

        //
        // GET: /KnowledgeAndQualification/AssessmentByTest
        public ActionResult AssessmentByTest(int year)
        {
            this.CreateActive(9);
            ViewBag.active = this.active;
            ViewBag.Title = "Оценка знанийpo студентов (по результатам выборочного тестирования студентов по специальным профильным дисциплинам)";
            return View(db.I10_rezultati_attestacii_u_studentov.Where(model => model.YEAR == year).OrderByDescending(model => model.mark).ToList());
        }


        //
        // GET: /KnowledgeAndQualification/

        //
        // GET: /KnowledgeAndQualification/
        public ActionResult Index()
        {
            return RedirectToAction("AssessmentByTest");
        }
	}
}