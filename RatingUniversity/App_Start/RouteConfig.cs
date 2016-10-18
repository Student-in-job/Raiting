using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace RatingUniversity
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { culture="ru", controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "KnowledgeAndQualificationController",
                url: "{controller}/{action}/year/{year}",
                defaults: new { /*controller="KnowledgeAndQualification", action = "AssessmentByTest", */culture="ru", year = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Jadval1Controller",
                url: "{controller}/{action}/page/{id}",
                defaults: new { controller = "Jadval1", action = "index" , culture = "ru", id = UrlParameter.Optional }
            );
        }

    }
}
