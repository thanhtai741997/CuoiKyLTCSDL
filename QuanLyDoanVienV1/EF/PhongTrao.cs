namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhongTrao")]
    public partial class PhongTrao
    {
        [Key]
        [StringLength(10)]
        public string IDPhongTrao { get; set; }

        [StringLength(255)]
        public string MoTaPhongTrao { get; set; }
    }
}
