using CrystalDecisions.CrystalReports.Engine;
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
    public partial class frmChuyenSinhHoatDoan : Form
    {
        public frmChuyenSinhHoatDoan()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tbChuyenDoan, tb1;
        public static string strMaDoanVien;
        BindingSource bdChiDoan, bdDoanVien, bdChuyenDoan;
        void LoadDataToDG(SqlDataAdapter adapter)
        {
            commandBuider = new SqlCommandBuilder(adapter);
            tbChuyenDoan = new DataTable();
            adapter.Fill(tbChuyenDoan);
            bdChuyenDoan = new BindingSource();
            bdChuyenDoan.DataSource = tbChuyenDoan;
            dataGridView1.DataSource = bdChuyenDoan;

            txtMaChuyen.DataBindings.Clear();
            txtMaChuyen.DataBindings.Add("Text", bdChuyenDoan, "IDChuyenSinhHoat");
            txtLiDo.DataBindings.Clear();
            txtLiDo.DataBindings.Add("Text", bdChuyenDoan, "LiDoChuyen");
            dateTimePicker1.DataBindings.Clear();
            dateTimePicker1.DataBindings.Add("Text", bdChuyenDoan, "NgayChuyen");
            txtDonViMoi.DataBindings.Clear();
            txtDonViMoi.DataBindings.Add("Text", bdChuyenDoan, "NoiChuyenDen");
            cbDoanVien.DataBindings.Clear();
            cbDoanVien.DataBindings.Add("SelectedValue", bdChuyenDoan, "MaDoanVien");

        }
        void LoadDataToCombo(ComboBox cb, string tableNam, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableNam);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdChiDoan == null) return;
            bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("Select * from ChuyenSinhHoatDoan where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan IN (Select MaChiDoan from ChiDoan where MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'))", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
            btnCapGiay.Enabled = true;
        }

        private void cbChiDoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdDoanVien == null) return;
            bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("Select * from ChuyenSinhHoatDoan where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "')", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
            btnCapGiay.Enabled = true;
            cbDoanVien.DataSource = AccessDatabase.ExecuteQuery("Select DoanVien.MaDoanVien,DoanVien.TenDoanVien from DoanVien inner join ChuyenSinhHoatDoan on DoanVien.MaDoanVien=ChuyenSinhHoatDoan.MaDoanVien where DoanVien.MaDoanVien in(Select MaDoanVien from DoanVien where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "') ");
            if (cbDoanVien.DataSource == null)
            {
                cbDoanVien.SelectedValue = "";
            }
            else
            {
                cbDoanVien.DisplayMember = "TenDoanVien";
                cbDoanVien.ValueMember = "MaDoanVien";
            }
        }

        private void cbDoanVien_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.CurrentCell == null) return;
            if (dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].IsNewRow) return;

            var dao = new DoanVienDao();
            textBox1.Text = dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString();

            var lienChi = dao.layLienChi(dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString());
            textBox2.Text = lienChi.MaLienChi;

            var chiDoan = dao.layChiDoan(dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString());
            textBox3.Text = chiDoan.MaChiDoan;

            cbLienChi.SelectedValue = lienChi.MaLienChi;
            cbChiDoan.SelectedValue = chiDoan.MaChiDoan;
            cbDoanVien.SelectedValue = dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString();
        }
        private void btnBaoCaoDoanPhi_Click(object sender, EventArgs e)
        {
            tb1 = new DataTable();
            tb1 = AccessDatabase.ExecuteQuery("Select * from VWDoanPhiDoanVien where MaDoanVien='" + cbDoanVien.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRDoanPhiDoanVien rpt = new CRDoanPhiDoanVien();
            ((TextObject)rpt.Section2.ReportObjects["TenDoanVien"]).Text = cbDoanVien.Text;
            ((TextObject)rpt.Section2.ReportObjects["TenChiDoan"]).Text = cbChiDoan.Text;
            ((TextObject)rpt.Section2.ReportObjects["TenLienChi"]).Text = cbLienChi.Text;
            rpt.SetDataSource(tb1);
            frm.crystalReportViewer1.ReportSource = rpt;
            frm.ShowDialog();
        }

        private void btnCapGiay_Click(object sender, EventArgs e)
        {
            frmBaoCao frm = new frmBaoCao();
            CRGiayChuyenSinhHoat rpt = new CRGiayChuyenSinhHoat();
            ((TextObject)rpt.Section2.ReportObjects["DonViMoi"]).Text = txtDonViMoi.Text;
            ((TextObject)rpt.Section2.ReportObjects["TenDoanVien"]).Text = cbDoanVien.Text;
            ((TextObject)rpt.Section2.ReportObjects["TenChiDoan"]).Text = cbChiDoan.Text;
            ((TextObject)rpt.Section2.ReportObjects["TenLienChi"]).Text = cbLienChi.Text;
            ((TextObject)rpt.Section2.ReportObjects["NgayDongDoanPhi"]).Text = dateTimePicker1.Text;
            frm.crystalReportViewer1.ReportSource = rpt;
            frm.ShowDialog();
        }

        private void btnQuayLai_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmChuyenSinhHoatDoan_Load(object sender, EventArgs e)
        {
            if (txtMaChuyen.Text != "")
            {
                btnChuyenSinhHoat.Enabled = true;
                btnCapGiay.Enabled = true;
                btnBaoCaoDoanPhi.Enabled = true;
                adapter = new SqlDataAdapter("Select * from ChuyenSinhHoatDoan", new SqlConnection(CommonClass.ConnectionString));
                LoadDataToDG(adapter);
                bdChuyenDoan.AddNew();
                //txtMaChuyen.Text = AccessDatabase.TaoMa("CSH", 10, "SPLayMaChuyenSinhHoatDoan");
                txtMaChuyen.Text = new DoanVienDao().TaoMa("CSH", 10);
                return;
            }
            btnChuyenSinhHoat.Enabled = false;
            btnCapGiay.Enabled = false;
            //btnBaoCaoDoanPhi.Enabled = false;

            LoadDataToCombo(cbLienChi, "LienChi", "TenLienChi", "MaLienChi");
            bdChiDoan = new BindingSource();
            bdChiDoan.DataSource = AccessDatabase.GetTable("ChiDoan");
            cbChiDoan.DataSource = bdChiDoan;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";
            bdDoanVien = new BindingSource();
            bdDoanVien.DataSource = AccessDatabase.GetTable("DoanVien");
            cbDoanVien.DataSource = bdDoanVien;
            cbDoanVien.DisplayMember = "TenDoanVien";
            cbDoanVien.ValueMember = "MaDoanVien";
            if (cbLienChi.DataSource != null)
            {
                bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
                if (cbChiDoan.DataSource != null)
                {
                    bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
                }
            }
        }

        void CapNhatBangDoanVien()
        {
            var dao = new DoanVienDao();
            bool res = dao.capnhatTrangThai(strMaDoanVien, "C");
            if (res)
            {
                if (MessageBox.Show("Chuyển sinh hoạt đoàn thành công\n Bạn có muốn tiếp tục chuyển nữa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No)
                    this.Close();
            }
            else
            {
                MessageBox.Show("Chuyển không thành công. Vui lòng kiểm tra lại.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            
        }
        private void btnChuyenSinhHoat_Click(object sender, EventArgs e)
        {
            if (txtDonViMoi.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập đơn vị chuyển đến", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtDonViMoi.Focus();
                return;
            }
            if (txtLiDo.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập lí do chuyển", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtLiDo.Focus();
                return;
            }
            txtLiDo.Text = CommonClass.ChuanXau(txtLiDo.Text, false);
            dataGridView1.CurrentRow.Cells["NgayChuyen"].Value = (object)dateTimePicker1.Text;
            dataGridView1.CurrentRow.Cells["MaDoanVien"].Value = (object)strMaDoanVien;
            bdChuyenDoan.EndEdit();
            adapter.Update(tbChuyenDoan);
            CapNhatBangDoanVien();
        }
    }
}
