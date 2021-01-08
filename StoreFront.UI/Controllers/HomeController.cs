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
