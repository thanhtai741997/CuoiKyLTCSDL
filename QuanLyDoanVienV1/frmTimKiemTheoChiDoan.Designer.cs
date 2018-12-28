namespace QuanLyDoanVienV1
{
    partial class frmTimKiemTheoChiDoan
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.btnChuyenSinhHoatDoan = new System.Windows.Forms.Button();
            this.btnChuyenChiDoan = new System.Windows.Forms.Button();
            this.btnChiTiet = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.radioButtonChuyenSinhHoat = new System.Windows.Forms.RadioButton();
            this.radioButtonDangSinhHoat = new System.Windows.Forms.RadioButton();
            this.radioButtonTatCa = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtTenChiDoan = new System.Windows.Forms.TextBox();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnChuyenSinhHoatDoan
            // 
            this.btnChuyenSinhHoatDoan.Location = new System.Drawing.Point(491, 402);
            this.btnChuyenSinhHoatDoan.Name = "btnChuyenSinhHoatDoan";
            this.btnChuyenSinhHoatDoan.Size = new System.Drawing.Size(127, 23);
            this.btnChuyenSinhHoatDoan.TabIndex = 17;
            this.btnChuyenSinhHoatDoan.Text = "C&huyển sinh hoạt đoàn";
            this.btnChuyenSinhHoatDoan.UseVisualStyleBackColor = true;
            this.btnChuyenSinhHoatDoan.Click += new System.EventHandler(this.btnChuyenSinhHoatDoan_Click);
            // 
            // btnChuyenChiDoan
            // 
            this.btnChuyenChiDoan.Location = new System.Drawing.Point(331, 402);
            this.btnChuyenChiDoan.Name = "btnChuyenChiDoan";
            this.btnChuyenChiDoan.Size = new System.Drawing.Size(130, 23);
            this.btnChuyenChiDoan.TabIndex = 15;
            this.btnChuyenChiDoan.Text = "&Chuyển chi đoàn";
            this.btnChuyenChiDoan.UseVisualStyleBackColor = true;
            this.btnChuyenChiDoan.Click += new System.EventHandler(this.btnChuyenChiDoan_Click);
            // 
            // btnChiTiet
            // 
            this.btnChiTiet.Location = new System.Drawing.Point(176, 402);
            this.btnChiTiet.Name = "btnChiTiet";
            this.btnChiTiet.Size = new System.Drawing.Size(127, 23);
            this.btnChiTiet.TabIndex = 13;
            this.btnChiTiet.Text = "&Xem chi tiết";
            this.btnChiTiet.UseVisualStyleBackColor = true;
            this.btnChiTiet.Click += new System.EventHandler(this.btnChiTiet_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.radioButtonChuyenSinhHoat);
            this.panel1.Controls.Add(this.radioButtonDangSinhHoat);
            this.panel1.Controls.Add(this.radioButtonTatCa);
            this.panel1.Location = new System.Drawing.Point(185, 96);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(449, 32);
            this.panel1.TabIndex = 11;
            // 
            // radioButtonChuyenSinhHoat
            // 
            this.radioButtonChuyenSinhHoat.AutoSize = true;
            this.radioButtonChuyenSinhHoat.Location = new System.Drawing.Point(283, 7);
            this.radioButtonChuyenSinhHoat.Name = "radioButtonChuyenSinhHoat";
            this.radioButtonChuyenSinhHoat.Size = new System.Drawing.Size(158, 17);
            this.radioButtonChuyenSinhHoat.TabIndex = 2;
            this.radioButtonChuyenSinhHoat.Text = "Đoàn viên chuyển sinh hoạt";
            this.radioButtonChuyenSinhHoat.UseVisualStyleBackColor = true;
            // 
            // radioButtonDangSinhHoat
            // 
            this.radioButtonDangSinhHoat.AutoSize = true;
            this.radioButtonDangSinhHoat.Location = new System.Drawing.Point(125, 7);
            this.radioButtonDangSinhHoat.Name = "radioButtonDangSinhHoat";
            this.radioButtonDangSinhHoat.Size = new System.Drawing.Size(148, 17);
            this.radioButtonDangSinhHoat.TabIndex = 1;
            this.radioButtonDangSinhHoat.Text = "Đoàn viên đang sinh hoạt";
            this.radioButtonDangSinhHoat.UseVisualStyleBackColor = true;
            // 
            // radioButtonTatCa
            // 
            this.radioButtonTatCa.AutoSize = true;
            this.radioButtonTatCa.Checked = true;
            this.radioButtonTatCa.Location = new System.Drawing.Point(3, 7);
            this.radioButtonTatCa.Name = "radioButtonTatCa";
            this.radioButtonTatCa.Size = new System.Drawing.Size(107, 17);
            this.radioButtonTatCa.TabIndex = 0;
            this.radioButtonTatCa.TabStop = true;
            this.radioButtonTatCa.Text = "Tất cả đoàn viên";
            this.radioButtonTatCa.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dataGridView1);
            this.groupBox1.Location = new System.Drawing.Point(167, 130);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(467, 265);
            this.groupBox1.TabIndex = 12;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin tìm được";
            // 
            // dataGridView1
            // 
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle6;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(6, 19);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(453, 242);
            this.dataGridView1.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(301, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(219, 24);
            this.label1.TabIndex = 16;
            this.label1.Text = "TÌM KIẾM ĐOÀN VIÊN";
            // 
            // button2
            // 
            this.button2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button2.Location = new System.Drawing.Point(531, 69);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 10;
            this.button2.Text = "&Thoát";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(450, 69);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 9;
            this.button1.Text = "&Xem";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(183, 77);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(117, 13);
            this.label2.TabIndex = 14;
            this.label2.Text = "Nhập vào tên chi đoàn";
            // 
            // txtTenChiDoan
            // 
            this.txtTenChiDoan.Location = new System.Drawing.Point(315, 70);
            this.txtTenChiDoan.Name = "txtTenChiDoan";
            this.txtTenChiDoan.Size = new System.Drawing.Size(124, 20);
            this.txtTenChiDoan.TabIndex = 8;
            // 
            // frmTimKiemTheoChiDoan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnChuyenSinhHoatDoan);
            this.Controls.Add(this.btnChuyenChiDoan);
            this.Controls.Add(this.btnChiTiet);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtTenChiDoan);
            this.Name = "frmTimKiemTheoChiDoan";
            this.Text = "Tìm kiếm theo Chi Đoàn";
            this.Load += new System.EventHandler(this.frmTimKiemTheoChiDoan_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnChuyenSinhHoatDoan;
        private System.Windows.Forms.Button btnChuyenChiDoan;
        private System.Windows.Forms.Button btnChiTiet;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton radioButtonChuyenSinhHoat;
        private System.Windows.Forms.RadioButton radioButtonDangSinhHoat;
        private System.Windows.Forms.RadioButton radioButtonTatCa;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtTenChiDoan;
    }
}