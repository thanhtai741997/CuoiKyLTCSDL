namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("XepLoaiDoanVien")]
    public partial class XepLoaiDoanVien
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string IDXepLoaiDoanVien { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaDoanVien { get; set; }

        public long? NamHoc { get; set; }

        [StringLength(255)]
        public string PLDVKiI { get; set; }

        [StringLength(255)]
        public string PLDVKiII { get; set; }

        [StringLength(255)]
        public string PLDVCaNam { get; set; }
    }
}
