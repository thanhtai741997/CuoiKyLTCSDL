namespace QuanLyDoanVienV1
{
    partial class frmChuyenSinhHoatDoan
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnBaoCaoDoanPhi = new System.Windows.Forms.Button();
            this.btnCapGiay = new System.Windows.Forms.Button();
            this.btnQuayLai = new System.Windows.Forms.Button();
            this.btnChuyenSinhHoat = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.cbChiDoan = new System.Windows.Forms.ComboBox();
            this.cbDoanVien = new System.Windows.Forms.ComboBox();
            this.txtDonViMoi = new System.Windows.Forms.TextBox();
            this.txtLiDo = new System.Windows.Forms.TextBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label8 = new System.Windows.Forms.Label();
            this.lb = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtMaChuyen = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(407, 298);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(526, 188);
            this.dataGridView1.TabIndex = 14;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnBaoCaoDoanPhi);
            this.groupBox2.Controls.Add(this.btnCapGiay);
            this.groupBox2.Controls.Add(this.btnQuayLai);
            this.groupBox2.Controls.Add(this.btnChuyenSinhHoat);
            this.groupBox2.Location = new System.Drawing.Point(407, 238);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(526, 54);
            this.groupBox2.TabIndex = 13;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Chức năng";
            // 
            // btnBaoCaoDoanPhi
            // 
            this.btnBaoCaoDoanPhi.Location = new System.Drawing.Point(149, 19);
            this.btnBaoCaoDoanPhi.Name = "btnBaoCaoDoanPhi";
            this.btnBaoCaoDoanPhi.Size = new System.Drawing.Size(107, 23);
            this.btnBaoCaoDoanPhi.TabIndex = 1;
            this.btnBaoCaoDoanPhi.Text = "&Báo cáo đoàn phí";
            this.btnBaoCaoDoanPhi.UseVisualStyleBackColor = true;
            this.btnBaoCaoDoanPhi.Click += new System.EventHandler(this.btnBaoCaoDoanPhi_Click);
            // 
            // btnCapGiay
            // 
            this.btnCapGiay.Location = new System.Drawing.Point(276, 19);
            this.btnCapGiay.Name = "btnCapGiay";
            this.btnCapGiay.Size = new System.Drawing.Size(110, 23);
            this.btnCapGiay.TabIndex = 2;
            this.btnCapGiay.Text = "Cấ&p giấy giới thiệu";
            this.btnCapGiay.UseVisualStyleBackColor = true;
            this.btnCapGiay.Click += new System.EventHandler(this.btnCapGiay_Click);
            // 
            // btnQuayLai
            // 
            this.btnQuayLai.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnQuayLai.Location = new System.Drawing.Point(408, 19);
            this.btnQuayLai.Name = "btnQuayLai";
            this.btnQuayLai.Size = new System.Drawing.Size(97, 23);
            this.btnQuayLai.TabIndex = 3;
            this.btnQuayLai.Text = "&Quay lại";
            this.btnQuayLai.UseVisualStyleBackColor = true;
            this.btnQuayLai.Click += new System.EventHandler(this.btnQuayLai_Click);
            // 
            // btnChuyenSinhHoat
            // 
            this.btnChuyenSinhHoat.Location = new System.Drawing.Point(24, 19);
            this.btnChuyenSinhHoat.Name = "btnChuyenSinhHoat";
            this.btnChuyenSinhHoat.Size = new System.Drawing.Size(104, 23);
            this.btnChuyenSinhHoat.TabIndex = 0;
            this.btnChuyenSinhHoat.Text = "&Chuyển sinh hoạt";
            this.btnChuyenSinhHoat.UseVisualStyleBackColor = true;
            this.btnChuyenSinhHoat.Click += new System.EventHandler(this.btnChuyenSinhHoat_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbLienChi);
            this.groupBox1.Controls.Add(this.cbChiDoan);
            this.groupBox1.Controls.Add(this.cbDoanVien);
            this.groupBox1.Controls.Add(this.txtDonViMoi);
            this.groupBox1.Controls.Add(this.txtLiDo);
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.lb);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtMaChuyen);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(407, 106);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(526, 126);
            this.groupBox1.TabIndex = 11;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin cập nhật";
            // 
            // cbLienChi
            // 
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(103, 41);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(165, 21);
            this.cbLienChi.TabIndex = 6;
            this.cbLienChi.SelectedIndexChanged += new System.EventHandler(this.cbLienChi_SelectedIndexChanged);
            // 
            // cbChiDoan
            // 
            this.cbChiDoan.FormattingEnabled = true;
            this.cbChiDoan.Location = new System.Drawing.Point(103, 68);
            this.cbChiDoan.Name = "cbChiDoan";
            this.cbChiDoan.Size = new System.Drawing.Size(165, 21);
            this.cbChiDoan.TabIndex = 6;
            this.cbChiDoan.SelectedIndexChanged += new System.EventHandler(this.cbChiDoan_SelectedIndexChanged);
            // 
            // cbDoanVien
            // 
            this.cbDoanVien.FormattingEnabled = true;
            this.cbDoanVien.Location = new System.Drawing.Point(103, 99);
            this.cbDoanVien.Name = "cbDoanVien";
            this.cbDoanVien.Size = new System.Drawing.Size(165, 21);
            this.cbDoanVien.TabIndex = 6;
            this.cbDoanVien.SelectedIndexChanged += new System.EventHandler(this.cbDoanVien_SelectedIndexChanged);
            // 
            // txtDonViMoi
            // 
            this.txtDonViMoi.Location = new System.Drawing.Point(359, 70);
            this.txtDonViMoi.Multiline = true;
            this.txtDonViMoi.Name = "txtDonViMoi";
            this.txtDonViMoi.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtDonViMoi.Size = new System.Drawing.Size(161, 20);
            this.txtDonViMoi.TabIndex = 3;
            // 
            // txtLiDo
            // 
            this.txtLiDo.Location = new System.Drawing.Point(359, 99);
            this.txtLiDo.Multiline = true;
            this.txtLiDo.Name = "txtLiDo";
            this.txtLiDo.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtLiDo.Size = new System.Drawing.Size(161, 20);
            this.txtLiDo.TabIndex = 5;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.CustomFormat = "MM/dd/yyyy";
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(359, 44);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(161, 20);
            this.dateTimePicker1.TabIndex = 4;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(9, 51);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(62, 13);
            this.label8.TabIndex = 1;
            this.label8.Text = "Tên liên chi";
            // 
            // lb
            // 
            this.lb.AutoSize = true;
            this.lb.Location = new System.Drawing.Point(9, 78);
            this.lb.Name = "lb";
            this.lb.Size = new System.Drawing.Size(71, 13);
            this.lb.TabIndex = 1;
            this.lb.Text = "Tên chi đoàn";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(9, 78);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(38, 13);
            this.label7.TabIndex = 1;
            this.label7.Text = "Đơn vị";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(283, 106);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(70, 13);
            this.label5.TabIndex = 1;
            this.label5.Text = "Lí do chuyển";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(9, 107);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(77, 13);
            this.label6.TabIndex = 1;
            this.label6.Text = "Tên đoàn viên";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(283, 50);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "Ngày chuyển";
            // 
            // txtMaChuyen
            // 
            this.txtMaChuyen.Location = new System.Drawing.Point(103, 17);
            this.txtMaChuyen.Name = "txtMaChuyen";
            this.txtMaChuyen.ReadOnly = true;
            this.txtMaChuyen.Size = new System.Drawing.Size(165, 20);
            this.txtMaChuyen.TabIndex = 0;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(283, 77);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(57, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "Đơn vị mới";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 24);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mã chuyển";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(469, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(410, 24);
            this.label1.TabIndex = 12;
            this.label1.Text = " DANH SÁCH CHUYỂN SINH HOẠT ĐOÀN";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(107, 194);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(165, 20);
            this.textBox1.TabIndex = 15;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(107, 220);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(165, 20);
            this.textBox2.TabIndex = 16;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(107, 246);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(165, 20);
            this.textBox3.TabIndex = 17;
            // 
            // frmChuyenSinhHoatDoan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Name = "frmChuyenSinhHoatDoan";
            this.Text = "Chuyển sinh hoạt Đoàn";
            this.Load += new System.EventHandler(this.frmChuyenSinhHoatDoan_Load);
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
        private System.Windows.Forms.Button btnBaoCaoDoanPhi;
        private System.Windows.Forms.Button btnCapGiay;
        private System.Windows.Forms.Button btnQuayLai;
        public System.Windows.Forms.Button btnChuyenSinhHoat;
        private System.Windows.Forms.GroupBox groupBox1;
        public System.Windows.Forms.ComboBox cbLienChi;
        public System.Windows.Forms.ComboBox cbChiDoan;
        public System.Windows.Forms.ComboBox cbDoanVien;
        private System.Windows.Forms.TextBox txtDonViMoi;
        private System.Windows.Forms.TextBox txtLiDo;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label lb;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        public System.Windows.Forms.TextBox txtMaChuyen;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.TextBox textBox1;
        public System.Windows.Forms.TextBox textBox2;
        public System.Windows.Forms.TextBox textBox3;
    }
}