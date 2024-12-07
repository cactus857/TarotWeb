using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using WebApplication2.Models;

namespace WebApplication2.Areas.Admin.Controllers
{
    public class CardPController : Controller
    {
        // GET: Admin/CardP
        TAROTWEBEntities1 _db = new TAROTWEBEntities1();
        public ActionResult CardP()
        {


            var v = from t in _db.cardtable_pentacles
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
        public ActionResult Create(cardtable_pentacles ct, HttpPostedFileBase link)
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
                        path = Path.Combine(Server.MapPath("~/Content/images/pentacles/"), filename);
                        link.SaveAs(path);
                        ct.link = filename;
                    }
                    else
                    {
                        ct.link = "logo.png";
                    }

                    _db.cardtable_pentacles.Add(ct);
                    _db.SaveChanges();
                    return RedirectToAction("CardP");
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
            
            cardtable_pentacles ct = _db.cardtable_pentacles.Find(id);
            return View(ct);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(cardtable_pentacles ct, HttpPostedFileBase link)
        {
            cardtable_pentacles cte = _db.cardtable_pentacles.Find(ct.id);

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
                        path = Path.Combine(Server.MapPath("~/Content/images/pentacles/"), filename);
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
                    return RedirectToAction("CardP");

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
            cardtable_pentacles ct = _db.cardtable_pentacles.Find(id);
            return View(ct);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            cardtable_pentacles ct = _db.cardtable_pentacles.Find(id);
            _db.cardtable_pentacles.Remove(ct);
            _db.SaveChanges();
            return RedirectToAction("CardP");
        }
    }
}