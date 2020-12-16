using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using StoreFront.DATA.EF;

namespace StoreFront.UI.Controllers
{
    public class ProductWritingTypesController : Controller
    {
        private WritersSupplyEntities db = new WritersSupplyEntities();

        // GET: ProductWritingTypes
        public ActionResult Index()
        {
            var productWritingTypes = db.ProductWritingTypes.Include(p => p.Product).Include(p => p.WritingType);
            return View(productWritingTypes.ToList());
        }

        // GET: ProductWritingTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductWritingType productWritingType = db.ProductWritingTypes.Find(id);
            if (productWritingType == null)
            {
                return HttpNotFound();
            }
            return View(productWritingType);
        }

        // GET: ProductWritingTypes/Create
        public ActionResult Create()
        {
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProductName");
            ViewBag.WTypeId = new SelectList(db.WritingTypes, "WTypeID", "WTypeName");
            return View();
        }

        // POST: ProductWritingTypes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PWTypeID,ProductID,WTypeId")] ProductWritingType productWritingType)
        {
            if (ModelState.IsValid)
            {
                db.ProductWritingTypes.Add(productWritingType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProductName", productWritingType.ProductID);
            ViewBag.WTypeId = new SelectList(db.WritingTypes, "WTypeID", "WTypeName", productWritingType.WTypeId);
            return View(productWritingType);
        }

        // GET: ProductWritingTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductWritingType productWritingType = db.ProductWritingTypes.Find(id);
            if (productWritingType == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProductName", productWritingType.ProductID);
            ViewBag.WTypeId = new SelectList(db.WritingTypes, "WTypeID", "WTypeName", productWritingType.WTypeId);
            return View(productWritingType);
        }

        // POST: ProductWritingTypes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PWTypeID,ProductID,WTypeId")] ProductWritingType productWritingType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(productWritingType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProductName", productWritingType.ProductID);
            ViewBag.WTypeId = new SelectList(db.WritingTypes, "WTypeID", "WTypeName", productWritingType.WTypeId);
            return View(productWritingType);
        }

        // GET: ProductWritingTypes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductWritingType productWritingType = db.ProductWritingTypes.Find(id);
            if (productWritingType == null)
            {
                return HttpNotFound();
            }
            return View(productWritingType);
        }

        // POST: ProductWritingTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProductWritingType productWritingType = db.ProductWritingTypes.Find(id);
            db.ProductWritingTypes.Remove(productWritingType);
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
