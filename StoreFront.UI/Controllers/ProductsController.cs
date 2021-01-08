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

namespace StoreFront.UI.Controllers
{
    public class ProductsController : Controller
    {
        private WritersSupplyEntities db = new WritersSupplyEntities();

        // GET: Products
        public ActionResult Index()
        {
            var products = db.Products.Include(p => p.Availability1).Include(p => p.Category).Include(p => p.Manufacturer);
            return View(products.ToList());
        }

        // GET: Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }
        //}

        //public ActionResult Tablets()
        //{
            //var tabletName = from products in db.Products.Include(p => p.Category).Include(p => p.Manufacturer)
            //                 where products.Category.CategoryID == 1
            //                 select products.ProductName;

            //var tabletImg = from products in db.Products.Include(p => p.Category).Include(p => p.Manufacturer)
            //                where products.Category.CategoryID == 1
            //                select products.Image;
           
        

        //TODONE Add to Cart Functionality - Step 3
        [HttpPost]
        public ActionResult AddToCart(int qty, int productID)
        {
            Dictionary<int, CartItemViewModel> shoppingCart = null;
            if (Session["cart"] != null)
            {
                shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];
            }
            else
            {
                shoppingCart = new Dictionary<int, CartItemViewModel>();
            }

            Product product = db.Products.Where(p => p.ProductID == productID).FirstOrDefault();
            if (product == null)
            {
                return RedirectToAction("Index");
            }
            else
            {
                CartItemViewModel item = new CartItemViewModel(qty, product);
                if (shoppingCart.ContainsKey(product.ProductID))
                {
                    shoppingCart[product.ProductID].Qty += qty;
                }
                else
                {
                    shoppingCart.Add(product.ProductID, item);
                }
                Session["cart"] = shoppingCart;

                Session["confirm"] = $"'{product.ProductName}' (Quantity: {qty}) added to cart";
            }

            return RedirectToAction("Index", "ShoppingCart");
        }

        // GET: Products/Create
        public ActionResult Create()
        {
            ViewBag.Availability = new SelectList(db.Availabilities, "AvailabilityID", "Status");
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName");
            ViewBag.ManufacturerID = new SelectList(db.Manufacturers, "ManufacturerID", "ManufacturerName");
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductID,ProductName,ManufacturerID,Price,Availability,Description,Image,Size,CategoryID,OS")] Product product, HttpPostedFileBase productImg)
        {
            if (ModelState.IsValid)
            {
                #region File Upload
                //TODONE File Upload
                string file = "NoImage.png";

                if (productImg != null)
                {
                    file = productImg.FileName;
                    string ext = file.Substring(file.LastIndexOf('.'));
                    string[] goodExts = { ".jpeg", ".jpg", ".png", ".gif" };

                    if (goodExts.Contains(ext))
                    {
                        if (productImg.ContentLength <= 4194304)
                        {
                            file = Guid.NewGuid() + ext;

                            #region Resize Image
                            string savePath = Server.MapPath("~/Content/img/");
                            Image convertedImage = Image.FromStream(productImg.InputStream);
                            int maxImageSize = 500;
                            int maxThumbSize = 100;
                            ImageService.ResizeImage(savePath, file, convertedImage, maxImageSize, maxThumbSize);
                            #endregion
                        }
                        product.Image = file;
                    }
                }
                #endregion
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Availability = new SelectList(db.Availabilities, "AvailabilityID", "Status", product.Availability);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            ViewBag.ManufacturerID = new SelectList(db.Manufacturers, "ManufacturerID", "ManufacturerName", product.ManufacturerID);
            return View(product);
        }

        // GET: Products/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.Availability = new SelectList(db.Availabilities, "AvailabilityID", "Status", product.Availability);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            ViewBag.ManufacturerID = new SelectList(db.Manufacturers, "ManufacturerID", "ManufacturerName", product.ManufacturerID);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductID,ProductName,ManufacturerID,Price,Availability,Description,Image,Size,CategoryID,OS")] Product product, HttpPostedFileBase productImg)
        {
            if (ModelState.IsValid)
            {
                #region File Upload
                //TODONE File Upload
                string file = "NoImage.png";
                if (productImg != null)
                {
                    file = productImg.FileName;
                    string ext = file.Substring(file.LastIndexOf('.'));
                    string[] goodExts = { ".jpeg", ".jpg", ".png", ".gif" };
                    if (goodExts.Contains(ext))
                    {
                        if (productImg.ContentLength <= 4194304)
                        {
                            file = Guid.NewGuid() + ext;

                            #region Resize Image
                            string savePath = Server.MapPath("~/Content/img/");
                            Image convertedImage = Image.FromStream(productImg.InputStream);

                            int maxImageSize = 500;
                            int maxThumbSize = 100;

                            ImageService.ResizeImage(savePath, file, convertedImage, maxImageSize, maxThumbSize);
                            #endregion

                            if (product.Image != null && product.Image != "NoImage.png")
                            {
                                string path = Server.MapPath("~/Content/img/");
                                ImageService.Delete(path, product.Image);
                            }
                        }
                        product.Image = file;
                    }
                }
                #endregion
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Availability = new SelectList(db.Availabilities, "AvailabilityID", "Status", product.Availability);
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryName", product.CategoryID);
            ViewBag.ManufacturerID = new SelectList(db.Manufacturers, "ManufacturerID", "ManufacturerName", product.ManufacturerID);
            return View(product);
        }

        // GET: Products/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Products.Find(id);
            //TODONE ImageService Code for Delete
            string path = Server.MapPath("~/Content/img/");
            ImageService.Delete(path, product.Image);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
