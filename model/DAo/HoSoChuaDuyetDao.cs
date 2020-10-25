using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class HoSoChuaDuyetDao
    {
        QuanLiBenhNhanDbContext db = null;
        public HoSoChuaDuyetDao()
        {
            db = new QuanLiBenhNhanDbContext();
        }

        #region CRUD
        public bool Them(HoSoChuaDuyet entity)
        {
            try
            {
                db.HoSoChuaDuyets.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public bool CapNhat(HoSoChuaDuyet entity)
        {
            try
            {
                var user = db.HoSoChuaDuyets.Find(entity.ID);
                user.MaBN = entity.MaBN;
                user.TenBN = entity.TenBN;
                user.Tuoi = entity.Tuoi;
                user.NgaySinh = entity.NgaySinh;
                user.DiaChi = entity.DiaChi;
                user.NgayVao = entity.NgayVao;

                user.DayNha = entity.DayNha;
                user.TenKhoa = entity.TenKhoa;
                user.TenPhong = entity.TenPhong;
                user.Trangthai = true;
                user.BenhAn = entity.BenhAn;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool Xoa(int id)
        {
            try
            {
                var hs = db.HoSoChuaDuyets.Find(id);
                db.HoSoChuaDuyets.Remove(hs);
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
        public List<string> GetKhoa(string daynha)
        {
            var khoa = db.KhoaDieuTris.Where(x => x.DayNha == daynha).Select(x => x.TenKhoa).ToList();
            return khoa;
        }
        public List<string> GetPhong(string tenkhoa)
        {
            var phong = db.PhongBenhs.Where(x => x.TenKhoa == tenkhoa).Select(x => x.TenPhong).ToList();
            return phong;
        }
        public IEnumerable<HoSoChuaDuyet> ListHoSoChuaDuyet()
        {
            IQueryable<HoSoChuaDuyet> hosochuaduyet = db.HoSoChuaDuyets;
            return hosochuaduyet.OrderBy(x => x.ID).ToList();
        }

        #endregion

    }
}


