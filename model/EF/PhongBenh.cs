namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhongBenh")]
    public partial class PhongBenh
    {
        public long ID { get; set; }

        [StringLength(25)]
        public string TenPhong { get; set; }

        [StringLength(25)]
        public string TenKhoa { get; set; }

        [StringLength(5)]
        public string DayNha { get; set; }
    }
}
