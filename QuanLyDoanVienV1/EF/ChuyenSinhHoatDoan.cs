namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChuyenSinhHoatDoan")]
    public partial class ChuyenSinhHoatDoan
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string IDChuyenSinhHoat { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaDoanVien { get; set; }

        public DateTime? NgayChuyen { get; set; }

        [StringLength(255)]
        public string NoiChuyenDen { get; set; }

        [StringLength(255)]
        public string LiDoChuyen { get; set; }
    }
}
