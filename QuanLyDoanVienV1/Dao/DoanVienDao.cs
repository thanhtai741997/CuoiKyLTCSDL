using QuanLyDoanVienV1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyDoanVienV1.Dao
{
    public class DoanVienDao
    {
        QLDVContext db;
        public DoanVienDao()
        {
            db = new QLDVContext();
        }
        public bool capnhatTrangThai(string maDV, string trangThai)
        {
            try
            {
                DoanVien dv = db.DoanVien.Find(maDV);
                dv.TrangThai = trangThai;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public object layDSchuyenSinhHoat()
        {
            return db.ChuyenSinhHoatDoan.ToList();
        }
        public string TaoMa(string st, int Length)
        {
            string result = "";
            //lấy giá trị mã user lớn nhất
            ChuyenSinhHoatDoan ob = new ChuyenSinhHoatDoan();
            ob = db.ChuyenSinhHoatDoan.OrderByDescending(x => x.IDChuyenSinhHoat).Take(1).ToList()[0];

            int number = int.Parse(new String(ob.IDChuyenSinhHoat.Where(Char.IsDigit).ToArray()));
            number++;

            int d = Length - st.Length - number.ToString().Length;
            result = st;
            for (int i = 0; i < d; i++)
                result += '0';
            result += number.ToString();
            return result;
        }
        public ChiDoan layChiDoan(string maDV)
        {
            DoanVien dv = db.DoanVien.Find(maDV);
            return db.ChiDoan.SingleOrDefault(x => x.MaChiDoan == dv.MaChiDoan);
        }
        public LienChi layLienChi(string maDV)
        {
            ChiDoan cd = layChiDoan(maDV);
            return db.LienChi.SingleOrDefault(x => x.MaLienChi == cd.MaLienChi);
        }
        public string layMaDoanVien()
        {
            return "success";
        }
    }
}
