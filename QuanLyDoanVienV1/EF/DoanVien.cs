namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DoanVien")]
    public partial class DoanVien
    {
        [Key]
        [StringLength(20)]
        public string MaDoanVien { get; set; }

        [StringLength(255)]
        public string TenDoanVien { get; set; }

        [StringLength(255)]
        public string MaChiDoan { get; set; }

        public DateTime? NgaySinh { get; set; }

        [StringLength(10)]
        public string GioiTinh { get; set; }

        [StringLength(10)]
        public string MaDanToc { get; set; }

        [StringLength(10)]
        public string MaTonGiao { get; set; }

        [StringLength(255)]
        public string QueQuan { get; set; }

        [StringLength(10)]
        public string MaTrinhDo { get; set; }

        public DateTime? NgayVaoDoan { get; set; }

        [StringLength(10)]
        public string MaChucVu { get; set; }

        [StringLength(5)]
        public string TrangThai { get; set; }

        [StringLength(255)]
        public string GhiChu { get; set; }
    }
}
