namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PLCDHocKi")]
    public partial class PLCDHocKi
    {
        [Key]
        [StringLength(10)]
        public string IDPLCDHocKi { get; set; }

        [StringLength(255)]
        public string IDDoanVienKha { get; set; }

        [StringLength(255)]
        public string IDDoanVienYeuKem { get; set; }

        [StringLength(255)]
        public string XepLoai { get; set; }
    }
}
