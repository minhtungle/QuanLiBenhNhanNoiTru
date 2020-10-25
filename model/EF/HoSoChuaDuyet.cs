namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoSoChuaDuyet")]
    public partial class HoSoChuaDuyet
    {
        public long ID { get; set; }

        [Required]
        [StringLength(50)]
        public string MaBN { get; set; }

        [StringLength(25)]
        public string TenBN { get; set; }

        public int? Tuoi { get; set; }


        [StringLength(10)]
        public string NgaySinh { get; set; }

        [StringLength(100)]
        public string DiaChi { get; set; }


        [StringLength(10)]
        public string NgayVao { get; set; }

        [StringLength(5)]
        public string DayNha { get; set; }

        [StringLength(25)]
        public string TenKhoa { get; set; }

        [StringLength(25)]
        public string TenPhong { get; set; }

        public bool? Trangthai { get; set; }

        [StringLength(100)]
        public string BenhAn { get; set; }
    }
}
