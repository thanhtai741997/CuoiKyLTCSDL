using QuanLyDoanVienV1.Dao;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmQLDPChiDoan : Form
    {
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable table, tb, tb1;
        BindingSource bdSource;
        int TienThieu = 0;
        string str = "";
        public frmQLDPChiDoan()
        {
            InitializeComponent();
        }
        void LoadDataToCombo(ComboBox cb, string tableName, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableName);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        void LoadDataToDG()
        {
            adapter = new SqlDataAdapter("Select * from QLDPChiDoan where MaChiDoan in(select MaChiDoan from ChiDoan where MaLienChi='" + str + "')", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            table = new DataTable();
            adapter.Fill(table);
            bdSource = new BindingSource();
            bdSource.DataSource = table;
            dataGridView1.DataSource = bdSource;

            txtMaQuanLy.DataBindings.Clear();
            txtMaQuanLy.DataBindings.Add("Text", bdSource, "MaQLDPChiDoan");
            mtxtNamHoc.DataBindings.Clear();
            mtxtNamHoc.DataBindings.Add("Text", bdSource, "NamHoc");
            txtSoTienNop.DataBindings.Clear();
            txtSoTienNop.DataBindings.Add("Text", bdSource, "SoTienNop");
            txtSoTienThieu.DataBindings.Clear();
            txtSoTienThieu.DataBindings.Add("Text", bdSource, "SoTienThieu");
            txtNguoiNop.DataBindings.Clear();
            txtNguoiNop.DataBindings.Add("Text", bdSource, "NguoiNop");
            txtNguoiNhan.DataBindings.Clear();
            txtNguoiNhan.DataBindings.Add("Text", bdSource, "NguoiNhan");
            cbChiDoan.DataBindings.Clear();
            cbChiDoan.DataBindings.Add("SelectedValue", bdSource, "MaChiDoan");
            btnThem.Enabled = true;
            btnLuu.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdSource.AddNew();
            txtMaQuanLy.Text = AccessDatabase.TaoMa("DPCD", 8, "SPLayMaQLDPChiDoan");
            txtSoTienNop.Text = "";
            mtxtNamHoc.Text = "";
            cbLienChi.Focus();

            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (cbChiDoan.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn chi đoàn nộp", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbChiDoan.Focus();
                return;
            }
            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }

            if (int.Parse(txtSoTienNop.Text) > 12 * (int)AccessDatabase.ExecuteScalar("SPLaySoLuongDoanVien", new string[] { "@MaChiDoan" }, new string[] { cbChiDoan.SelectedValue.ToString() }) || int.Parse(txtSoTienNop.Text) < 1)
            {
                MessageBox.Show("Đoàn phí mỗi đoàn viên phải đóng theo quy định là 12.000/năm\n " + cbChiDoan.Text + " có " + (int)AccessDatabase.ExecuteScalar("SPLaySoLuongDoanVien", new string[] { "@MaChiDoan" }, new string[] { cbChiDoan.SelectedValue.ToString() }) + " đoàn viên. Số tiền phải nộp là " + 12 * (int)AccessDatabase.ExecuteScalar("SPLaySoLuongDoanVien", new string[] { "@MaChiDoan" }, new string[] { cbChiDoan.SelectedValue.ToString() }) + "\nSố tiền nộp ít nhất là 1 nghìn đồng", "Chú ý", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtSoTienNop.Focus();
                return;
            }
            tb1 = new DataTable();
            tb1 = AccessDatabase.ExecuteQuery("Select * From QLDPChiDoan Where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "' And NamHoc='" + mtxtNamHoc.Text.Trim() + "'And MaQLDPChiDoan!='" + txtMaQuanLy.Text.Trim() + "' and SoTienNop<Convert(int," + 12 * (int)AccessDatabase.ExecuteScalar("SPLaySoLuongDoanVien", new string[] { "@MaChiDoan" }, new string[] { cbChiDoan.SelectedValue.ToString() }) + ")");
            if (tb1.Rows.Count >= 1)
            {
                TienThieu = int.Parse(AccessDatabase.ExecuteScalar("SPDoanPhiChiDoan", new string[] { "@MaChiDoan", "@NamHoc" }, new string[] { cbChiDoan.SelectedValue.ToString(), mtxtNamHoc.Text.Trim() }).ToString());
                if (int.Parse(txtSoTienNop.Text) > TienThieu)
                {
                    MessageBox.Show("" + cbChiDoan.Text + " trong năm học " + mtxtNamHoc.Text.Trim() + " đóng đoàn phí thiếu " + TienThieu + " nghìn đồng\nBạn nộp thừa tiền ", "Chú ý");
                    txtSoTienNop.Focus();
                    return;
                }
                txtSoTienThieu.Text = (TienThieu - int.Parse(txtSoTienNop.Text)).ToString();
                CapNhatDoanPhiChiDoan();
                return;

            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * From QLDPChiDoan Where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "' And NamHoc='" + mtxtNamHoc.Text.Trim() + "'And MaQLDPChiDoan!='" + txtMaQuanLy.Text.Trim() + "' and SoTienNop=Convert(int," + 12 * (int)AccessDatabase.ExecuteScalar("SPLaySoLuongDoanVien", new string[] { "@MaChiDoan" }, new string[] { cbChiDoan.SelectedValue.ToString() }) + ")");
            if (tb.Rows.Count >= 1)
            {
                MessageBox.Show("" + cbChiDoan.Text + "  trong năm học " + mtxtNamHoc.Text + " đã nộp đủ đoàn phí", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            txtSoTienThieu.Text = (12 * (int)AccessDatabase.ExecuteScalar("SPLaySoLuongDoanVien", new string[] { "@MaChiDoan" }, new string[] { cbChiDoan.SelectedValue.ToString() }) - int.Parse(txtSoTienNop.Text)).ToString();
            txtNguoiNhan.Text = CommonClass.ChuanXau(txtNguoiNhan.Text, true);
            txtNguoiNop.Text = CommonClass.ChuanXau(txtNguoiNop.Text, true);
            bdSource.EndEdit();
            adapter.Update(table);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
                MessageBox.Show("Bạn chưa chọn thông tin xoá", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);

            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xoá?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    foreach (DataGridViewRow dgvRow in dataGridView1.SelectedRows)
                        dataGridView1.Rows.Remove(dgvRow);
                    bdSource.EndEdit();
                    adapter.Update(table);
                }
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        void CapNhatDoanPhiChiDoan()
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "update QLDPChiDoan set SoTienNop=Convert(int," + (12 * (int)AccessDatabase.ExecuteScalar("SPLaySoLuongDoanVien", new string[] { "@MaChiDoan" }, new string[] { cbChiDoan.SelectedValue.ToString() }) - TienThieu + int.Parse(txtSoTienNop.Text)).ToString() + "),SoTienThieu=Convert(int,'" + int.Parse((TienThieu - int.Parse(txtSoTienNop.Text)).ToString()) + "') where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "' and NamHoc='" + mtxtNamHoc.Text.Trim() + "'";
            command.Connection = conn;
            command.ExecuteNonQuery();
            MessageBox.Show("Đã cập nhật đoàn phí của  '" + cbChiDoan.Text + "'", "Thông báo");
            LoadDataToDG();
        }
        private void frmQLDPChiDoan_Load(object sender, EventArgs e)
        {
            UserDao dao = new UserDao();
            //str = (string)AccessDatabase.ExecuteScalar("SPLayQuyenHan_R", new string[] { "@QuyenHan" }, new string[] { NguoiDung.QuyenHan.Trim() });
            str = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(2, 4);

            cbLienChi.DataSource = AccessDatabase.ExecuteQuery("Select * from LienChi where  MaLienChi='" + str + "'");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
            cbLienChi.Enabled = false;

            cbChiDoan.DataSource = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaLienChi='" + str + "'"); ;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";
            LoadDataToDG();
        }
    }
}
