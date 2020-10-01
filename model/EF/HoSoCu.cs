namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoSoCu")]
    public partial class HoSoCu
    {
        public long ID { get; set; }

        [StringLength(50)]
        public string MaBn { get; set; }

        [StringLength(25)]
        public string TenBN { get; set; }

        public int? Tuoi { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        [StringLength(100)]
        public string DiaChi { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayVao { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayRa { get; set; }

        [StringLength(5)]
        public string DayNha { get; set; }

        [StringLength(25)]
        public string TenKhoa { get; set; }

        [StringLength(25)]
        public string TenPhong { get; set; }

        public bool Trangthai { get; set; }

        [StringLength(100)]
        public string BenhAn { get; set; }
    }
}
