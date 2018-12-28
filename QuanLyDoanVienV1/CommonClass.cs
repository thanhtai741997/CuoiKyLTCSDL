using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public static class User
    {
        static string manguoidung, tennguoidung, matkhau, quyenhan;
        public static string MaNguoiDung
        {
            get { return manguoidung; }
            set { manguoidung = value; }
        }
        public static string TenNguoiDung
        {
            get { return tennguoidung; }
            set { tennguoidung = value; }
        }
        public static string MatKhau
        {
            get { return matkhau; }
            set { matkhau = value; }
        }
        public static string QuyenHan
        {
            get { return quyenhan; }
            set { quyenhan = value; }
        }
    }
    public static class CommonClass
    {
        public const string ConnectionString = "Data Source=(local);Initial Catalog=QuanLyDoanVien;Integrated Security=True";
        public static bool KiemTra(string tenNguoiDung, string matkhau)
        {

            string strQuery = "select * from NguoiDung where TenDangNhap='" + tenNguoiDung + "' and MatKhau='" + matkhau + "'";
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlDataAdapter ap = new SqlDataAdapter(strQuery, conn);
            DataTable table = new DataTable();
            ap.Fill(table);
            if (table.Rows.Count > 0)
            {
                User.MaNguoiDung = table.Rows[0]["MaNguoiDung"].ToString();
                User.TenNguoiDung = table.Rows[0]["TenDangNhap"].ToString();
                User.MatKhau = table.Rows[0]["MatKhau"].ToString();
                User.QuyenHan = table.Rows[0]["QuyenHan"].ToString();
                return true;
            }
            return false;
        }
        public static string TaoXau(string PhanChu, int DoDaiXau, int GiaTriSo)//TaoXau("LH",6,12) --> LH0012
        {
            string result = "";
            int DoDaiPhanChu = PhanChu.Length;
            int DoDaiPhanTrong = DoDaiXau - DoDaiPhanChu - GiaTriSo.ToString().Length;
            if (DoDaiPhanTrong == 0)
                result = PhanChu + GiaTriSo.ToString();
            if (DoDaiPhanTrong > 0)
            {
                result = PhanChu;
                for (int i = 0; i < DoDaiPhanTrong; i++)
                    result += '0';
                result += GiaTriSo.ToString();
            }
            return result;
        }
        public static string ChuanXau(string str, bool ChuanTen)
        {
            string[] st = str.Split(' ');
            string ketqua = "";
            foreach (string s in st)
            {
                if (s.Length > 1)
                    ketqua += (s.Substring(0, 1).ToUpper() + s.Substring(1).ToLower() + " ");
                else
                    ketqua += s.ToUpper();
            }
            if (ketqua == "") return ketqua = "";
            else
                return (ChuanTen ? ketqua : (ketqua.Substring(0, 1).ToUpper() + ketqua.Substring(1).ToLower()));

        }
    }
    public static class AccessDatabase
    {
        public static string TaoMa(string st, int Length, string StoredProcedure)
        {//Lenght : do dai cua ca xau ket qua
            string result = "";
            SqlCommand command = new SqlCommand();
            command.CommandText = StoredProcedure;
            command.CommandType = CommandType.StoredProcedure;
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            command.Connection = conn;
            int number = 0;
            try
            {
                conn.Open();
                object ob = command.ExecuteScalar();
                if (ob == null) number = 1;
                else
                    number = (int)ob;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                return result;
            }
            int d = Length - st.Length - number.ToString().Length;
            result = st;
            for (int i = 0; i < d; i++)
                result += '0';
            result += number.ToString();
            return result;
        }
        public static char TaoMaChuCai(string StoredProcedure)
        {
            SqlCommand command = new SqlCommand();
            command.CommandText = StoredProcedure;
            command.CommandType = CommandType.StoredProcedure;
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            command.Connection = conn;
            conn.Open();
            object ob = command.ExecuteScalar();
            char c = char.Parse((string)ob);
            if (ob == null) return 'A';
            return ((char)((int)c + 1));
        }
        public static DataTable GetTable(string tableName)
        {
            SqlDataAdapter adapter = new SqlDataAdapter("select * from " + tableName, new SqlConnection(CommonClass.ConnectionString));
            DataTable table = new DataTable();
            adapter.Fill(table);
            return table;
        }
        public static DataTable ExecuteQuery(string strQuery)
        {
            SqlDataAdapter adapter = new SqlDataAdapter(strQuery, new SqlConnection(CommonClass.ConnectionString));
            DataTable table = new DataTable();
            adapter.Fill(table);
            return table;
        }
        public static object ExecuteScalar(string storedProcedureName, string[] parsName, string[] parsValue)
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = storedProcedureName;
            command.Connection = conn;
            SqlParameter par;
            for (int i = 0; i < parsName.Length; i++)
            {
                par = new SqlParameter();
                par.ParameterName = parsName[i];
                par.Value = parsValue[i];
                command.Parameters.Add(par);
            }
            return command.ExecuteScalar();
        }
        public static void Insert(string strQuery)
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = strQuery;
            command.Connection = conn;
            command.ExecuteNonQuery();
        }
    }
}
