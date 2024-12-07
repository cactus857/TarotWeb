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
    public class CardGController : Controller
    {
        // GET: Admin/CardG
        TAROTWEBEntities1 _db = new TAROTWEBEntities1();
        public ActionResult CardG()
        {
            var v = from t in _db.cardtables
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
        public ActionResult Create(cardtable ct, HttpPostedFileBase link)
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

                    _db.cardtables.Add(ct);
                    _db.SaveChanges();
                    return RedirectToAction("CardG");
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
        public ActionResult Edit(string name)
        {
            // Replace hyphens with spaces to match the format stored in the database (if needed)
            name = name.Replace("-", " ");

            var card = _db.cardtables.FirstOrDefault(c => c.name.ToLower() == name.ToLower());

            if (card == null)
            {
                return HttpNotFound(); // If no card is found, return 404
            }

            return View(card); // Pass the card to the view
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(cardtable ct, HttpPostedFileBase link)
        {
            cardtable cte = _db.cardtables.Find(ct.id);
       
     
      


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
                        path = Path.Combine(Server.MapPath("~/Content/images/major-arcana/"), filename);
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
                    return RedirectToAction("CardG");

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
            cardtable ct = _db.cardtables.Find(id);
            return View(ct);
        }
        [HttpPost]
        public ActionResult Delete(int id, string name)
        {
            name = name.Replace("-", " "); // Convert hyphens back to spaces
            var card = _db.cardtables.FirstOrDefault(c => c.id == id);

            if (card == null)
            {
                return HttpNotFound();
            }

            _db.cardtables.Remove(card);
            _db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}