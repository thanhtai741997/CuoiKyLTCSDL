namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChucVu")]
    public partial class ChucVu
    {
        [Key]
        [StringLength(10)]
        public string MaChucVu { get; set; }

        [StringLength(255)]
        public string TenChucVu { get; set; }
    }
}
