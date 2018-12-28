namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CanBo")]
    public partial class CanBo
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string MaCanBo { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaDoanVien { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(10)]
        public string MaChucVu { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(10)]
        public string MaDonVi { get; set; }
    }
}
