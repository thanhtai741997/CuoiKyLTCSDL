using QuanLyDoanVienV1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyDoanVienV1.Dao
{
    public class LienChiDao
    {
        QLDVContext db;
        public LienChiDao()
        {
            db = new QLDVContext();
        }
    }
}
