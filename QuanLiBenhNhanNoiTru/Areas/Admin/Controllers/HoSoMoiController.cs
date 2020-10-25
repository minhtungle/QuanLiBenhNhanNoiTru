using Model.Dao;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLiBenhNhanNoiTru.Areas.Admin.Controllers
{
    public class HoSoMoiController : Controller
    {
        // GET: Admin/HoSoChuaDuyet
        HoSoMoiDao dao = new HoSoMoiDao();
        // GET: Admin/HoSoMoi
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult ListHoSoChuaDuyet()
        {
            var db = dao.ListHoSoChuaDuyet();
            return Json( db,
             JsonRequestBehavior.AllowGet);

            //return Json(db,
            //    JsonRequestBehavior.AllowGet);
        }
        public JsonResult Add()
        {
            return Json(dao.Them(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetByID(int id)
        {
            //var Employee = dao.GetByID(id);
            //var convertdate = DateTime.ParseExact(Employee.NgaySinh.ToString().Replace(" 12:00:00 AM",""), "MM/dd/yyyy", CultureInfo.InvariantCulture);
            //var ngaysinh = convertdate.ToString().Replace(" 12:00:00 AM", "");
            return Json(dao.GetByID(id),  JsonRequestBehavior.AllowGet);
        }
    }
}