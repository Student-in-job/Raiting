using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using RatingUniversity;

namespace RatingUniversity.Controllers
{
    public class DolyaPPSController : Controller
    {
        private URaitingEntities db = new URaitingEntities();

        // GET: /Dolya_PPS/
        public ActionResult Index()
        {
            return View(db.I1_dolya_pps_s_uchenoy_stepenyu.ToList());
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
        public ActionResult Create([Bind(Include="ID,name,I11,I12,I1,year")] I1_dolya_pps_s_uchenoy_stepenyu i1_dolya_pps_s_uchenoy_stepenyu)
        {
            if (ModelState.IsValid)
            {
                db.I1_dolya_pps_s_uchenoy_stepenyu.Add(i1_dolya_pps_s_uchenoy_stepenyu);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(i1_dolya_pps_s_uchenoy_stepenyu);
        }

        // POST: /Dolya_PPS/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="ID,name,I11,I12,I1")] I1_dolya_pps_s_uchenoy_stepenyu i1_dolya_pps_s_uchenoy_stepenyu)
        {
            if (ModelState.IsValid)
            {
                db.Entry(i1_dolya_pps_s_uchenoy_stepenyu).State = EntityState.Modified;
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
