using System.Web.Mvc;

namespace StoreFront.UI.MVC.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            ViewBag.RenderCarousel = true;
            return View();
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
