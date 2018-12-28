using QuanLyDoanVienV1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyDoanVienV1.Dao
{
    public class UserDao
    {
        QLDVContext db;
        public UserDao()
        {
            db = new QLDVContext();
        }
        public int Login(string userName, string passWord, bool isLoginAdmin = false)
        {
            var result = db.NguoiDung.SingleOrDefault(x => x.TenDangNhap == userName);
            if (result == null)
            {
                return 0;
            }
            else
            {
                    if (result.MatKhau == passWord)
                        return 1;
                    else
                        return -1;
            }
        }
        public userSession GetById(string userName)
        {
            return db.NguoiDung.SingleOrDefault(x => x.TenDangNhap == userName);
        }
        public int changePassword(string userName, string oldPassword,string newPassword,string confirmPassword)
        {
            var result = db.NguoiDung.SingleOrDefault(x => x.TenDangNhap == userName);
            if (result == null)
            {
                return 0;
            }
            else
            {

                if (result.MatKhau != oldPassword)
                {
                    return -1;
                }
                else
                {
                    if (newPassword == "" || newPassword == null)
                        return -2;
                    else if (newPassword != confirmPassword)
                        return -3;
                    else
                    {
                        result.MatKhau = newPassword;
                        db.SaveChanges();
                        return 1;
                    }
                }
            }
        }
        public string TaoMa(string st,int Length)
        {
            string result = "";
            //lấy giá trị mã user lớn nhất
            EF.userSession user = new EF.userSession();
            user = db.NguoiDung.OrderByDescending(x=>x.MaNguoiDung).Take(1).ToList()[0];

            int number = int.Parse(new String(user.MaNguoiDung.Where(Char.IsDigit).ToArray()));
            number++;

            int d = Length - st.Length - number.ToString().Length;
            result = st;
            for (int i = 0; i < d; i++)
                result += '0';
            result += number.ToString();
            return result;
        }
        public string layQuyenHan(int rowIndex)
        {
            userSession user = db.NguoiDung.Where(x=>x.QuyenHan!="*").OrderBy(x => x.MaNguoiDung).ToList()[rowIndex];
            return user.QuyenHan;
        }
        public string LayQuyenHan(string userID)
        {
            userSession user = db.NguoiDung.Find(userID);
            return user.QuyenHan;
        }
        public int doiMatKhau(string userName, string passWord)
        {
            try
            {
                var user = db.NguoiDung.SingleOrDefault(x => x.TenDangNhap == userName);
                user.MatKhau = passWord;
                db.SaveChanges();
                return 1;
            }
            catch (Exception)
            {
                return 0;
            }
        }
    }
}
