namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CamTinhDang")]
    public partial class CamTinhDang
    {
        [Key]
        [StringLength(10)]
        public string MaCamTinhDang { get; set; }

        [Required]
        [StringLength(10)]
        public string MaDoanVien { get; set; }

        public DateTime? NgayCap { get; set; }
    }
}
