using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mozzie.Models;
using Mozzie.Data;

namespace Mozzie.Areas.Admin.Controllers
{
    public class CategoryController : Controller
    {
        //
        // GET: /Admin/Category/

        public ActionResult Index()
        {
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem { Text = "无", Value = "0", Selected = true });
            Categories svc = new Categories();
            List<Category> cates = svc.List();
            if (cates != null && cates.Count > 0)
            {
                foreach (var item in cates)
                {
                    items.Add(new SelectListItem { Text = item.Name, Value = item.ID.ToString() });
                }
            }
            ViewData["cates"] = cates;
            //items.Add(new SelectListItem { Text = "Jade", Value = "28", Selected = true });
            //items.Add(new SelectListItem { Text = "Yao", Value = "24" });
            this.ViewData["list"] = items;

            return View();
        }

        //
        // GET: /Admin/Category/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Admin/Category/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Admin/Category/Create

        [HttpPost]
        public ActionResult Create(Category cate)
        {
            try
            {
                if (cate == null)
                {
                    return RedirectToAction("Index");
                }
                if (string.IsNullOrEmpty(cate.Name))
                {
                    ModelState.AddModelError("Name", "请输入分类名称");
                }

                Categories svc = new Categories();

                //List<SelectListItem> items = new List<SelectListItem>();
                //items.Add(new SelectListItem { Text = "无", Value = "", Selected = true });
                
                //List<Category> cates = svc.List();
                //if (cates != null && cates.Count > 0)
                //{
                //    foreach (var item in cates)
                //    {
                //        items.Add(new SelectListItem { Text = item.Name, Value = item.ID.ToString() });
                //    }
                //}

                //this.ViewData["list"] = items;

                if (!ModelState.IsValid)
                {
                    return RedirectToAction("Index");
                    //return View("Category", cate);
                }

                //Categories svc = new Categories();
                int i = svc.Create(cate);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Admin/Category/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Admin/Category/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Admin/Category/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Admin/Category/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
