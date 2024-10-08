using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;
namespace WebApplication2.Controllers
{
    
    public class MenuController : Controller
    {
        

        // GET: Menu
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult getMenu()
        {
            return PartialView();
        }
        public ActionResult Readers()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }


        public ActionResult TarotOnline()
        {
           
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult InfoReader()
        {
            return View();
        }
        public ActionResult Test()
        {
            return View();
        }
    }
}