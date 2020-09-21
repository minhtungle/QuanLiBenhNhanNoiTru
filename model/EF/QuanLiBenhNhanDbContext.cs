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

        public virtual DbSet<BenhNhan> BenhNhan { get; set; }
        public virtual DbSet<BenhNhanCu> BenhNhanCu { get; set; }
        public virtual DbSet<HoSoChuaDuyet> HoSoChuaDuyet { get; set; }
        public virtual DbSet<KhoaDieuTri> KhoaDieuTri { get; set; }
        public virtual DbSet<PhongBenh> PhongBenh { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoan { get; set; }
        public virtual DbSet<ToaNha> ToaNha { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
