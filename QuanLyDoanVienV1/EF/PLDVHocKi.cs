namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PLDVHocKi")]
    public partial class PLDVHocKi
    {
        [Key]
        [StringLength(10)]
        public string IDPLDVHocKi { get; set; }

        [Required]
        [StringLength(10)]
        public string IDHocTap { get; set; }

        [Required]
        [StringLength(10)]
        public string IDRenLuyen { get; set; }

        [Required]
        [StringLength(10)]
        public string IDPhongTrao { get; set; }

        [Required]
        [StringLength(10)]
        public string IDDoanPhi { get; set; }

        [StringLength(255)]
        public string XepLoai { get; set; }
    }
}
