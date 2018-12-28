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
    public partial class frmQLDPDoanVien : Form
    {
        public frmQLDPDoanVien()
        {
            InitializeComponent();
        }
        BindingSource bdSource;
        DataTable table, tb, tb1;
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        int TienThieu = 0;
        string str = "";
        void LoadDataToCombo(ComboBox cb, string tableName, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableName);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        void LoadDataToDG()
        {
            adapter = new SqlDataAdapter("Select * from QLDPDoanVien where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan='" + str + "')", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            table = new DataTable();
            adapter.Fill(table);
            bdSource = new BindingSource();
            bdSource.DataSource = table;
            dataGridView1.DataSource = bdSource;
            txtMaQuanLy.DataBindings.Clear();
            txtMaQuanLy.DataBindings.Add("Text", bdSource, "IDQLDPDoanVien");
            mtxtNamHoc.DataBindings.Clear();
            mtxtNamHoc.DataBindings.Add("Text", bdSource, "NamHoc");
            txtSoTienNop.DataBindings.Clear();
            txtSoTienNop.DataBindings.Add("Text", bdSource, "SoTienNop");
            txtSoTienThieu.DataBindings.Clear();
            txtSoTienThieu.DataBindings.Add("Text", bdSource, "SoTienThieu");
            txtNguoiNhan.DataBindings.Clear();
            txtNguoiNhan.DataBindings.Add("Text", bdSource, "NguoiNhan");
            cbDoanVien.DataBindings.Clear();
            cbDoanVien.DataBindings.Add("SelectedValue", bdSource, "MaDoanVien");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdSource.AddNew();
            txtMaQuanLy.Text = AccessDatabase.TaoMa("DPDV", 8, "SPLayMaQLDPDoanVien");
            txtSoTienNop.Text = "";
            mtxtNamHoc.Text = "";

            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (cbDoanVien.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn đoàn viên nộp", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbDoanVien.Focus();
                return;
            }
            if (int.Parse(txtSoTienNop.Text) > 12 || int.Parse(txtSoTienNop.Text) < 1)
            {
                MessageBox.Show("Đoàn phí đoàn viên phải đóng theo quy định là 12.000/năm", "Chú ý", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtSoTienNop.Focus();
                return;
            }
            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            if (mtxtNamHoc.Text.Length > 4 || mtxtNamHoc.Text.Length < 4)
            {
                MessageBox.Show("Năm học là xâu có 4 kí tự số  ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            tb1 = new DataTable();
            tb1 = AccessDatabase.ExecuteQuery("Select * From QLDPDoanVien Where MaDoanVien='" + cbDoanVien.SelectedValue.ToString() + "' And NamHoc='" + mtxtNamHoc.Text.Trim() + "'And IDQLDPDoanVien!='" + txtMaQuanLy.Text.Trim() + "' and SoTienNop<12");
            if (tb1.Rows.Count >= 1)
            {
                TienThieu = int.Parse(AccessDatabase.ExecuteScalar("SPDoanPhiDoanVien", new string[] { "@MaDoanVien", "@NamHoc" }, new string[] { cbDoanVien.SelectedValue.ToString(), mtxtNamHoc.Text.Trim() }).ToString());
                if (int.Parse(txtSoTienNop.Text) > TienThieu)
                {
                    MessageBox.Show("Đoàn viên " + cbDoanVien.Text + " trong năm học " + mtxtNamHoc.Text.Trim() + " đóng đoàn phí thiếu " + TienThieu + " nghìn đồng\nBạn nộp thừa tiền ", "Chú ý");
                    txtSoTienNop.Focus();
                    return;
                }
                txtSoTienThieu.Text = (TienThieu - int.Parse(txtSoTienNop.Text)).ToString();
                CapNhatDoanPhiDoanVien();
                return;

            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * From QLDPDoanVien Where MaDoanVien='" + cbDoanVien.SelectedValue.ToString() + "' And NamHoc='" + mtxtNamHoc.Text.Trim() + "'And IDQLDPDoanVien!='" + txtMaQuanLy.Text.Trim() + "' and SoTienNop=12");
            if (tb.Rows.Count >= 1)
            {
                MessageBox.Show("Đoàn viên " + cbDoanVien.Text + "  trong năm học " + mtxtNamHoc.Text + " đã nộp đoàn phí", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (txtNguoiNhan.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn người nhận", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtNguoiNhan.Focus();
                return;
            }
            txtSoTienThieu.Text = (12 - int.Parse(txtSoTienNop.Text)).ToString();
            txtNguoiNhan.Text = CommonClass.ChuanXau(txtNguoiNhan.Text, true);
            bdSource.EndEdit();
            adapter.Update(table);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
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

        void CapNhatDoanPhiDoanVien()
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "update QLDPDoanVien set SoTienNop=Convert(int," + (12 - TienThieu + int.Parse(txtSoTienNop.Text)).ToString() + "),SoTienThieu=Convert(int,'" + int.Parse((TienThieu - int.Parse(txtSoTienNop.Text)).ToString()) + "') where MaDoanVien='" + cbDoanVien.SelectedValue.ToString() + "' and NamHoc='" + mtxtNamHoc.Text.Trim() + "'";
            command.Connection = conn;
            command.ExecuteNonQuery();
            MessageBox.Show("Đã cập nhật đoàn phí của đoàn viên '" + cbDoanVien.Text + "'", "Thông báo");
            LoadDataToDG();
        }
        private void frmQLDPDoanVien_Load(object sender, EventArgs e)
        {
            UserDao dao = new UserDao();
            //str = (string)AccessDatabase.ExecuteScalar("SPLayQuyenHan_R", new string[] { "@QuyenHan" }, new string[] { NguoiDung.QuyenHan.Trim() });
            str = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(2, 4);

            cbLienChi.DataSource = AccessDatabase.ExecuteQuery("Select * from LienChi where MaLienChi in(select MaLienChi from ChiDoan where MaChiDoan='" + str + "')");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
            cbLienChi.Enabled = false;
            cbChiDoan.DataSource = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaChiDoan='" + str + "'"); ;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";
            cbChiDoan.Enabled = false;

            cbDoanVien.DataSource = AccessDatabase.ExecuteQuery("Select * from DoanVien where MaChiDoan='" + str + "'"); ;
            cbDoanVien.DisplayMember = "TenDoanVien";
            cbDoanVien.ValueMember = "MaDoanVien";

            LoadDataToDG();
        }
    }
}
