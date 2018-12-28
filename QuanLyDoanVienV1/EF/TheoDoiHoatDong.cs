namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TheoDoiHoatDong")]
    public partial class TheoDoiHoatDong
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string IDTheoDoi { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaDoanVien { get; set; }

        [StringLength(255)]
        public string HoatDongThamGia { get; set; }

        public DateTime? Ngay { get; set; }

        [StringLength(255)]
        public string DanhGia { get; set; }
    }
}
