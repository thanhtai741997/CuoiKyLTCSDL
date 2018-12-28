namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KhenThuong")]
    public partial class KhenThuong
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string MaKhenThuong { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaDoanVien { get; set; }

        public DateTime? Ngay { get; set; }

        [StringLength(255)]
        public string LiDo { get; set; }

        [StringLength(255)]
        public string HinhThuc { get; set; }
    }
}
