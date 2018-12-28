namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DanToc")]
    public partial class DanToc
    {
        [Key]
        [StringLength(10)]
        public string MaDanToc { get; set; }

        [StringLength(255)]
        public string TenDanToc { get; set; }
    }
}
