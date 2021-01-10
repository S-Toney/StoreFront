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
    public class CategoriesController : Controller
    {
        private WritersSupplyEntities db = new WritersSupplyEntities();

        // GET: Categories
        public ActionResult Index()
        {
            return View(db.Categories.ToList());
        }

        // GET: Categories/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Category category = db.Categories.Find(id);
            if (category == null)
            {
                return HttpNotFound();
            }

            return View(category);
        }

        #region pre-Ajax code
 //// GET: Categories/Create
 //       public ActionResult Create()
 //       {
 //           return View();
 //       }

 //       // POST: Categories/Create
 //       // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
 //       // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
 //       [HttpPost]
 //       [ValidateAntiForgeryToken]
 //       public ActionResult Create([Bind(Include = "CategoryID,CategoryName")] Category category)
 //       {
 //           if (ModelState.IsValid)
 //           {
 //               db.Categories.Add(category);
 //               db.SaveChanges();
 //               return RedirectToAction("Index");
 //           }

 //           return View(category);
 //       }

 //       // GET: Categories/Edit/5
 //       public ActionResult Edit(int? id)
 //       {
 //           if (id == null)
 //           {
 //               return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
 //           }
 //           Category category = db.Categories.Find(id);
 //           if (category == null)
 //           {
 //               return HttpNotFound();
 //           }
 //           return View(category);
 //       }

 //       // POST: Categories/Edit/5
 //       // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
 //       // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
 //       [HttpPost]
 //       [ValidateAntiForgeryToken]
 //       public ActionResult Edit([Bind(Include = "CategoryID,CategoryName")] Category category)
 //       {
 //           if (ModelState.IsValid)
 //           {
 //               db.Entry(category).State = EntityState.Modified;
 //               db.SaveChanges();
 //               return RedirectToAction("Index");
 //           }
 //           return View(category);
 //       }

 //       // GET: Categories/Delete/5
 //       public ActionResult Delete(int? id)
 //       {
 //           if (id == null)
 //           {
 //               return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
 //           }
 //           Category category = db.Categories.Find(id);
 //           if (category == null)
 //           {
 //               return HttpNotFound();
 //           }
 //           return View(category);
 //       }

 //       // POST: Categories/Delete/5
 //       [HttpPost, ActionName("Delete")]
 //       [ValidateAntiForgeryToken]
 //       public ActionResult DeleteConfirmed(int id)
 //       {
 //           Category category = db.Categories.Find(id);
 //           db.Categories.Remove(category);
 //           db.SaveChanges();
 //           return RedirectToAction("Index");
 //       }

 //       protected override void Dispose(bool disposing)
 //       {
 //           if (disposing)
 //           {
 //               db.Dispose();
 //           }
 //           base.Dispose(disposing);
 //       }
        #endregion
       
        /* AJAX */
        [AcceptVerbs(HttpVerbs.Post)]
        public JsonResult AjaxDelete(int id)
        {
            Category category = db.Categories.Find(id);
            db.Categories.Remove(category);
            db.SaveChanges();

            return Json(new { id = id, message = string.Format($"The \"{category.CategoryName }\" category has been deleted from the database") });
        }

        //TODO partial view result?

        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult AjaxCreate(Category category)
        {
            db.Categories.Add(category);
            db.SaveChanges();
            return Json(category);
        }

        [HttpGet]
        public PartialViewResult CategoryEdit(int id)
        {
            Category category = db.Categories.Find(id);
            return PartialView(category);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public JsonResult AjaxEdit(Category category)
        {
            db.Entry(category).State = EntityState.Modified;
            db.SaveChanges();
            return Json(category);
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
