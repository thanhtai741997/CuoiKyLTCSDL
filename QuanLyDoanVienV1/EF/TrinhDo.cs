namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TrinhDo")]
    public partial class TrinhDo
    {
        [Key]
        [StringLength(10)]
        public string MaTrinhDo { get; set; }

        [StringLength(255)]
        public string MoTaTrinhDo { get; set; }
    }
}
