using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Classes;
using RatingUniversity.Models;
using System.Threading.Tasks;
using System.Data.Entity;

namespace RatingUniversity.Controllers
{
    public class UniversityController : BaseViewController
    {
        TablesContext db = new TablesContext();
        //
        // GET: /University/
        [Authorize(Roles = "admin")]
        public override ActionResult Index()
        {
            return View(this.db.university.OrderBy(m => m.id).ToList());
        }

        [Authorize(Roles = "admin")]
        public ActionResult Create()
        {
            ViewBag.Regions = this.db.region.ToList();
            return View();
        }

        // POST: /Default1/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "admin")]
        public ActionResult Create([Bind(Include = "name_RU,id_region,id_branch,name_UZ")] university university)
        {
            if (ModelState.IsValid)
            {
                university.name_UZ = Functions.Translate(university.name_UZ, "UZ", "LT");
                db.university.Add(university);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(university);
        }

        [Authorize(Roles = "admin")]
        public ActionResult Edit(int? id)
        {
            ViewBag.Regions = this.db.region.ToList();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            university model = db.university.Find(id);
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "admin")]
        public ActionResult Edit([Bind(Include="id, name_RU,id_region,id_branch,name_UZ")] university university)
        {
            if (ModelState.IsValid)
            {
                university.name_UZ = Functions.Translate(university.name_UZ, "UZ", "LT");
                db.Entry(university).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(university);
        }

        [Authorize(Roles = "admin")]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            university university = db.university.Find(id);
            if (university == null)
            {
                return HttpNotFound();
            }
            return View(university);
        }

        [HttpPost, ActionName("Delete")]
        [Authorize(Roles = "admin")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            university university = db.university.Find(id);
            db.university.Remove(university);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
	}
}