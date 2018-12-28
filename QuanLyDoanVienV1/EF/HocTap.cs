namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HocTap")]
    public partial class HocTap
    {
        [Key]
        [StringLength(5)]
        public string IDHocTap { get; set; }

        [StringLength(255)]
        public string MoTaHocTap { get; set; }
    }
}
