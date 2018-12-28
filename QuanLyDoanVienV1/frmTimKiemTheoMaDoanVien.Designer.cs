namespace QuanLyDoanVienV1
{
    partial class frmTimKiemTheoMaDoanVien
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            this.btnChuyenSinhHoatDoan = new System.Windows.Forms.Button();
            this.btnChuyenChiDoan = new System.Windows.Forms.Button();
            this.btnChiTiet = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtMaDoanVien = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnChuyenSinhHoatDoan
            // 
            this.btnChuyenSinhHoatDoan.Location = new System.Drawing.Point(492, 380);
            this.btnChuyenSinhHoatDoan.Name = "btnChuyenSinhHoatDoan";
            this.btnChuyenSinhHoatDoan.Size = new System.Drawing.Size(127, 23);
            this.btnChuyenSinhHoatDoan.TabIndex = 19;
            this.btnChuyenSinhHoatDoan.Text = "C&huyển sinh hoạt đoàn";
            this.btnChuyenSinhHoatDoan.UseVisualStyleBackColor = true;
            this.btnChuyenSinhHoatDoan.Click += new System.EventHandler(this.btnChuyenSinhHoatDoan_Click);
            // 
            // btnChuyenChiDoan
            // 
            this.btnChuyenChiDoan.Location = new System.Drawing.Point(332, 380);
            this.btnChuyenChiDoan.Name = "btnChuyenChiDoan";
            this.btnChuyenChiDoan.Size = new System.Drawing.Size(130, 23);
            this.btnChuyenChiDoan.TabIndex = 18;
            this.btnChuyenChiDoan.Text = "&Chuyển chi đoàn";
            this.btnChuyenChiDoan.UseVisualStyleBackColor = true;
            this.btnChuyenChiDoan.Click += new System.EventHandler(this.btnChuyenChiDoan_Click);
            // 
            // btnChiTiet
            // 
            this.btnChiTiet.Location = new System.Drawing.Point(177, 380);
            this.btnChiTiet.Name = "btnChiTiet";
            this.btnChiTiet.Size = new System.Drawing.Size(127, 23);
            this.btnChiTiet.TabIndex = 17;
            this.btnChiTiet.Text = "&Xem chi tiết";
            this.btnChiTiet.UseVisualStyleBackColor = true;
            this.btnChiTiet.Click += new System.EventHandler(this.btnChiTiet_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dataGridView1);
            this.groupBox1.Location = new System.Drawing.Point(176, 115);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(448, 254);
            this.groupBox1.TabIndex = 16;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin tìm được";
            // 
            // dataGridView1
            // 
            dataGridViewCellStyle7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle7;
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(6, 19);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(432, 224);
            this.dataGridView1.TabIndex = 3;
            // 
            // button2
            // 
            this.button2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button2.Location = new System.Drawing.Point(519, 83);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 15;
            this.button2.Text = "&Thoát";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(438, 83);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 12;
            this.button1.Text = "&Tìm";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(186, 89);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(122, 13);
            this.label2.TabIndex = 13;
            this.label2.Text = "Nhập vào mã đoàn viên";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(310, 47);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(219, 24);
            this.label1.TabIndex = 14;
            this.label1.Text = "TÌM KIẾM ĐOÀN VIÊN";
            // 
            // txtMaDoanVien
            // 
            this.txtMaDoanVien.Location = new System.Drawing.Point(314, 86);
            this.txtMaDoanVien.Name = "txtMaDoanVien";
            this.txtMaDoanVien.Size = new System.Drawing.Size(105, 20);
            this.txtMaDoanVien.TabIndex = 11;
            // 
            // frmTimKiemTheoMaDoanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnChuyenSinhHoatDoan);
            this.Controls.Add(this.btnChuyenChiDoan);
            this.Controls.Add(this.btnChiTiet);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtMaDoanVien);
            this.Name = "frmTimKiemTheoMaDoanVien";
            this.Text = "Tìm kiếm theo mã Đoàn viên";
            this.Load += new System.EventHandler(this.frmTimKiemTheoMaDoanVien_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnChuyenSinhHoatDoan;
        private System.Windows.Forms.Button btnChuyenChiDoan;
        private System.Windows.Forms.Button btnChiTiet;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtMaDoanVien;
    }
}