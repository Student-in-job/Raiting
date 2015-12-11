using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Threading;
using System.Globalization;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using RatingUniversity.Models;

namespace RatingUniversity.Controllers
{
    public class BaseViewController : Controller
    {
        protected int id;

        protected string userName;
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

            var store = new UserStore<ApplicationUser>(new ApplicationDbContext());
            var userManager = new UserManager<ApplicationUser>(store);
            ApplicationUser user = userManager.FindByIdAsync(User.Identity.GetUserId()).Result;
            ViewBag.isAdmin = false;
            ViewBag.isUser = false;
            if (user != null)
            {
                this.id = user.University_ID;
                this.userName = user.UserName;
                foreach (string role in userManager.GetRoles(user.Id))
                {
                    if (role == "admin")
                    {
                        ViewBag.isAdmin = true;
                    }
                    else if (role == "user")
                    {
                        ViewBag.isUser = true;
                    }
                }
            }
        }
        
        //
        // GET: /BaseView/
        public virtual ActionResult Index()
        {
            return View();
        }
	}
}