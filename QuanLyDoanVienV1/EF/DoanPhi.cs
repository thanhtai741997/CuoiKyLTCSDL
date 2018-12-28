namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DoanPhi")]
    public partial class DoanPhi
    {
        [Key]
        [StringLength(5)]
        public string IDDoanPhi { get; set; }

        [StringLength(255)]
        public string MoTaDoanPhi { get; set; }
    }
}
