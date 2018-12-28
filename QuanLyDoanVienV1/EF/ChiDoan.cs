namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiDoan")]
    public partial class ChiDoan
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string MaChiDoan { get; set; }

        [Column(Order = 1)]
        [StringLength(10)]
        public string MaLienChi { get; set; }


        [StringLength(255)]
        public string TenChiDoan { get; set; }

        [StringLength(5)]
        public string TrangThai { get; set; }
    }
}
