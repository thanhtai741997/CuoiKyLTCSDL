namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LienChi")]
    public partial class LienChi
    {
        [Key]
        [StringLength(10)]
        public string MaLienChi { get; set; }

        [StringLength(255)]
        public string TenLienChi { get; set; }
    }
}
