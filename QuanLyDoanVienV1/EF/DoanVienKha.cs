namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DoanVienKha")]
    public partial class DoanVienKha
    {
        [Key]
        [StringLength(255)]
        public string IDDoanVienKha { get; set; }

        [StringLength(255)]
        public string MoTaDoanVienKha { get; set; }
    }
}
