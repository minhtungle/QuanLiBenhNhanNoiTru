using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class HoSoMoiDao
    {
        QuanLiBenhNhanDbContext db = null;
        public HoSoMoiDao()
        {
            db = new QuanLiBenhNhanDbContext();
        }

        #region CRUD
        public bool Them()
        {
            var list = db.HoSoChuaDuyets;
            foreach(var item in list)
            {
                try
                {
                    var hsm = new HoSoMoi();
                    hsm.MaBN = item.MaBN;
                    hsm.TenBN = item.TenBN;
                    hsm.Tuoi = item.Tuoi;
                    hsm.NgaySinh = item.NgaySinh;
                    hsm.DiaChi = item.DiaChi;
                    hsm.NgayVao = item.NgayVao;
                    hsm.DayNha = item.DayNha;
                    hsm.TenKhoa = item.TenKhoa;
                    hsm.TenPhong = item.TenPhong;
                    hsm.Trangthai = true;
                    hsm.BenhAn = item.BenhAn;
                    db.HoSoMois.Add(hsm);
                    db.HoSoChuaDuyets.Remove(item);
                    db.SaveChanges();
                }
                catch
                {
                    return false;
                }
            }
            return true;
        }
        public bool Xoa(int id)
        {
            try
            {
                var hs = db.HoSoMois.Find(id);
                db.HoSoMois.Remove(hs);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        #endregion
        #region View
        public HoSoChuaDuyet GetByID(int id)
        {
            var hs = db.HoSoChuaDuyets.Find(id);
            return hs;
        }
        public IEnumerable<HoSoChuaDuyet> ListHoSoChuaDuyet()
        {
            IQueryable<HoSoChuaDuyet> hosochuaduyet = db.HoSoChuaDuyets;
            return hosochuaduyet.OrderBy(x => x.ID).ToList();
        }
        public IEnumerable<HoSoMoi> ListHoSoMoi()
        {
            IQueryable<HoSoMoi> hosomoi = db.HoSoMois;
            return hosomoi.OrderBy(x => x.ID).ToList();
        }
        #endregion
    }
}
