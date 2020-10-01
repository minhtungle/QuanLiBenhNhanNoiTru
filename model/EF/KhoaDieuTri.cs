namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KhoaDieuTri")]
    public partial class KhoaDieuTri
    {
        public long ID { get; set; }

        [StringLength(25)]
        public string TenKhoa { get; set; }

        [StringLength(25)]
        public string DayNha { get; set; }
    }
}
