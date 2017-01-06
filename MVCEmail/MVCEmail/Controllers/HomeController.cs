/* */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/* 
 * Ext. Requare components
 */
using MVCEmail.Models;
using System.Net;
using System.Net.Mail;
using System.Web.Mvc;
using System.Threading.Tasks;

namespace MVCEmail.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Index(EmailFormModel model)
        {
            if (ModelState.IsValid)
            {
                var body = "<p>Email From: {0} ({1})</p><p>Message:</p><p>{2}</p>";
                var message = new MailMessage();
                message.To.Add(new MailAddress("test-email-box@umail.uz")); //replace with valid value
                message.Subject = "National Universities Ranking";
                message.Body = string.Format(body, model.FromName, model.FromEmail, model.Message);
                message.IsBodyHtml = true;
                using (var smtp = new SmtpClient())
                {
                    await smtp.SendMailAsync(message);
                    return RedirectToAction("Sent");
                }
            }
            return View(model);
        }

        public ActionResult Sent()
        {
            return View();
        }
    }
}