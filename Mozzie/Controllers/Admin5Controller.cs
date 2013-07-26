using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mozzie.Models;
using Mozzie.Data;

namespace Mozzie.Controllers
{
    public class Admin5Controller : Controller
    {
        //
        // GET: /Admin/

        public ActionResult Index()
        {
            if (Session["user"] == null)
            {
                return View("Login");
            }
            UserModel user = Session["user"] as UserModel;
            if (user != null)
            {
                ViewData["user_name"] = user.UserName;
            }
            else
            {
                ViewData["user_name"] = "iimax";
            }
            
            return View();
        }

        //
        // GET: /Admin/

        public ActionResult Login()
        {
            return View("Login");
        }

        //
        // POST: /Admin/Login
        [HttpPost]
        public ActionResult Login(UserModel model)
        {
            if (!ModelState.IsValid)
            {
                return View("Login", model);
            }
            //sun.Add(sonu);
            Session["user"] = model;
            ViewData["user"] = model;
            return RedirectToAction("Index");

            //return View();
        }

        //
        // GET: /Admin/Category
        // 分类目录列表
        public ActionResult Category()
        {
            //ViewData.Model
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem { Text = "无", Value = "" });
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
        // POST: /Admin/Category
        // 分类目录列表
        [HttpPost]
        public ActionResult Category(Category cate)
        {
            if (string.IsNullOrEmpty(cate.Name))
            {
                ModelState.AddModelError("Name", "请输入分类名称");
            }
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem { Text = "无", Value = "", Selected = true });
            Categories svc = new Categories();
            List<Category> cates = svc.List();
            if (cates != null && cates.Count > 0)
            {
                foreach (var item in cates)
                {
                    items.Add(new SelectListItem { Text = item.Name, Value = item.ID.ToString() });
                }
            }
            
            this.ViewData["list"] = items;

            if (!ModelState.IsValid)
            {
                return RedirectToAction("Category");
                //return View("Category", cate);
            }

            //Categories svc = new Categories();
            int i = svc.Create(cate);
            //return View("Category");
            return RedirectToAction("Category");
        }

        //
        // POST: /Admin/Login
        [HttpPost]
        public ActionResult AddCate(Category cate)
        {
            if (string.IsNullOrEmpty(cate.Name))
            {
                ModelState.AddModelError("Name", "请输入分类名称");
            }
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem { Text = "无", Value = "", Selected = true });
            Categories svc = new Categories();
            List<Category> cates = svc.List();
            if (cates != null && cates.Count > 0)
            {
                foreach (var item in cates)
                {
                    items.Add(new SelectListItem { Text = item.Name, Value = item.ID.ToString() });
                }
            }
            //items.Add(new SelectListItem { Text = "Jade", Value = "28", Selected = true });
            //items.Add(new SelectListItem { Text = "Yao", Value = "24" });
            this.ViewData["list"] = items;

            if (!ModelState.IsValid)
            {
                return RedirectToAction("Category");
                //return View("Category", cate);
            }
            
            //Categories svc = new Categories();
            int i = svc.Create(cate);
            return View("Category");
        }

        //
        // GET: /Admin/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Admin/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Admin/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Admin/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Admin/Edit/5

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
        // GET: /Admin/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Admin/Delete/5

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
