using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class BenhNhanDao
    {
        QuanLiBenhNhanDbContext db = null;
        public BenhNhanDao()
        {
            db = new QuanLiBenhNhanDbContext();
        }
        #region CRUD
        public long Them(BenhNhan entity)
        {
            db.BenhNhans.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }
        public bool CapNhat(BenhNhan entity)
        {
            try
            {
                var bn = db.BenhNhans.Find(entity.ID);
                bn.TenBN = entity.TenBN;
                bn.MaBn = entity.MaBn;
                bn.NgaySinh = entity.NgaySinh;
                bn.DayNha = entity.DayNha;
                bn.TenKhoa = entity.TenKhoa;
                bn.TenPhong = entity.TenPhong;
                bn.Tuoi = entity.Tuoi;
                bn.DiaChi = entity.DiaChi;
                bn.NgayVao = entity.NgayVao;
                bn.NgayRa = entity.NgayRa;
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
                var bn = db.BenhNhans.Find(id);
                db.BenhNhans.Remove(bn);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        #endregion
        #region VIEW
        public BenhNhan ViewDetail(int id)
        {
            return db.BenhNhans.Find(id);
        }
        public BenhNhan GetByMaBn(string mabn)
        {
            return db.BenhNhans.SingleOrDefault(x => x.MaBn == mabn);
        }
        public IEnumerable<BenhNhan> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<BenhNhan> model = db.BenhNhans;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.TenBN.Contains(searchString));
            }
            return model.OrderByDescending(x => x.NgaySinh).ToPagedList(page, pageSize);
        }
        #endregion
    }
}


