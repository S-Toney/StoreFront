using StoreFront.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StoreFront.UI.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart
        public ActionResult Index()
        {
            var shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];
            if (shoppingCart == null || shoppingCart.Count == 0)
            {
                shoppingCart = new Dictionary<int, CartItemViewModel>();
                ViewBag.Message = "There are not items in your cart.";
            }
            else
            {
                ViewBag.Message = null;//explicitly clears out variable
            }
            return View(shoppingCart);
        }

        public ActionResult RemoveFromCart(int id)
        {
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            shoppingCart.Remove(id);

            Session["cart"] = shoppingCart;

            if (shoppingCart.Count == 0)
            {
                ViewBag.Message = "You've deleted all of the items in your cart.";
            }

            return RedirectToAction("Index");
        }

        public ActionResult UpdateCart(int productID, int qty)
        {
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            shoppingCart[productID].Qty = qty;

            Session["cart"] = shoppingCart;

            return RedirectToAction("Index");
        }

        /*  Session Information  
            Set the expire timeout for the session*/
        //Session.Timeout = 30;
        /*  Configure the notification to automatically show 1 min before session expiration  */
        //RadNotification1.ShowInterval = (Session.Timeoug - 1) * 60 * 1000;
        /*  Set the redirect url as a value for an easier and faster extraction in the client  */
        //RadNotification.Value = Page.ResolveClientUrl(DataCommon.GetPathForURL() + "custom error page location"

    }
}