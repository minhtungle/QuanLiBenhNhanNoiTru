namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BenhNhan")]
    public partial class BenhNhan
    {
        public long ID { get; set; }

        [StringLength(50)]
        public string MaBn { get; set; }

        [StringLength(50)]
        public string TenBN { get; set; }

        public int? Tuoi { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        [StringLength(50)]
        public string DiaChi { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayVao { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayRa { get; set; }

        [StringLength(50)]
        public string DayNha { get; set; }

        [StringLength(50)]
        public string TenKhoa { get; set; }

        [StringLength(50)]
        public string TenPhong { get; set; }
    }
}
