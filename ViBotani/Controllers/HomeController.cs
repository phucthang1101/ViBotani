using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using ViBotani.Models;
namespace ViBotani.Controllers
{
    
    public class HomeController : Controller
    {
        private VibotaniDBEntities2 db = new VibotaniDBEntities2();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
           

            return View();
        }
        public ActionResult Product(string Meta_Kindof=null)
        {
            using (var context = new VibotaniDBEntities2())
            {
                List<Product> data = new List<Product>();
                if (Meta_Kindof == null)
                    data = context.Products.SqlQuery("SELECT * FROM dbo.Product").OrderBy(x => x.ID).ToList();
                else
                    data = context.Products.SqlQuery("[dbo].[SelectProduct] @Meta_Kindof", new SqlParameter("Meta_Kindof", Meta_Kindof)).OrderByDescending(x => x.ID).ToList();
                return View(data);

            }
        }
        /*public ActionResult TrangMat()
        //{
            

        //    return View();
        //}
        //public ActionResult TrangCapToc()
        //{
           

        //    return View();
        //}
        //public ActionResult TrangToanThan()
        //{
          

        //    return View();
        //}*/
        public ActionResult Skin_Advisory()
        {
            using (var context = new VibotaniDBEntities2())
            {
                List<News> data = context.News.SqlQuery("SELECT * FROM dbo.News WHERE Category=N'Tư vấn da'").OrderBy(x => x.ID).ToList();

                return View(data);
            }
        
        }
        public ActionResult Skin_Advisory_Post(int id)
        {
            News post = db.News.Find(id);
            if (post == null)
            {
                return HttpNotFound();
            }
            
            ViewBag.Post = post;
            return View();
        }
        public ActionResult Advisory()
        {
           

            return View();
        }
        public ActionResult News()
        {
            List<News> tempContent = db.News.OrderBy(x => x.ID).ToList();
            // List<YuriContentCategory> tempCategory = db.YuriContentCategories.ToList();
            /* List<YuriContent> ContentList = db.YuriContents.Select(x => new YuriContent
             {
                 Name = x.Name,
                 Description = x.Description
             }).ToList();*/
            return View(tempContent);
        }
        public ActionResult Post( int id)
        {

            //YuriContent yuriContent = db.YuriContents.Where(x=>x.MetaTitle==Metatitle).FirstOrDefault();   
            News post = db.News.Find(id);
            if (post == null)
            {
                return HttpNotFound();
            }
            List<News> tempContent = db.News.OrderBy(x => x.ID).ToList();
            ViewBag.Post = post;
            return View(tempContent);
        }

        public ActionResult ProductInfomation(int id)
        {
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.Product = product;
            if (product.List_Image == null) product.List_Image = "";
            MatchCollection m = Regex.Matches(product.List_Image, "src\\s*=\\s*['\"](?<src>[^'\"]*)['\"]");
           
            string[] arr = new string[m.Count];
            for (int i=0;i<m.Count;i++)
            {
                arr[i] = m[i].Groups["src"].Value;
            }

            return View(arr);
        }
        public ActionResult Blog_List()
        {

            return View();

        }
        public ActionResult Blog()
        {
          

            return View();
        }
        public ActionResult Question()
        {
           

            return View();
        }
        public ActionResult Contact()
        {
           

            return View();
        }
       /* public ActionResult postSanxuatISO()
        {
            
            return View();
        }
        public ActionResult postDaotaonhansu()
        {
             return View();
        }
        public ActionResult VibotaniTochucTungHangLienTuc()
        {
            return View();
        }
        public ActionResult CongThucDuonTrangDa()
        {
            return View();
        }
        public ActionResult KhamPhaQuyenNangLamTrangDa()
        {
            return View();
        }
        public ActionResult ThucHuChuyenLamDep()
        {
            return View();
        }
        public ActionResult BiKipDuongTrangHongTuNhien()
        {
            return View();
        }
        */
    }
}