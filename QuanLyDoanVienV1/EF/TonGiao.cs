namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TonGiao")]
    public partial class TonGiao
    {
        [Key]
        [StringLength(10)]
        public string MaTonGiao { get; set; }

        [StringLength(255)]
        public string TenTonGiao { get; set; }
    }
}
