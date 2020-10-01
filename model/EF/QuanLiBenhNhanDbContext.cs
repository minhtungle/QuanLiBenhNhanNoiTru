namespace Model.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class QuanLiBenhNhanDbContext : DbContext
    {
        public QuanLiBenhNhanDbContext()
            : base("name=QuanLiBenhNhanDbContext")
        {
        }

        public virtual DbSet<HoSoChuaDuyet> HoSoChuaDuyets { get; set; }
        public virtual DbSet<HoSoCu> HoSoCus { get; set; }
        public virtual DbSet<HoSoMoi> HoSoMois { get; set; }
        public virtual DbSet<KhoaDieuTri> KhoaDieuTris { get; set; }
        public virtual DbSet<PhongBenh> PhongBenhs { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
        public virtual DbSet<ToaNha> ToaNhas { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
