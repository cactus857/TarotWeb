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
    public class ManaReaderController : Controller
    {
        // GET: Admin/ManaReader
        TAROTWEBEntities1 _db = new TAROTWEBEntities1();
        public ActionResult ManaReader()
        {
            var v = from t in _db.readertables
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
        public ActionResult Create(readertable ct, HttpPostedFileBase img)
        {
            try
            {
                var path = "";
                var filename = "";
                if (ModelState.IsValid)
                {
                    if (img != null)
                    {
                        filename = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss-") + img.FileName;
                        path = Path.Combine(Server.MapPath("~/Content/images/"), filename);
                        img.SaveAs(path);
                        ct.img = filename;
                    }
                    else
                    {
                        ct.img = "logo.png";
                    }

                    _db.readertables.Add(ct);
                    _db.SaveChanges();
                    return RedirectToAction("ManaReader");
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
            readertable ct = _db.readertables.Find(id);
            return View(ct);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(readertable ct, HttpPostedFileBase img)
        {
            readertable cte = _db.readertables.Find(ct.id);

            //cte.link = ct.link;
            try
            {
                var path = "";
                var filename = "";
                if (ModelState.IsValid)
                {
                    if (img != null)
                    {
                        filename = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss-") + img.FileName;
                        path = Path.Combine(Server.MapPath("~/Content/images/"), filename);
                        img.SaveAs(path);
                        cte.img = filename;
                    }
                    cte.name = ct.name;
                    cte.address = ct.address;
                    cte.position = ct.position;
                    cte.detail_1 = ct.detail_1;
                    cte.detail_2 = ct.detail_2;
                    cte.detail_3 = ct.detail_3;
                    cte.detail_4 = ct.detail_4;
                    cte.link = ct.link; 
                    cte.phone = ct.phone;
                    
                    _db.SaveChanges();
                    return RedirectToAction("ManaReader");

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
            readertable ct = _db.readertables.Find(id);
            return View(ct);
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            readertable ct = _db.readertables.Find(id);
            _db.readertables.Remove(ct);
            _db.SaveChanges();
            return RedirectToAction("ManaReader");
        }
    }
}