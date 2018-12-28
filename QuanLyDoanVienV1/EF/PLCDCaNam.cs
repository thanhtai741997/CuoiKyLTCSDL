namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PLCDCaNam")]
    public partial class PLCDCaNam
    {
        [Key]
        [StringLength(10)]
        public string IDPLCDCaNam { get; set; }

        [StringLength(255)]
        public string PhanLoaiKiI { get; set; }

        [StringLength(255)]
        public string PhanLoaiKiII { get; set; }

        [StringLength(255)]
        public string PhanLoaiCaNam { get; set; }
    }
}
