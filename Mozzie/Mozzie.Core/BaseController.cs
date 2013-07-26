using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;

namespace Mozzie.Core
{
    public class BaseController : Controller
    {
        public virtual void SetTitle(string title)
        {
            ViewData["Title"] = title;
        }


    }
}
