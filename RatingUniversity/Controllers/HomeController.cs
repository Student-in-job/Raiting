﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using RatingUniversity.Classes;

namespace RatingUniversity.Controllers
{
    public class HomeController : BaseViewController
    {
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
            //CultureInfo currentCulrute = Thread.CurrentThread.CurrentCulture;
            //ViewBag.lang = currentCulrute.Name.Substring(0, 5);
            int time = Functions.GetLeftTime(ConfigurationManager.AppSettings["endDate"]);
            ViewBag.Reverse = (time < 0) ? "false" : "true";
            time = (time < 0) ? -time : time;
            ViewBag.time = time;
            ViewBag.year = Convert.ToInt32(ConfigurationManager.AppSettings["startYear"]);
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