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
        TAROTWEBEntities1 _db= new TAROTWEBEntities1();
        CardsModel cards= new CardsModel();
        // GET: Card
        public ActionResult TarotOnline()
        {
            cards.cardtables= _db.cardtables.ToList();
            cards.cardtables_cups= _db.cardtable_cups.ToList();
            cards.cardtables_swords = _db.cardtable_swords.ToList();
            cards.cardtables_pentacles = _db.cardtable_pentacles.ToList();
            cards.cardtables_wands = _db.cardtable_wands.ToList();
            cards.cardtables_uses = _db.cardtable_use.ToList();
            return View(cards);
        }

    }
}