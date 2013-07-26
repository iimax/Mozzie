using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mozzie.Core;

namespace Mozzie.Controllers
{
    [HandleError]
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            SetTitle("Welcome to ASP.NET MVC!");

            ViewData["Message"] = "Welcome to ASP.NET MVC!";
            //ViewData["Title"] = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public override void SetTitle(string title)
        {
            base.SetTitle(title);
        }
    }
}
