namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ToaNha")]
    public partial class ToaNha
    {
        public long ID { get; set; }

        [StringLength(50)]
        public string DayNha { get; set; }
    }
}
