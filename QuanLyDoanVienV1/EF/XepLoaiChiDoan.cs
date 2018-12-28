namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("XepLoaiChiDoan")]
    public partial class XepLoaiChiDoan
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string IDXepLoaiChiDoan { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaChiDoan { get; set; }

        public long? NamHoc { get; set; }

        [StringLength(255)]
        public string XepLoaiKiI { get; set; }

        [StringLength(255)]
        public string XepLoaiKiII { get; set; }

        [StringLength(255)]
        public string XepLoaiCaNam { get; set; }
    }
}
