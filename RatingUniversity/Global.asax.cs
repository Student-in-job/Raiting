﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Data.Entity;
using RatingUniversity.Models;

namespace RatingUniversity
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
			AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            Database.SetInitializer<TablesContext>(null);//for modify models

/*			TestContext db = new TestContext();
			db.Monitoring.Add(new Monitoring() { J1 = 9, Year = 2015, UniverId = 4 });
			db.SaveChanges();
 */           
        }

        protected void Application_AcquireRequestState(object sender, EventArgs e)
        {
            var handler = Context.Handler as MvcHandler;
            var routeData = handler != null ? handler.RequestContext.RouteData : null;
            var routeCulture = routeData != null ? routeData.Values["culture"].ToString() : null;
            var languageCookie = HttpContext.Current.Request.Cookies["lang"];
            var userLanguages = HttpContext.Current.Request.UserLanguages;

            // Set the Culture based on a route, a cookie or the browser settings,
            // or default value if something went wrong
            var cultureInfo = new System.Globalization.CultureInfo(
                routeCulture ?? (languageCookie != null
                   ? languageCookie.Value
                   : userLanguages != null
                       ? userLanguages[0]
                       : "ru")
            );
            System.Threading.Thread.CurrentThread.CurrentUICulture = cultureInfo;
            System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture(cultureInfo.Name);
        }

        protected void Application_Error()
        {
            /*на случай не обработанных исключений*/
        }
        protected void Session_Start()
        {
            /*при обращении нового пользователя*/
        }
        protected void Session_End()
        {
            /*срабатывает после истечения сессии*/
        }
        protected void AuthetenticateRequest()
        {
            /*срабатывает после подтверждения личности*/
        }
        protected void AuthorizeRequest()
        {
            /*срабатывает после подтверждения доступа к ресурсам*/
        }
        public override void Dispose()
        {
            /*вызывается перед удалем объекта HTttpApplication, нужен для очистки ресурсов*/
        }
    }
}
