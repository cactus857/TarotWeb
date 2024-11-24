using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;

namespace WebApplication2.Areas.Admin.Controllers
{
    public class CardWController : Controller
    {
        // GET: Admin/CardW
        TAROTWEBEntities1 _db = new TAROTWEBEntities1();
        public ActionResult CardW()
        {
            var v = from t in _db.cardtable_wands
                    select t;
            return View(v.ToList());
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create(cardtable_wands ct, HttpPostedFileBase link)
        {
            try
            {
                var path = "";
                var filename = "";
                if (ModelState.IsValid)
                {
                    if (link != null)
                    {
                        filename = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss-") + link.FileName;
                        path = Path.Combine(Server.MapPath("~/Content/images/wands/"), filename);
                        link.SaveAs(path);
                        ct.link = filename;
                    }
                    else
                    {
                        ct.link = "logo.png";
                    }

                    _db.cardtable_wands.Add(ct);
                    _db.SaveChanges();
                    return RedirectToAction("CardW");
                }
            }
            catch (DbEntityValidationException e)
            {
                throw e;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return View(ct);
        }
        public ActionResult Edit(int id)
        {
            cardtable_wands ct = _db.cardtable_wands.Find(id);
            return View(ct);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(cardtable_wands ct, HttpPostedFileBase link)
        {
            cardtable_wands cte = _db.cardtable_wands.Find(ct.id);

            //cte.link = ct.link;
            try
            {
                var path = "";
                var filename = "";
                if (ModelState.IsValid)
                {
                    if (link != null)
                    {
                        filename = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss-") + link.FileName;
                        path = Path.Combine(Server.MapPath("~/Content/images/wands/"), filename);
                        link.SaveAs(path);
                        cte.link = filename;
                    }
                    cte.name = ct.name;
                    cte.detail_r = ct.detail_r;
                    cte.detail_u = ct.detail_u;
                    cte.descripsion_u = ct.descripsion_u;
                    cte.descripsion_r = ct.descripsion_r;
                    cte.alt = ct.alt;
                    _db.SaveChanges();
                    return RedirectToAction("CardW");

                }
            }
            catch (DbEntityValidationException e)
            {
                throw e;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return View(cte);
        }
        public ActionResult Delete(int? id)
        {
            cardtable_wands ct = _db.cardtable_wands.Find(id);
            return View(ct);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            cardtable_wands ct = _db.cardtable_wands.Find(id);
            _db.cardtable_wands.Remove(ct);
            _db.SaveChanges();
            return RedirectToAction("CardW");
        }
    }
}