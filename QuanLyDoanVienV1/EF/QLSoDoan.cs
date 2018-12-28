namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("QLSoDoan")]
    public partial class QLSoDoan
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string MaQLSoDoan { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaChiDoan { get; set; }

        [StringLength(255)]
        public string SoLuong { get; set; }

        public DateTime? NgayNhan { get; set; }

        public DateTime? NgayTra { get; set; }

        [StringLength(255)]
        public string NguoiGiao { get; set; }

        [StringLength(255)]
        public string NguoiNhan { get; set; }
    }
}
