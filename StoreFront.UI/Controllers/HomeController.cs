using System.Web.Mvc;

namespace StoreFront.UI.MVC.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [Authorize]
        public ActionResult About()
        {

            return View();
        }

        [HttpGet]
        public ActionResult Contact()
        {

            return View();
        }

        [HttpGet]
        public ActionResult Checkout()
        {      

            return View();
        }

        [HttpGet]
        public ActionResult Products()
        {

            return View();
        }
    }
}
