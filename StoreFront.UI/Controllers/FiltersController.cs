using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StoreFront.DATA.EF;
using System.Data;
using System.Data.Entity;

namespace StoreFront.UI.Controllers
{
    public class FiltersController : Controller
    {
        private WritersSupplyEntities db = new WritersSupplyEntities();


        // GET: Filters
        public ActionResult CSFilteredProductIndex()
        {
            var products = db.Products;
            return View(products.ToList());
        }
    }
}