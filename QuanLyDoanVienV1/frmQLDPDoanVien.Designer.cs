namespace QuanLyDoanVienV1
{
    partial class frmQLDPDoanVien
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnLuu = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.mtxtNamHoc = new System.Windows.Forms.MaskedTextBox();
            this.txtNguoiNhan = new System.Windows.Forms.TextBox();
            this.txtSoTienThieu = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.cbDoanVien = new System.Windows.Forms.ComboBox();
            this.cbChiDoan = new System.Windows.Forms.ComboBox();
            this.txtSoTienNop = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtMaQuanLy = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle4;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(151, 277);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(499, 152);
            this.dataGridView1.TabIndex = 11;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnThoat);
            this.groupBox2.Controls.Add(this.btnXoa);
            this.groupBox2.Controls.Add(this.btnLuu);
            this.groupBox2.Controls.Add(this.btnThem);
            this.groupBox2.Location = new System.Drawing.Point(151, 223);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(499, 48);
            this.groupBox2.TabIndex = 10;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Chức năng";
            // 
            // btnThoat
            // 
            this.btnThoat.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnThoat.Location = new System.Drawing.Point(390, 19);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 23);
            this.btnThoat.TabIndex = 4;
            this.btnThoat.Text = "Th&oát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(268, 19);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 3;
            this.btnXoa.Text = "&Xoá";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnLuu
            // 
            this.btnLuu.Location = new System.Drawing.Point(149, 19);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(75, 23);
            this.btnLuu.TabIndex = 2;
            this.btnLuu.Text = "&Lưu";
            this.btnLuu.UseVisualStyleBackColor = true;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(27, 19);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 23);
            this.btnThem.TabIndex = 1;
            this.btnThem.Text = "&Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbLienChi);
            this.groupBox1.Controls.Add(this.mtxtNamHoc);
            this.groupBox1.Controls.Add(this.txtNguoiNhan);
            this.groupBox1.Controls.Add(this.txtSoTienThieu);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.cbDoanVien);
            this.groupBox1.Controls.Add(this.cbChiDoan);
            this.groupBox1.Controls.Add(this.txtSoTienNop);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txtMaQuanLy);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(151, 61);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(499, 156);
            this.groupBox1.TabIndex = 9;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin quản lý";
            // 
            // cbLienChi
            // 
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(112, 57);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(125, 21);
            this.cbLienChi.TabIndex = 1;
            // 
            // mtxtNamHoc
            // 
            this.mtxtNamHoc.Location = new System.Drawing.Point(340, 85);
            this.mtxtNamHoc.Mask = "0000";
            this.mtxtNamHoc.Name = "mtxtNamHoc";
            this.mtxtNamHoc.Size = new System.Drawing.Size(125, 20);
            this.mtxtNamHoc.TabIndex = 6;
            this.mtxtNamHoc.ValidatingType = typeof(int);
            // 
            // txtNguoiNhan
            // 
            this.txtNguoiNhan.Location = new System.Drawing.Point(340, 112);
            this.txtNguoiNhan.Name = "txtNguoiNhan";
            this.txtNguoiNhan.Size = new System.Drawing.Size(125, 20);
            this.txtNguoiNhan.TabIndex = 7;
            // 
            // txtSoTienThieu
            // 
            this.txtSoTienThieu.Location = new System.Drawing.Point(340, 60);
            this.txtSoTienThieu.Name = "txtSoTienThieu";
            this.txtSoTienThieu.ReadOnly = true;
            this.txtSoTienThieu.Size = new System.Drawing.Size(125, 20);
            this.txtSoTienThieu.TabIndex = 5;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(254, 120);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(62, 13);
            this.label7.TabIndex = 0;
            this.label7.Text = "Người nhận";
            // 
            // cbDoanVien
            // 
            this.cbDoanVien.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbDoanVien.FormattingEnabled = true;
            this.cbDoanVien.Location = new System.Drawing.Point(112, 111);
            this.cbDoanVien.Name = "cbDoanVien";
            this.cbDoanVien.Size = new System.Drawing.Size(125, 21);
            this.cbDoanVien.TabIndex = 3;
            // 
            // cbChiDoan
            // 
            this.cbChiDoan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbChiDoan.FormattingEnabled = true;
            this.cbChiDoan.Location = new System.Drawing.Point(112, 84);
            this.cbChiDoan.Name = "cbChiDoan";
            this.cbChiDoan.Size = new System.Drawing.Size(125, 21);
            this.cbChiDoan.TabIndex = 2;
            // 
            // txtSoTienNop
            // 
            this.txtSoTienNop.Location = new System.Drawing.Point(340, 37);
            this.txtSoTienNop.Name = "txtSoTienNop";
            this.txtSoTienNop.Size = new System.Drawing.Size(125, 20);
            this.txtSoTienNop.TabIndex = 4;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(25, 119);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Đoàn viên nộp";
            // 
            // txtMaQuanLy
            // 
            this.txtMaQuanLy.Location = new System.Drawing.Point(112, 33);
            this.txtMaQuanLy.Name = "txtMaQuanLy";
            this.txtMaQuanLy.ReadOnly = true;
            this.txtMaQuanLy.Size = new System.Drawing.Size(125, 20);
            this.txtMaQuanLy.TabIndex = 0;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(254, 40);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(61, 13);
            this.label8.TabIndex = 0;
            this.label8.Text = "Số tiền nộp";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(254, 66);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(66, 13);
            this.label6.TabIndex = 0;
            this.label6.Text = "Số tiền thiếu";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(25, 63);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Liên chi";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(25, 93);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(50, 13);
            this.label4.TabIndex = 0;
            this.label4.Text = "Chi đoàn";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(254, 93);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(50, 13);
            this.label9.TabIndex = 0;
            this.label9.Text = "Năm học";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(25, 34);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã quản lý";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(248, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(322, 24);
            this.label1.TabIndex = 8;
            this.label1.Text = "QUẢN LÝ ĐOÀN PHÍ ĐOÀN VIÊN";
            // 
            // frmQLDPDoanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Name = "frmQLDPDoanVien";
            this.Text = "Cập nhật quản lý Đoàn phí";
            this.Load += new System.EventHandler(this.frmQLDPDoanVien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.MaskedTextBox mtxtNamHoc;
        private System.Windows.Forms.TextBox txtNguoiNhan;
        private System.Windows.Forms.TextBox txtSoTienThieu;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cbDoanVien;
        private System.Windows.Forms.ComboBox cbChiDoan;
        private System.Windows.Forms.TextBox txtSoTienNop;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtMaQuanLy;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}