using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using StoreFront.DATA.EF;
using System.Drawing; //Image
using StoreFront.UI.MVC.Models;
using StoreFront.UI.Utilities;//Gives us access to the ImageService.cs
using StoreFront.UI.Models;
using System.Net.Mail;

namespace StoreFront.UI.MVC.Controllers
{
    public class HomeController : Controller
    {
        
        private WritersSupplyEntities db = new WritersSupplyEntities();

        // GET: Products
        [HttpGet]
        public ActionResult Index()
        {
            ViewBag.RenderCarousel = true;
            var products = db.Products.Include(p => p.Availability1).Include(p => p.Category).Include(p => p.Manufacturer);
            return View(products.ToList());
        }

        [HttpGet]
        //[Authorize] This was causing login to be required to see about page
        public ActionResult About()
        {
            ViewBag.RenderCarousel = true;
            return View();
        }

        [HttpGet]
        public ActionResult Contact()
        {
            ViewBag.RenderCarousel = true;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Contact(ContactViewModel cvm)
        {
            if (!ModelState.IsValid)
            {
                return View(cvm);
            }

            string emailBody = $"You have recieved an email from {cvm.FirstName} {cvm.LastName}<br /><br /> About {cvm.Subject}<br /><br />Message: {cvm.Message}<br /><br /> Please respond to {cvm.Email}";

            MailMessage msg = new MailMessage
                (
                //From
                "no-reply@tessatoney.com",
                //To (Where the actual message is sent)
                "stacy.toney@protonmail.com",
                //Subject
                "Email from Writer's Supply Contact Form",
                //Body
                emailBody
                );

            msg.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("mail.tessatoney.com");
            client.Credentials = new NetworkCredential("no-reply@tessatoney.com", "20Cen$us20");//change to ******* before pushing to GitHub but use password for deploy
            // SmptClient port = new SmtpClient("smtp.Port = 8889;");
            try
            {
                client.Send(msg);
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = $"Sorry, something went wrong. Error Message: {ex.Message}<br />{ex.StackTrace}";
                return View(cvm);
            }

            return View("EmailConfirmation", cvm);
        }

        [HttpGet]
        public ActionResult Checkout()
        {
            ViewBag.RenderCarousel = true;
            return View();
        }

        [HttpGet]
        public ActionResult Products()
        {
            ViewBag.RenderCarousel = true;
            return View();
        }
    }
}
