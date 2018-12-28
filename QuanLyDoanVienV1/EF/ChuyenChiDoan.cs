namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChuyenChiDoan")]
    public partial class ChuyenChiDoan
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string IDChuyenChiDoan { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaDoanVien { get; set; }

        [StringLength(10)]
        public string MaChiDoanCu { get; set; }

        [StringLength(10)]
        public string MaChiDoanMoi { get; set; }

        public DateTime? NgayChuyen { get; set; }

        [StringLength(255)]
        public string LiDoChuyen { get; set; }
    }
}
