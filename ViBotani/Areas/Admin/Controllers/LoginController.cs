using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using ViBotani.Common;

namespace ViBotani.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        // GET: Admin/Login
        [HttpPost]
        public ActionResult Login(string Username,string Password)
        {
            if (Username == "admin" && Password == "admin")
            {
               
                var userSession = new UserLogin();
                userSession.UserName = Username;
               
                Session.Add(CommonConstants.USER_SESSION, userSession);
                return RedirectToAction("Index", "Home");
            }
               
            else
                {
                    ModelState.AddModelError("", "Đăng nhập không đúng .");
                }
            
            return View("Index");

        }
    }
}