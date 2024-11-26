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


        public ActionResult About()
        {
            return View();
        }



        public ActionResult Contact()
        {
            return View();
        }


        public ActionResult Login()
        {
            return View();
        }
        private const string AdminUsername = "admin";
        private const string AdminPassword = "password123";


        // POST: Menu/Login
        [HttpPost]
        public ActionResult Login(string Username, string Password)
        {
            // Replace with your actual authentication logic
            if (Username == "admin" && Password == "pass123")
            {
                // Successful login - redirect to Admin Landing page
                return RedirectToAction("CardG", "CardG", new { area = "Admin" });
            }
            else
            {
                // Failed login
                ViewBag.ErrorMessage = "Invalid username or password";
                return View();
            }
        }

        // GET: Menu/Logout
        public ActionResult Logout()
        {
            Session["IsAdmin"] = null;
            return RedirectToAction("Login");
        }
    }
}