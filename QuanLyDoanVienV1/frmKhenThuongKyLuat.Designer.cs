namespace QuanLyDoanVienV1
{
    partial class frmKhenThuongKyLuat
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.radioButtonKiLuat = new System.Windows.Forms.RadioButton();
            this.radioButtonKhenThuong = new System.Windows.Forms.RadioButton();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btr = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.cbTenDoanVien = new System.Windows.Forms.ComboBox();
            this.cbChiDoan = new System.Windows.Forms.ComboBox();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtMaKTKL = new System.Windows.Forms.TextBox();
            this.txtHinhThuc = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtLiDo = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox3.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.panel1);
            this.groupBox3.Location = new System.Drawing.Point(160, 56);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(266, 46);
            this.groupBox3.TabIndex = 10;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Chọn hình thức";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.radioButtonKiLuat);
            this.panel1.Controls.Add(this.radioButtonKhenThuong);
            this.panel1.Location = new System.Drawing.Point(9, 13);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(251, 27);
            this.panel1.TabIndex = 0;
            // 
            // radioButtonKiLuat
            // 
            this.radioButtonKiLuat.AutoSize = true;
            this.radioButtonKiLuat.Location = new System.Drawing.Point(137, 9);
            this.radioButtonKiLuat.Name = "radioButtonKiLuat";
            this.radioButtonKiLuat.Size = new System.Drawing.Size(57, 17);
            this.radioButtonKiLuat.TabIndex = 2;
            this.radioButtonKiLuat.Text = "Kỷ luật";
            this.radioButtonKiLuat.UseVisualStyleBackColor = true;
            this.radioButtonKiLuat.CheckedChanged += new System.EventHandler(this.radioButtonKiLuat_CheckedChanged);
            // 
            // radioButtonKhenThuong
            // 
            this.radioButtonKhenThuong.AutoSize = true;
            this.radioButtonKhenThuong.Checked = true;
            this.radioButtonKhenThuong.Location = new System.Drawing.Point(12, 9);
            this.radioButtonKhenThuong.Name = "radioButtonKhenThuong";
            this.radioButtonKhenThuong.Size = new System.Drawing.Size(86, 17);
            this.radioButtonKhenThuong.TabIndex = 1;
            this.radioButtonKhenThuong.TabStop = true;
            this.radioButtonKhenThuong.Text = "Khen thưởng";
            this.radioButtonKhenThuong.UseVisualStyleBackColor = true;
            this.radioButtonKhenThuong.CheckedChanged += new System.EventHandler(this.radioButtonKhenThuong_CheckedChanged);
            // 
            // dataGridView1
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridView1.Location = new System.Drawing.Point(160, 279);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(481, 143);
            this.dataGridView1.TabIndex = 13;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(202, 29);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(377, 24);
            this.label1.TabIndex = 14;
            this.label1.Text = "DANH SÁCH KHEN THƯỞNG KỶ LUẬT";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnThoat);
            this.groupBox2.Controls.Add(this.btnXoa);
            this.groupBox2.Controls.Add(this.btr);
            this.groupBox2.Controls.Add(this.btnThem);
            this.groupBox2.Location = new System.Drawing.Point(160, 230);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox2.Size = new System.Drawing.Size(481, 45);
            this.groupBox2.TabIndex = 12;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Chức năng";
            // 
            // btnThoat
            // 
            this.btnThoat.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnThoat.Location = new System.Drawing.Point(373, 17);
            this.btnThoat.Margin = new System.Windows.Forms.Padding(2);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 24);
            this.btnThoat.TabIndex = 4;
            this.btnThoat.Text = "Th&oát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(259, 17);
            this.btnXoa.Margin = new System.Windows.Forms.Padding(2);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(71, 24);
            this.btnXoa.TabIndex = 3;
            this.btnXoa.Text = "&Xoá";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btr
            // 
            this.btr.Location = new System.Drawing.Point(146, 17);
            this.btr.Margin = new System.Windows.Forms.Padding(2);
            this.btr.Name = "btr";
            this.btr.Size = new System.Drawing.Size(67, 24);
            this.btr.TabIndex = 2;
            this.btr.Text = "&Lưu";
            this.btr.UseVisualStyleBackColor = true;
            this.btr.Click += new System.EventHandler(this.btr_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(31, 17);
            this.btnThem.Margin = new System.Windows.Forms.Padding(2);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(66, 24);
            this.btnThem.TabIndex = 1;
            this.btnThem.Text = "&Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.cbTenDoanVien);
            this.groupBox1.Controls.Add(this.cbChiDoan);
            this.groupBox1.Controls.Add(this.cbLienChi);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txtMaKTKL);
            this.groupBox1.Controls.Add(this.txtHinhThuc);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtLiDo);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Location = new System.Drawing.Point(160, 107);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(481, 119);
            this.groupBox1.TabIndex = 11;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin cập nhật";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.CustomFormat = "MM/dd/yyyy";
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(337, 41);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(139, 20);
            this.dateTimePicker1.TabIndex = 4;
            // 
            // cbTenDoanVien
            // 
            this.cbTenDoanVien.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbTenDoanVien.FormattingEnabled = true;
            this.cbTenDoanVien.Location = new System.Drawing.Point(88, 91);
            this.cbTenDoanVien.Margin = new System.Windows.Forms.Padding(2);
            this.cbTenDoanVien.Name = "cbTenDoanVien";
            this.cbTenDoanVien.Size = new System.Drawing.Size(190, 21);
            this.cbTenDoanVien.TabIndex = 3;
            // 
            // cbChiDoan
            // 
            this.cbChiDoan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbChiDoan.FormattingEnabled = true;
            this.cbChiDoan.Location = new System.Drawing.Point(88, 66);
            this.cbChiDoan.Margin = new System.Windows.Forms.Padding(2);
            this.cbChiDoan.Name = "cbChiDoan";
            this.cbChiDoan.Size = new System.Drawing.Size(190, 21);
            this.cbChiDoan.TabIndex = 2;
            this.cbChiDoan.SelectedIndexChanged += new System.EventHandler(this.cbChiDoan_SelectedIndexChanged);
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(88, 41);
            this.cbLienChi.Margin = new System.Windows.Forms.Padding(2);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(190, 21);
            this.cbLienChi.TabIndex = 1;
            this.cbLienChi.SelectedIndexChanged += new System.EventHandler(this.cbLienChi_SelectedIndexChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(5, 99);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Tên đoàn viên";
            // 
            // txtMaKTKL
            // 
            this.txtMaKTKL.Location = new System.Drawing.Point(88, 16);
            this.txtMaKTKL.Margin = new System.Windows.Forms.Padding(2);
            this.txtMaKTKL.Name = "txtMaKTKL";
            this.txtMaKTKL.ReadOnly = true;
            this.txtMaKTKL.Size = new System.Drawing.Size(190, 20);
            this.txtMaKTKL.TabIndex = 0;
            // 
            // txtHinhThuc
            // 
            this.txtHinhThuc.Location = new System.Drawing.Point(337, 90);
            this.txtHinhThuc.Margin = new System.Windows.Forms.Padding(2);
            this.txtHinhThuc.Multiline = true;
            this.txtHinhThuc.Name = "txtHinhThuc";
            this.txtHinhThuc.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtHinhThuc.Size = new System.Drawing.Size(140, 20);
            this.txtHinhThuc.TabIndex = 6;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(5, 74);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(50, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Chi đoàn";
            // 
            // txtLiDo
            // 
            this.txtLiDo.Location = new System.Drawing.Point(337, 66);
            this.txtLiDo.Margin = new System.Windows.Forms.Padding(2);
            this.txtLiDo.Multiline = true;
            this.txtLiDo.Name = "txtLiDo";
            this.txtLiDo.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtLiDo.Size = new System.Drawing.Size(140, 20);
            this.txtLiDo.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(11, 50);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Liên chi";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(282, 48);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(32, 13);
            this.label7.TabIndex = 4;
            this.label7.Text = "Ngày";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(4, 23);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Mã KT,KL";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(282, 73);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(32, 13);
            this.label6.TabIndex = 4;
            this.label6.Text = "Lí do";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(282, 97);
            this.label8.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(53, 13);
            this.label8.TabIndex = 4;
            this.label8.Text = "Hình thức";
            // 
            // frmKhenThuongKyLuat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "frmKhenThuongKyLuat";
            this.Text = "Danh sách khen thưởng kỉ luật";
            this.Load += new System.EventHandler(this.frmKhenThuongKyLuat_Load);
            this.groupBox3.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton radioButtonKiLuat;
        private System.Windows.Forms.RadioButton radioButtonKhenThuong;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btr;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.ComboBox cbTenDoanVien;
        private System.Windows.Forms.ComboBox cbChiDoan;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtMaKTKL;
        private System.Windows.Forms.TextBox txtHinhThuc;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtLiDo;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label8;
    }
}