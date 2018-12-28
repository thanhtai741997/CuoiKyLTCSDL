namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NguoiDung")]
    public partial class userSession
    {
        [Key]
        [StringLength(10)]
        public string MaNguoiDung { get; set; }

        [Required]
        [StringLength(255)]
        public string TenDangNhap { get; set; }

        public string MatKhau { get; set; }

        [StringLength(50)]
        public string QuyenHan { get; set; }
    }
}
