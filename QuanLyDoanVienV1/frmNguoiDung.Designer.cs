namespace QuanLyDoanVienV1
{
    partial class frmNguoiDung
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnLuu = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.gBChiDoan = new System.Windows.Forms.GroupBox();
            this.cbChiDoan = new System.Windows.Forms.ComboBox();
            this.gBLienChi = new System.Windows.Forms.GroupBox();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.rbtChiDoan = new System.Windows.Forms.RadioButton();
            this.rbtLienChi = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.txtMaND = new System.Windows.Forms.TextBox();
            this.txtMatkhau = new System.Windows.Forms.TextBox();
            this.txtTendangnhap = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lb = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.gBChiDoan.SuspendLayout();
            this.gBLienChi.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnThoat);
            this.groupBox2.Controls.Add(this.btnThem);
            this.groupBox2.Controls.Add(this.btnXoa);
            this.groupBox2.Controls.Add(this.btnLuu);
            this.groupBox2.Location = new System.Drawing.Point(498, 283);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(345, 44);
            this.groupBox2.TabIndex = 8;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Chức năng";
            // 
            // btnThoat
            // 
            this.btnThoat.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnThoat.Location = new System.Drawing.Point(259, 15);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(65, 23);
            this.btnThoat.TabIndex = 7;
            this.btnThoat.Text = "Th&oát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(14, 15);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(68, 23);
            this.btnThem.TabIndex = 4;
            this.btnThem.Text = "&Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(179, 15);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(67, 23);
            this.btnXoa.TabIndex = 6;
            this.btnXoa.Text = "&Xoá";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnLuu
            // 
            this.btnLuu.Location = new System.Drawing.Point(94, 15);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(67, 23);
            this.btnLuu.TabIndex = 5;
            this.btnLuu.Text = "&Lưu";
            this.btnLuu.UseVisualStyleBackColor = true;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.gBChiDoan);
            this.groupBox1.Controls.Add(this.gBLienChi);
            this.groupBox1.Controls.Add(this.panel1);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txtMaND);
            this.groupBox1.Controls.Add(this.txtMatkhau);
            this.groupBox1.Controls.Add(this.txtTendangnhap);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.lb);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Location = new System.Drawing.Point(498, 129);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(345, 148);
            this.groupBox1.TabIndex = 7;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin cập nhật";
            // 
            // gBChiDoan
            // 
            this.gBChiDoan.Controls.Add(this.cbChiDoan);
            this.gBChiDoan.Location = new System.Drawing.Point(182, 91);
            this.gBChiDoan.Name = "gBChiDoan";
            this.gBChiDoan.Size = new System.Drawing.Size(144, 48);
            this.gBChiDoan.TabIndex = 7;
            this.gBChiDoan.TabStop = false;
            this.gBChiDoan.Text = "Chọn chi đoàn";
            this.gBChiDoan.Visible = false;
            // 
            // cbChiDoan
            // 
            this.cbChiDoan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbChiDoan.FormattingEnabled = true;
            this.cbChiDoan.Location = new System.Drawing.Point(10, 19);
            this.cbChiDoan.Name = "cbChiDoan";
            this.cbChiDoan.Size = new System.Drawing.Size(128, 21);
            this.cbChiDoan.TabIndex = 0;
            this.cbChiDoan.SelectedIndexChanged += new System.EventHandler(this.cbChiDoan_SelectedIndexChanged);
            // 
            // gBLienChi
            // 
            this.gBLienChi.Controls.Add(this.cbLienChi);
            this.gBLienChi.Location = new System.Drawing.Point(176, 92);
            this.gBLienChi.Name = "gBLienChi";
            this.gBLienChi.Size = new System.Drawing.Size(143, 50);
            this.gBLienChi.TabIndex = 4;
            this.gBLienChi.TabStop = false;
            this.gBLienChi.Text = "Chọn liên chi";
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(16, 19);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(121, 21);
            this.cbLienChi.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.rbtChiDoan);
            this.panel1.Controls.Add(this.rbtLienChi);
            this.panel1.Location = new System.Drawing.Point(94, 92);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(76, 50);
            this.panel1.TabIndex = 3;
            // 
            // rbtChiDoan
            // 
            this.rbtChiDoan.AutoSize = true;
            this.rbtChiDoan.Location = new System.Drawing.Point(3, 30);
            this.rbtChiDoan.Name = "rbtChiDoan";
            this.rbtChiDoan.Size = new System.Drawing.Size(68, 17);
            this.rbtChiDoan.TabIndex = 0;
            this.rbtChiDoan.TabStop = true;
            this.rbtChiDoan.Text = "Chi đoàn";
            this.rbtChiDoan.UseVisualStyleBackColor = true;
            this.rbtChiDoan.CheckedChanged += new System.EventHandler(this.rbtChiDoan_CheckedChanged);
            // 
            // rbtLienChi
            // 
            this.rbtLienChi.AutoSize = true;
            this.rbtLienChi.Checked = true;
            this.rbtLienChi.Location = new System.Drawing.Point(3, 3);
            this.rbtLienChi.Name = "rbtLienChi";
            this.rbtLienChi.Size = new System.Drawing.Size(62, 17);
            this.rbtLienChi.TabIndex = 0;
            this.rbtLienChi.TabStop = true;
            this.rbtLienChi.Text = "Liên chi";
            this.rbtLienChi.UseVisualStyleBackColor = true;
            this.rbtLienChi.CheckedChanged += new System.EventHandler(this.rbtLienChi_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(25, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã người dùng";
            // 
            // txtMaND
            // 
            this.txtMaND.Location = new System.Drawing.Point(125, 13);
            this.txtMaND.Name = "txtMaND";
            this.txtMaND.ReadOnly = true;
            this.txtMaND.Size = new System.Drawing.Size(194, 20);
            this.txtMaND.TabIndex = 0;
            // 
            // txtMatkhau
            // 
            this.txtMatkhau.Location = new System.Drawing.Point(125, 65);
            this.txtMatkhau.Name = "txtMatkhau";
            this.txtMatkhau.PasswordChar = '*';
            this.txtMatkhau.Size = new System.Drawing.Size(194, 20);
            this.txtMatkhau.TabIndex = 2;
            // 
            // txtTendangnhap
            // 
            this.txtTendangnhap.Location = new System.Drawing.Point(125, 39);
            this.txtTendangnhap.Name = "txtTendangnhap";
            this.txtTendangnhap.Size = new System.Drawing.Size(194, 20);
            this.txtTendangnhap.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(25, 46);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Tên đăng nhập";
            // 
            // lb
            // 
            this.lb.AutoSize = true;
            this.lb.Location = new System.Drawing.Point(25, 98);
            this.lb.Name = "lb";
            this.lb.Size = new System.Drawing.Size(59, 13);
            this.lb.TabIndex = 0;
            this.lb.Text = "Quyền hạn";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(25, 72);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 13);
            this.label4.TabIndex = 0;
            this.label4.Text = "Mật khẩu";
            // 
            // dataGridView1
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(498, 333);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(345, 139);
            this.dataGridView1.TabIndex = 9;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.Blue;
            this.label3.Location = new System.Drawing.Point(538, 85);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(254, 24);
            this.label3.TabIndex = 10;
            this.label3.Text = "DANH MỤC NGƯỜI DÙNG";
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // frmNguoiDung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label3);
            this.Name = "frmNguoiDung";
            this.Text = "Cập nhật người dùng";
            this.Load += new System.EventHandler(this.frmNguoiDung_Load);
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.gBChiDoan.ResumeLayout(false);
            this.gBLienChi.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox gBChiDoan;
        private System.Windows.Forms.ComboBox cbChiDoan;
        private System.Windows.Forms.GroupBox gBLienChi;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton rbtChiDoan;
        private System.Windows.Forms.RadioButton rbtLienChi;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtMaND;
        private System.Windows.Forms.TextBox txtMatkhau;
        private System.Windows.Forms.TextBox txtTendangnhap;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lb;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label3;
    }
}