namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NamHoc")]
    public partial class NamHoc
    {
        [Key]
        [StringLength(10)]
        public string MaNamHoc { get; set; }

        [StringLength(255)]
        public string TenNamHoc { get; set; }
    }
}
