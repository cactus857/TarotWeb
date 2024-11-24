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
    public class CardUController : Controller
    {
        // GET: Admin/CardU
        TAROTWEBEntities1 _db = new TAROTWEBEntities1();
        public ActionResult CardU()
        {
            var v = from t in _db.cardtable_use
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
        public ActionResult Create(cardtable_use ct, HttpPostedFileBase link)
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
                        path = Path.Combine(Server.MapPath("~/Content/images/major-arcana/"), filename);
                        link.SaveAs(path);
                        ct.link = filename;
                    }
                    else
                    {
                        ct.link = "logo.png";
                    }

                    _db.cardtable_use.Add(ct);
                    _db.SaveChanges();
                    return RedirectToAction("CardU");
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
            cardtable_use ct = _db.cardtable_use.Find(id);
            return View(ct);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(cardtable_use ct, HttpPostedFileBase link)
        {
            cardtable_use cte = _db.cardtable_use.Find(ct.id);

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
                        path = Path.Combine(Server.MapPath("~/Content/images/cups/"), filename);
                        link.SaveAs(path);
                        cte.link = filename;
                    }
                    cte.name = ct.name;
                    cte.advice = ct.advice;
                    cte.obstacle = ct.obstacle;
                    cte.situation = ct.situation;
                    _db.SaveChanges();
                    return RedirectToAction("CardU");

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
            cardtable_use ct = _db.cardtable_use.Find(id);
            return View(ct);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            cardtable_use ct = _db.cardtable_use.Find(id);
            _db.cardtable_use.Remove(ct);
            _db.SaveChanges();
            return RedirectToAction("CardU");
        }
    }
}