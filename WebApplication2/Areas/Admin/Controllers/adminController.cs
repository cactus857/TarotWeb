using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication2.Areas.Admin.Controllers
{
    public class adminController : Controller
    {
        // GET: Admin/admin
        public ActionResult AdminLanding()
        {
            return View();
        }
    }
}