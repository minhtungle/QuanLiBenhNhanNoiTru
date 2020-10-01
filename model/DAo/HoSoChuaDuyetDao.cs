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
        public long Them(HoSoChuaDuyet entity)
        {
            db.HoSoChuaDuyets.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }
        public bool CapNhat(HoSoChuaDuyet entity)
        {
            try
            {
                var user = db.HoSoChuaDuyets.Find(entity.ID);
                user.MaBn = entity.MaBn;
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
        public IEnumerable<HoSoChuaDuyet> ListAllPaging( int page, int pageSize)
        {
            IQueryable<HoSoChuaDuyet> model = db.HoSoChuaDuyets;         
            return model.OrderByDescending(x => x.ID).ToPagedList(page, pageSize);
        }

        #endregion

    }
}


