using System.Web.Mvc;
using System.Web.Routing;

namespace ViBotani
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "gioithieu",
                url: "gioi-thieu",
                defaults: new { controller = "Home", action = "About", id = UrlParameter.Optional },
                 namespaces: new[] { "ViBotani.Controllers" }
            );
            routes.MapRoute(
            name: "ProductInfomation",
            url: "{Meta_Kindof}/{Metatitle}/{id}",
            defaults: new { controller = "Home", action = "ProductInfomation" },
             namespaces: new[] { "ViBotani.Controllers" }

        );
            routes.MapRoute(
           name: "post",
           url: "tin-tuc/{Metatitle}/{id}",
           defaults: new { controller = "Home", action = "Post" },
           namespaces: new[] { "ViBotani.Controllers" }
       );
            routes.MapRoute(
                name: "tintuc",
                url: "tin-tuc",
                defaults: new { controller = "Home", action = "News", id = UrlParameter.Optional },
                 namespaces: new[] { "ViBotani.Controllers" }
            );
            routes.MapRoute(
               name: "tuvanda",
               url: "tu-van-da",
               defaults: new { controller = "Home", action = "Advisory", id = UrlParameter.Optional },
                namespaces: new[] { "ViBotani.Controllers" }
           );
            routes.MapRoute(
               name: "sanphamtrangda",
               url: "san-pham-trang-da",
               defaults: new { controller = "Home", action = "Product", id = UrlParameter.Optional },
                namespaces: new[] { "ViBotani.Controllers" }

           );
           

            routes.MapRoute(
               name: "trangmat",
               url: "san-pham-trang-da/trang-mat",
               defaults: new { controller = "Home", action = "TrangMat", id = UrlParameter.Optional }

          );
            routes.MapRoute(
              name: "trangcaptoc",
              url: "san-pham-trang-da/trang-cap-toc",
              defaults: new { controller = "Home", action = "TrangCapToc", id = UrlParameter.Optional }
          );
            routes.MapRoute(
              name: "trangtoanthan",
              url: "san-pham-trang-da/trang-toan-than",
              defaults: new { controller = "Home", action = "TrangToanThan", id = UrlParameter.Optional }
          );

            routes.MapRoute(
          name: "congthucduongtrangda",
          url: "tin-tuc/cong-thuc-duong-trang-da-voi-thanh-phan-tu-dong-trung-ha-thao",
          defaults: new { controller = "Home", action = "CongThucDuonTrangDa", id = UrlParameter.Optional }
      );
            routes.MapRoute(
         name: "khamphaquyennanglamtrangdatutraxanh",
         url: "tin-tuc/kham-pha-quyen-nang-lam-trang-da-tu-tra-xanh",
         defaults: new { controller = "Home", action = "KhamPhaQuyenNangLamTrangDa", id = UrlParameter.Optional }
     );
  //          routes.MapRoute(
  //    name: "thuchuchuyenlamdeptudongtrunghathao",
  //    url: "tin-tuc/thuc-hu-chuyen-lam-dep-tu-dong-trung-ha-thao",
  //    defaults: new { controller = "Home", action = "ThucHuChuyenLamDep", id = UrlParameter.Optional }
  //);
            routes.MapRoute(
 name: "vibotanitochuctunghanglientuc",
 url: "tin-tuc/vibotani-to-chuc-tung-hang-lien-tuc-moi-02-thang-nam-2019",
 defaults: new { controller = "Home", action = "VibotaniToChucTungHangLienTuc", id = UrlParameter.Optional },
  namespaces: new[] { "ViBotani.Controllers" }
);
            routes.MapRoute(
    name: "bikipduongdatranghongcuacacsao",
    url: "tin-tuc/bi-kip-duong-da-trang-hong-tu-nhien-cua-sao-sau-01-tuan",
    defaults: new { controller = "Home", action = "BiKipDuongTrangHongTuNhien", id = UrlParameter.Optional },
     namespaces: new[] { "ViBotani.Controllers" }
);

            routes.MapRoute(
               name: "Default",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "ViBotani.Controllers" }
           );
        }
    }
}
