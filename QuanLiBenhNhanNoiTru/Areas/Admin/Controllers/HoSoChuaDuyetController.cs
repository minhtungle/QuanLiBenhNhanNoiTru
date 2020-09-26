using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLiBenhNhanNoiTru.Areas.Admin.Controllers
{
    public class HoSoChuaDuyetController : Controller
    {
        // GET: Admin/HoSoChuaDuyet
         HoSoChuaDuyetDao dao = new HoSoChuaDuyetDao();
        // GET: Home  
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult List()
        {
            return Json(dao.ListAllPaging(1, 5), JsonRequestBehavior.AllowGet);
        }
        public JsonResult Add(HoSoChuaDuyet entity)
        {
            return Json(dao.Them(entity), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetByID(int ID)
        {
            var Employee = dao.GetByID(ID);
            return Json(Employee, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Update(HoSoChuaDuyet entity)
        {
            return Json(dao.CapNhat(entity), JsonRequestBehavior.AllowGet);
        }
        public JsonResult Delete(int ID)
        {
            return Json(dao.Xoa(ID), JsonRequestBehavior.AllowGet);
        }
    }
}