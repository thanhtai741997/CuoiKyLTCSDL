namespace QuanLyDoanVienV1
{
    partial class frmDuBiDangVien
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btr = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbTenDoanVien = new System.Windows.Forms.ComboBox();
            this.cbChiDoan = new System.Windows.Forms.ComboBox();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtLiDo = new System.Windows.Forms.TextBox();
            this.txtMaDuBi = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(182, 257);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(437, 151);
            this.dataGridView1.TabIndex = 8;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(238, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(306, 24);
            this.label1.TabIndex = 9;
            this.label1.Text = "DANH SÁCH DỰ BỊ ĐẢNG VIÊN";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnThoat);
            this.groupBox2.Controls.Add(this.btnXoa);
            this.groupBox2.Controls.Add(this.btr);
            this.groupBox2.Controls.Add(this.btnThem);
            this.groupBox2.Location = new System.Drawing.Point(182, 196);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(437, 55);
            this.groupBox2.TabIndex = 7;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Chức năng";
            // 
            // btnThoat
            // 
            this.btnThoat.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnThoat.Location = new System.Drawing.Point(330, 19);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 23);
            this.btnThoat.TabIndex = 4;
            this.btnThoat.Text = "Th&oát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(229, 19);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 3;
            this.btnXoa.Text = "&Xoá";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btr
            // 
            this.btr.Location = new System.Drawing.Point(124, 19);
            this.btr.Name = "btr";
            this.btr.Size = new System.Drawing.Size(75, 23);
            this.btr.TabIndex = 2;
            this.btr.Text = "&Lưu";
            this.btr.UseVisualStyleBackColor = true;
            this.btr.Click += new System.EventHandler(this.btr_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(23, 19);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 23);
            this.btnThem.TabIndex = 1;
            this.btnThem.Text = "&Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbTenDoanVien);
            this.groupBox1.Controls.Add(this.cbChiDoan);
            this.groupBox1.Controls.Add(this.cbLienChi);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txtLiDo);
            this.groupBox1.Controls.Add(this.txtMaDuBi);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(182, 90);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(437, 100);
            this.groupBox1.TabIndex = 6;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin cập nhật";
            // 
            // cbTenDoanVien
            // 
            this.cbTenDoanVien.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbTenDoanVien.FormattingEnabled = true;
            this.cbTenDoanVien.Location = new System.Drawing.Point(297, 27);
            this.cbTenDoanVien.Name = "cbTenDoanVien";
            this.cbTenDoanVien.Size = new System.Drawing.Size(134, 21);
            this.cbTenDoanVien.TabIndex = 3;
            // 
            // cbChiDoan
            // 
            this.cbChiDoan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbChiDoan.FormattingEnabled = true;
            this.cbChiDoan.Location = new System.Drawing.Point(75, 74);
            this.cbChiDoan.Name = "cbChiDoan";
            this.cbChiDoan.Size = new System.Drawing.Size(134, 21);
            this.cbChiDoan.TabIndex = 2;
            this.cbChiDoan.SelectedIndexChanged += new System.EventHandler(this.cbChiDoan_SelectedIndexChanged);
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(75, 45);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(134, 21);
            this.cbLienChi.TabIndex = 1;
            this.cbLienChi.SelectedIndexChanged += new System.EventHandler(this.cbLienChi_SelectedIndexChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(215, 35);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Tên đoàn viên";
            // 
            // txtLiDo
            // 
            this.txtLiDo.Location = new System.Drawing.Point(297, 65);
            this.txtLiDo.Multiline = true;
            this.txtLiDo.Name = "txtLiDo";
            this.txtLiDo.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtLiDo.Size = new System.Drawing.Size(134, 20);
            this.txtLiDo.TabIndex = 4;
            // 
            // txtMaDuBi
            // 
            this.txtMaDuBi.Location = new System.Drawing.Point(75, 19);
            this.txtMaDuBi.Name = "txtMaDuBi";
            this.txtMaDuBi.ReadOnly = true;
            this.txtMaDuBi.Size = new System.Drawing.Size(134, 20);
            this.txtMaDuBi.TabIndex = 0;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 81);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(50, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Chi đoàn";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 52);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Liên chi";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(215, 72);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(32, 13);
            this.label7.TabIndex = 4;
            this.label7.Text = "Lí do";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 27);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Mã ĐV dự bị";
            // 
            // frmDuBiDangVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "frmDuBiDangVien";
            this.Text = "Danh sách dự bị Đảng viên";
            this.Load += new System.EventHandler(this.frmDuBiDangVien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btr;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbTenDoanVien;
        private System.Windows.Forms.ComboBox cbChiDoan;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtLiDo;
        private System.Windows.Forms.TextBox txtMaDuBi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label2;
    }
}