using System; // omogućuje se namespace deklaracija
using System.Collections.Generic; // interface + klase koje definiraju generičke skupine
using System.Linq; // omogućuje klase i sučelje koji koriste Language Integrated Query(LINQ)
using System.Web; // omogućuje komunikaciju sa pretraživačem
using System.Web.Mvc; //omogućuje komunikaciju MVC-u na webu
using System.Web.Routing; //sadrži opcije i metode za definiranje ruta

namespace Zadatak_1  // pripada Zadatak_1 (projekt)
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "TvrtkaController", action = "Index", id = UrlParameter.Optional } 
                //primarna ruta za kontroler kojeg smo naknadno doali vodi na stranicu Index, ovdje je definirano što se treba otvoriti
            );
        }
    }
}
