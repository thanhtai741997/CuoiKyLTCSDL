namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RenLuyen")]
    public partial class RenLuyen
    {
        [Key]
        [StringLength(10)]
        public string IDRenLuyen { get; set; }

        [StringLength(255)]
        public string MoTaRenLuyen { get; set; }
    }
}
