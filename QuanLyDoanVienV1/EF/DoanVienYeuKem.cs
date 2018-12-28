namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DoanVienYeuKem")]
    public partial class DoanVienYeuKem
    {
        [Key]
        [StringLength(255)]
        public string IDDoanVienYeuKem { get; set; }

        [StringLength(255)]
        public string MoTaDoanVienYeuKem { get; set; }
    }
}
