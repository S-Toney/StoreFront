using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StoreFront.UI.Exceptions;

namespace StoreFront.UI.Controllers
{
    public class ErrorsController : Controller
    {
        // GET: Errors
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Unresolved()
        {
            return View();

        }

        public ActionResult DBTest()
        {
            try
            {
                bool dbCheck = false; //toggle the value to test
                if (dbCheck)
                {
                    return View();
                }
                else
                {
                    throw new DBOfflieException();
                }
            }
            catch (Exception)
            {
                return RedirectToAction("DBOffline");
            }
        }

        public ActionResult DBOffline()
        {
            return View();
        }

        public ActionResult Throw404()
        {
            return View();
        }

        public ActionResult NotFound()
        {
            return View();
        }

        public ActionResult BadRequest()
        {
            return View();
        }

        public ActionResult Undeliverable()
        {
            return View();
        }
    }
}