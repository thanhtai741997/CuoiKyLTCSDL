namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DonVi")]
    public partial class DonVi
    {
        [Key]
        [StringLength(10)]
        public string MaDonVi { get; set; }

        [StringLength(255)]
        public string TenDonVi { get; set; }
    }
}
