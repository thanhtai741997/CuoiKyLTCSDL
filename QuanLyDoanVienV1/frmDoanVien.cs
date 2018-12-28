using QuanLyDoanVienV1.Dao;
using QuanLyDoanVienV1.EF;
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
    public partial class frmDoanVien : Form
    {
        string strMaChiDoan = "";
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tableDoanVien;
        BindingSource bdDoanVien;
        string str = "";
        public frmDoanVien()
        {
            InitializeComponent();
        }
        void LoadDataToCombo(ComboBox cb, string tableName, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableName);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        void LoadDataToTreeViewLop()
        {
            DataTable tableKhoa = AccessDatabase.GetTable("LienChi");
            DataTable tableLop = AccessDatabase.ExecuteQuery("Select * from ChiDoan where TrangThai='K'");
            TreeNode nodeRoot = new TreeNode("Trường Đại học Thủ Dầu Một");
            nodeRoot.Tag = "sai";
            foreach (DataRow dtRowKhoa in tableKhoa.Rows)
            {
                TreeNode nodeKhoa = new TreeNode(dtRowKhoa["TenLienChi"].ToString().Trim());
                nodeKhoa.Tag = "sai";
                foreach (DataRow dtRowLop in tableLop.Rows)
                {
                    if (dtRowLop["MaLienChi"].ToString().Trim().Equals(dtRowKhoa["MaLienChi"].ToString().Trim()))
                    {
                        TreeNode nodeLop = new TreeNode(dtRowLop["TenChiDoan"].ToString().Trim());
                        nodeLop.Tag = dtRowLop["MaChiDoan"].ToString().Trim();
                        nodeKhoa.Nodes.Add(nodeLop);
                    }
                }
                nodeRoot.Nodes.Add(nodeKhoa);
            }
            treeViewLop.Nodes.Add(nodeRoot);
        }
        void LoadDataToTreeViewLop_LC()
        {
            DataTable tableKhoa = AccessDatabase.GetTable("LienChi");
            DataTable tableLop = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaLienChi='" + str + "'");
            TreeNode nodeRoot = new TreeNode("Trường Đại học Thủ Dầu Một");
            nodeRoot.Tag = "sai";
            foreach (DataRow dtRowKhoa in tableKhoa.Rows)
            {
                TreeNode nodeKhoa = new TreeNode(dtRowKhoa["TenLienChi"].ToString().Trim());
                nodeKhoa.Tag = "sai";
                foreach (DataRow dtRowLop in tableLop.Rows)
                {
                    if (dtRowLop["MaLienChi"].ToString().Trim().Equals(dtRowKhoa["MaLienChi"].ToString().Trim()))
                    {
                        TreeNode nodeLop = new TreeNode(dtRowLop["TenChiDoan"].ToString().Trim());
                        nodeLop.Tag = dtRowLop["MaChiDoan"].ToString().Trim();
                        nodeKhoa.Nodes.Add(nodeLop);
                    }
                }
                nodeRoot.Nodes.Add(nodeKhoa);
            }
            treeViewLop.Nodes.Add(nodeRoot);
        }
        void LoadDataToTreeViewLop_CD()
        {
            DataTable tableKhoa = AccessDatabase.GetTable("LienChi");
            DataTable tableLop = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaChiDoan='" + str + "'");
            TreeNode nodeRoot = new TreeNode("Trường Đại học Thủ Dầu Một");
            nodeRoot.Tag = "sai";
            foreach (DataRow dtRowKhoa in tableKhoa.Rows)
            {
                TreeNode nodeKhoa = new TreeNode(dtRowKhoa["TenLienChi"].ToString().Trim());
                nodeKhoa.Tag = "sai";
                foreach (DataRow dtRowLop in tableLop.Rows)
                {
                    if (dtRowLop["MaLienChi"].ToString().Trim().Equals(dtRowKhoa["MaLienChi"].ToString().Trim()))
                    {
                        TreeNode nodeLop = new TreeNode(dtRowLop["TenChiDoan"].ToString().Trim());
                        nodeLop.Tag = dtRowLop["MaChiDoan"].ToString().Trim();
                        nodeKhoa.Nodes.Add(nodeLop);
                    }
                }
                nodeRoot.Nodes.Add(nodeKhoa);
            }
            treeViewLop.Nodes.Add(nodeRoot);
        }
        bool IsExist(ComboBox cb, string FieldName, string TextName)
        {
            foreach (object ob in cb.Items)
            {
                if (((DataRowView)ob)[FieldName].ToString().Equals(TextName))
                {
                    return true;
                }
            }
            return false;
        }
        private void frmDoanVien_Load(object sender, EventArgs e)
        {
            UserDao dao = new UserDao();
            if (User.QuyenHan.Trim() == "*")
            {
                LoadDataToTreeViewLop();
            }
            else
            {
                //string strQuyenHan = (string)AccessDatabase.ExecuteScalar("SPLayQuyenHan_L", new string[] { "@QuyenHan" }, new string[] { User.QuyenHan.Trim() });
                string strQuyenHan = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(0, 2);
                if (strQuyenHan == "LC")
                {
                    str = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(2, 4);
                    LoadDataToTreeViewLop_LC();
                }
                else
                {
                    str = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(2, 4);
                    LoadDataToTreeViewLop_CD();
                }
            }
            LoadDataToCombo(cbDT, "DanToc", "TenDanToc", "MaDanToc");
            LoadDataToCombo(cbTG, "TonGiao", "TenTonGiao", "MaTonGiao");
            LoadDataToCombo(cbChucVu, "ChucVu", "TenChucVu", "MaChucVu");
            LoadDataToCombo(cbTrinhDo, "TrinhDo", "MoTaTrinhDo", "MaTrinhDo");
        }

        void LoadDataToDG()
        {
            if (strMaChiDoan == "")
                tableDoanVien = null;
            else
            {
                adapter = new SqlDataAdapter("Select * from DoanVien where MaChiDoan='" + strMaChiDoan + "' and TrangThai='K'", new SqlConnection(CommonClass.ConnectionString));
                commandBuider = new SqlCommandBuilder(adapter);
                tableDoanVien = new DataTable();
                adapter.Fill(tableDoanVien);
                bdDoanVien = new BindingSource();
                bdDoanVien.DataSource = tableDoanVien;
                dataGridView1.DataSource = bdDoanVien;

                txtMaDV.DataBindings.Clear();
                txtMaDV.DataBindings.Add("Text", bdDoanVien, "MaDoanVien");
                txtTenDV.DataBindings.Clear();
                txtTenDV.DataBindings.Add("Text", bdDoanVien, "TenDoanVien");
                cbTrinhDo.DataBindings.Clear();
                cbTrinhDo.DataBindings.Add("SelectedValue", bdDoanVien, "TrinhDo");

                dateTimePickerNgaySinh.DataBindings.Clear();
                dateTimePickerNgaySinh.DataBindings.Add("Text", bdDoanVien, "NgaySinh");
                dateTimePickerNgayVaoDoan.DataBindings.Clear();
                dateTimePickerNgayVaoDoan.DataBindings.Add("Text", bdDoanVien, "NgayVaoDoan");

                txtGhiChu.DataBindings.Clear();
                txtGhiChu.DataBindings.Add("Text", bdDoanVien, "GhiChu");

                cbDT.DataBindings.Clear();
                cbDT.DataBindings.Add("SelectedValue", bdDoanVien, "MaDanToc");
                cbTG.DataBindings.Clear();
                cbTG.DataBindings.Add("SelectedValue", bdDoanVien, "MaTonGiao");
                txtQueQuan.DataBindings.Clear();
                txtQueQuan.DataBindings.Add("Text", bdDoanVien, "QueQuan");
                cbChucVu.DataBindings.Clear();
                cbChucVu.DataBindings.Add("SelectedValue", bdDoanVien, "MaChucVu");
            }
        }

        private void treeViewLop_AfterSelect(object sender, TreeViewEventArgs e)
        {
            if (!e.Node.Tag.ToString().Equals("sai"))
            {
                txtLop.Text = e.Node.Text.Trim();
                strMaChiDoan = e.Node.Tag.ToString().Trim();
                LoadDataToDG();
            }
            else
            {
                txtLop.Text = "";
                strMaChiDoan = "";
                dataGridView1.DataSource = null;
            }
        }
        string LayMaDoanVien()
        {
            int maxValue = 0;
            int Value = 0;
            object ob = AccessDatabase.ExecuteScalar("SPLayMaDoanVien", new string[] { "@parMaChiDoan" }, new string[] { treeViewLop.SelectedNode.Tag.ToString() });
            int.TryParse(ob.ToString(), out maxValue);
            dataGridView1.Sort(dataGridView1.Columns["MaDoanVien"], ListSortDirection.Ascending);
            try
            {
                string st = dataGridView1.Rows[dataGridView1.Rows.Count - 2].Cells["MaDoanVien"].Value.ToString().Substring(4).Trim();
                Value = int.Parse(st);
            }
            catch { }
            maxValue = (maxValue < Value) ? Value : maxValue;
            maxValue++;
            return CommonClass.TaoXau(treeViewLop.SelectedNode.Tag.ToString(), 7, maxValue);

        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            string strMaDoanVien = LayMaDoanVien();
            bdDoanVien.AddNew();
            txtMaDV.Text = strMaDoanVien;
            txtTenDV.Focus();
            txtTenDV.Text = "";
            cbTrinhDo.Text = "";

            cbDT.Text = "";
            cbTG.Text = "";
            cbChucVu.Text = "";
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtTenDV.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập tên đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTenDV.Focus();
                return;
            }

            if (cbDT.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn dân tộc", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbDT.Focus();
                return;
            }

            if (!IsExist(cbDT, "TenDanToc", cbDT.Text) && MessageBox.Show("Có thêm mới dân tộc không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                string st = cbDT.Text.Trim();
                AccessDatabase.Insert("insert into DanToc(MaDanToc,TenDanToc) values('" + AccessDatabase.TaoMa("DT", 4, "SPLayMaDanToc") + "','" + cbDT.Text.Trim() + "')");
                LoadDataToCombo(cbDT, "DanToc", "TenDanToc", "MaDanToc");
                foreach (object ob in cbDT.Items)
                {
                    if (((DataRowView)ob)["TenDanToc"].ToString().Equals(st))
                    {
                        cbDT.SelectedItem = ob;
                        break;
                    }
                }
            }
            if (cbTG.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tôn giáo", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbTG.Focus();
                return;
            }
            if (!IsExist(cbTG, "TenTonGiao", cbTG.Text) && MessageBox.Show("Có thêm mới tôn giáo không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                string st = cbTG.Text.Trim();
                AccessDatabase.Insert("insert into TonGiao(MaTonGiao,TenTonGiao) values('" + AccessDatabase.TaoMa("TG", 4, "SPLayMaTonGiao") + "','" + cbTG.Text.Trim() + "')");
                LoadDataToCombo(cbTG, "TonGiao", "TenTonGiao", "MaTonGiao");
                foreach (object ob in cbTG.Items)
                {
                    if (((DataRowView)ob)["TenTonGiao"].ToString().Equals(st))
                    {
                        cbTG.SelectedItem = ob;
                        break;
                    }
                }
            }

            if (txtQueQuan.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập quê quán của đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtQueQuan.Focus();
                return;
            }

            if (cbTrinhDo.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn trình độ của đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbTrinhDo.Focus();
                return;
            }
            if (cbChucVu.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn chức vụ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbChucVu.Focus();
                return;
            }
            else
            {
                dataGridView1.CurrentRow.Cells["MaChiDoan"].Value = (object)(strMaChiDoan);
                dataGridView1.CurrentRow.Cells["NgaySinh"].Value = (object)(dateTimePickerNgaySinh.Text);
                dataGridView1.CurrentRow.Cells["NgayVaoDoan"].Value = (object)(dateTimePickerNgayVaoDoan.Text);
                if (radioButtonNam.Checked == true)
                {
                    dataGridView1.CurrentRow.Cells["GioiTinh"].Value = (object)(radioButtonNam.Text);
                }
                else
                {
                    dataGridView1.CurrentRow.Cells["GioiTinh"].Value = (object)(radioButtonNu.Text);
                }
                if (radioButtonDangHoc.Checked == true)
                {
                    dataGridView1.CurrentRow.Cells["TrangThai"].Value = (object)"K";
                }
                else
                {
                    dataGridView1.CurrentRow.Cells["TrangThai"].Value = (object)"C";
                }
                txtTenDV.Text = CommonClass.ChuanXau(txtTenDV.Text, true);
                //txtQueQuan.Text = CommonClass.ChuanXau(txtQueQuan.Text, false);
                cbTrinhDo.Text = CommonClass.ChuanXau(cbTrinhDo.Text, false);
                dataGridView1.CurrentRow.Cells["QueQuan"].Value = (object)txtQueQuan.Text;
                bdDoanVien.EndEdit();
                adapter.Update(tableDoanVien);
                btnThem.Enabled = true;
                btnXoa.Enabled = true;
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
                MessageBox.Show("Bạn chưa chọn thông tin xoá!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            else
                if (MessageBox.Show("Bạn chắc chắn muốn xoá?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                foreach (DataGridViewRow dgvRow in dataGridView1.SelectedRows)
                    dataGridView1.Rows.Remove(dgvRow);
                bdDoanVien.EndEdit();
                adapter.Update(tableDoanVien);
            }
        }

        private void dataGridView1_CurrentCellChanged(object sender, EventArgs e)
        {
            DataGridViewCell cell = dataGridView1.CurrentCell;
            if (cell == null) return;
            if (cell.RowIndex < dataGridView1.Rows.Count - 1)
            {
                if (cell.Value == null) return;
                if (dataGridView1.Rows[cell.RowIndex].Cells["GioiTinh"].Value.ToString().Trim().ToUpper().Equals("NAM"))
                {
                    radioButtonNam.Checked = true;
                    radioButtonNu.Checked = false;
                }
                else
                {
                    radioButtonNam.Checked = false;
                    radioButtonNu.Checked = true;
                }
                if (dataGridView1.Rows[cell.RowIndex].Cells["TrangThai"].Value.ToString().Trim().ToUpper().Equals("C"))
                {
                    radioButtonRaTruong.Checked = true;
                    radioButtonDangHoc.Checked = false;
                }
                else
                {
                    radioButtonRaTruong.Checked = false;
                    radioButtonDangHoc.Checked = true;
                }
            }
        }

        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            foreach (DataGridViewRow dvgRow in dataGridView1.Rows)
                foreach (DataGridViewCell cell in dataGridView1.CurrentRow.Cells)
                    cell.ContextMenuStrip = contextMenuStrip1;
        }

        private void chuyểnChiĐoànToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmChuyenDoan frm = new frmChuyenDoan();
            frm.txtMaDoanVien.Text = dataGridView1.CurrentRow.Cells["MaDoanVien"].Value.ToString();
            frm.txtTenChiDoanCu.Text = txtLop.Text;
            frmChuyenDoan.strMaLopCu = strMaChiDoan;
            frm.ShowDialog();
        }

        private void chuyểnSinhHoạtĐoànToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmChuyenSinhHoatDoan frm = new frmChuyenSinhHoatDoan();
            frm.cbChiDoan.Enabled = false;
            frm.cbChiDoan.Text = txtLop.Text.Trim();
            frm.cbDoanVien.Enabled = false;
            frm.cbDoanVien.Text = txtTenDV.Text;
            frm.cbLienChi.Text = (string)AccessDatabase.ExecuteScalar("SPTenLienChi", new string[] { "@MaChiDoan" }, new string[] { dataGridView1.CurrentRow.Cells["MaChiDoan"].Value.ToString() });
            frm.cbLienChi.Enabled = false;
            frm.txtMaChuyen.Text = AccessDatabase.TaoMa("CSH", 10, "SPLayMaChuyenSinhHoatDoan");
            frmChuyenSinhHoatDoan.strMaDoanVien = dataGridView1.CurrentRow.Cells["MaDoanVien"].Value.ToString();
            frm.ShowDialog();
        }
    }
}
