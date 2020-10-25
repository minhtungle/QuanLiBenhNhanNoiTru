using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
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
        [HttpPost]
        public JsonResult GetKhoa(string daynha)
        {
            return Json(dao.GetKhoa(daynha), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetPhong(string tenkhoa)
        {
            return Json(dao.GetPhong(tenkhoa), JsonRequestBehavior.AllowGet);
        }
        public JsonResult ListHoSoChuaDuyet()
        {
            var test = dao.ListHoSoChuaDuyet();
            return Json(dao.ListHoSoChuaDuyet(), JsonRequestBehavior.AllowGet);
        }
        //public JsonResult Add(HoSoChuaDuyet entity)
        //{
        //    return Json(dao.Them(entity), JsonRequestBehavior.AllowGet);
        //}

        [HttpPost]
        public JsonResult Add(/*HttpPostedFileBase [] FileAnh*/)
        {
            // Su dung Request - get data form FormData
            //Lay thong tin Object tu FormData
            var form = Request.Form;
            var mabn = form["MaBN"];
            var tenbn = form["TenBN"];
            var tuoi = form["Tuoi"];
            var ngaysinh = form["NgaySinh"];
            var diachi = form["DiaChi"];
            var ngayvao = form["NgayVao"];
            var daynha = form["DayNha"];
            var tenkhoa = form["TenKhoa"];
            var tenphong = form["TenPhong"];
            var fileAnh = Request.Files[0];

            string path = Server.MapPath("~/assets/Uploads/");
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            var filePath = path + Path.GetFileName(fileAnh.FileName);
            //string extension = Path.GetExtension(fileAnh.FileName);
            fileAnh.SaveAs(filePath);

            HoSoChuaDuyet entity = new HoSoChuaDuyet();
            entity.MaBN = mabn;
            entity.TenBN = tenbn;
            entity.Tuoi = int.Parse(tuoi);
            var ngaySinh = DateTime.ParseExact(ngaysinh, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            entity.NgaySinh = ngaySinh.ToShortDateString();

            entity.DiaChi = diachi;
            var ngayVao = DateTime.ParseExact(ngayvao, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            entity.NgayVao = ngayVao.ToShortDateString();

            entity.DayNha = daynha;
            entity.TenKhoa = tenkhoa;
            entity.TenPhong = tenphong;
            entity.Trangthai = true;
            entity.BenhAn = fileAnh.FileName.ToString();
            var result = dao.Them(entity);
            return Json(new
            {
                result
            }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetByID(int id)
        {
            var Employee = dao.GetByID(id);
            return Json(Employee, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Update()
        {
            // Su dung Request - get data form FormData
            //Lay thong tin Object tu FormData
            var form = Request.Form;
            var id = form["ID"];
            var mabn = form["MaBN"];
            var tenbn = form["TenBN"];
            var tuoi = form["Tuoi"];
            var ngaysinh = form["NgaySinh"];
            var diachi = form["DiaChi"];
            var ngayvao = form["NgayVao"];
            var daynha = form["DayNha"];
            var tenkhoa = form["TenKhoa"];
            var tenphong = form["TenPhong"];
            var fileAnh = Request.Files[0];

            string path = Server.MapPath("~/assets/Uploads/");
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            var filePath = path + Path.GetFileName(fileAnh.FileName);
            //string extension = Path.GetExtension(fileAnh.FileName);
            fileAnh.SaveAs(filePath);

            HoSoChuaDuyet entity = new HoSoChuaDuyet();
            entity.ID = int.Parse(id);
            entity.MaBN = mabn;
            entity.TenBN = tenbn;
            entity.Tuoi = int.Parse(tuoi);
            var ngaySinh = DateTime.ParseExact(ngaysinh, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            entity.NgaySinh = ngaySinh.ToShortDateString();

            entity.DiaChi = diachi;
            var ngayVao = DateTime.ParseExact(ngayvao, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            entity.NgayVao = ngayVao.ToShortDateString();

            entity.DayNha = daynha;
            entity.TenKhoa = tenkhoa;
            entity.TenPhong = tenphong;
            entity.Trangthai = true;
            entity.BenhAn = fileAnh.FileName.ToString();
            var result = dao.CapNhat(entity);
            return Json(new
            {
                result
            }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Delete(int ID)
        {
            return Json(dao.Xoa(ID), JsonRequestBehavior.AllowGet);
        }
    }
}