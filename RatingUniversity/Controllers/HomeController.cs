﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using RatingUniversity.Classes;

namespace RatingUniversity.Controllers
{
    public class HomeController : Controller
    {
        //initilizing culture on controller initialization
        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            base.Initialize(requestContext);
            if (Session["CurrentCulture"] != null)
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["CurrentCulture"].ToString());
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(Session["CurrentCulture"].ToString());
            }
        }

        //// changing culture
        public ActionResult ChangeCulture(string lang)
        {
            string returnLink = Request.UrlReferrer.AbsoluteUri;
            var langCookie = new HttpCookie("lang", lang) { HttpOnly = true };
            Response.AppendCookie(langCookie);

            Thread.CurrentThread.CurrentCulture = new CultureInfo(lang);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(lang);
            Session["CurrentCulture"] = lang;

            return Redirect(returnLink);
        }

        public ActionResult Index()
        {
            CultureInfo currentCulrute = Thread.CurrentThread.CurrentCulture;
            ViewBag.lang = currentCulrute.Name.Substring(0, 5);
            ViewBag.timeLeft = Functions.GetLeftTime("01-11-2015 00:00:00");
            ViewBag.year = 2013;
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Theme()
        {
            ViewBag.Message = "Your theme page.";

            return View();
        }
    }
}