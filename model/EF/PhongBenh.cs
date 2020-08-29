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

        [StringLength(50)]
        public string TenPhong { get; set; }

        [StringLength(50)]
        public string TenKhoa { get; set; }

        [StringLength(50)]
        public string DayNha { get; set; }
    }
}
