using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace WebApplication2
{
    public class RouteConfig
    {

        public static void RegisterRoutes(RouteCollection routes)
        {
            
         routes.IgnoreRoute("{resource}.axd/{*pathInfo}");


            // Route for /menu/index
            routes.MapRoute(
                name: "MenuIndex",
                url: "home",
                defaults: new { controller = "Menu", action = "Index" }
            );

            // Route for /menu/about
            routes.MapRoute(
                name: "MenuAbout",
                url: "about",
                defaults: new { controller = "Menu", action = "About" }
            );

            // Route for /card/tarotonline
            routes.MapRoute(
                name: "CardTarotOnline",
                url: "tarotonline",
                defaults: new { controller = "Card", action = "TarotOnline" }
            );

            // Route for /menu/contact
            routes.MapRoute(
                name: "MenuContact",
                url: "contact",
                defaults: new { controller = "Menu", action = "Contact" }
            );

            // Route for /menu/login
            routes.MapRoute(
                name: "MenuLogin",
                url: "login",
                defaults: new { controller = "Menu", action = "Login" }
            );
            routes.MapRoute(
            name: "ReaderList",
            url: "reader",
            defaults: new { controller = "Reader", action = "Readers" }
        );

            // Route for /Reader/{name} to go to the 'getInfo' action in the Reader controller
            routes.MapRoute(
                name: "Reader",
                url: "reader/{name}",
                defaults: new { controller = "Reader", action = "getInfo", name = UrlParameter.Optional },
                constraints: new { name = @"[a-zA-Z0-9\-]+" }  // Optionally, limit to alphanumeric and hyphen
            );
            


            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Menu", action = "Index", id = UrlParameter.Optional }
            );
            





        }


    }
}
