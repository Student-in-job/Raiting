using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

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
        }
		public void Init()
        {
           
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
        public void Dispose()
        {
            /*вызывается перед удалем объекта HTttpApplication, нужен для очистки ресурсов*/
        }
    }
}
