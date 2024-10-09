using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.Models;
using System.Web.Mvc;

namespace WebApplication2.Controllers
{
    public class CardController : Controller
    {
        TAROTWEBEntities _db= new TAROTWEBEntities();
        // GET: Card
        public ActionResult TarotOnline()
        {
            var v= from t in _db.cardtables
                   select t;
            return View(v.ToList());
        }

    }
}