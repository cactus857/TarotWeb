using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    public class ReaderController : Controller
    {
        TAROTWEBEntities _db = new TAROTWEBEntities();
        // GET: Reader
        public ActionResult Readers()
        {
            var v = from t in _db.readertables
                    select t;
            return View(v.ToList());
        }
        public ActionResult getInfo(int id)
        {
            var v = _db.readertables.FirstOrDefault(r => r.id == id);
            return View(v);
        }
    }
}