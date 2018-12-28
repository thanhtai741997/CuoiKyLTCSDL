namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("QLDPLienChi")]
    public partial class QLDPLienChi
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string IDQLDPLienChi { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaLienChi { get; set; }

        public decimal? SoTienNop { get; set; }

        public decimal? SoTienThieu { get; set; }

        public long? NamHoc { get; set; }

        [StringLength(255)]
        public string NguoiNop { get; set; }

        [StringLength(255)]
        public string NguoiNhan { get; set; }
    }
}
