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
        TAROTWEBEntities1 _db = new TAROTWEBEntities1();

        // GET: Reader
        public ActionResult Readers()
        {
            var v = from t in _db.readertables
                    select t;
            return View(v.ToList());
        }

        
        // Modify this action to accept 'name' from the URL
        public ActionResult getInfo(string name)
        {
            name = name.Replace("-", " ");
            // Find the reader by 'name'
            var reader = _db.readertables.FirstOrDefault(r => r.name == name);
            
            if (reader == null)
            {
                return HttpNotFound();
            }

            return View(reader);  // Return the reader details view
        }
    }

}