using System.Web.Mvc;

public class AdminAreaRegistration : AreaRegistration
{
    public override string AreaName
    {
        get { return "Admin"; }
    }

    public override void RegisterArea(AreaRegistrationContext context)
    {
        context.MapRoute(
            "Admin_default",
            "Admin/{controller}/{action}/{id}",
            new {Controller="Default", action = "Index", id = UrlParameter.Optional }
        );

        context.MapRoute(
        "Admin_CardGActions", // Name of the route
        "Admin/CardG/{action}/{name}", // Route pattern
        new { controller = "CardG", action = "Edit", name = UrlParameter.Optional }, // Default values
        constraints: new { action = "edit|delete", name = @"[a-zA-Z0-9\-]+" } // Constraints for action and name
    );

    }


}
