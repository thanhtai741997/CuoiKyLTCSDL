namespace QuanLyDoanVienV1
{
    partial class frmChuyenDoan
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
            this.btnQuayLai = new System.Windows.Forms.Button();
            this.btnChuyenSinhHoat = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbLopMoi = new System.Windows.Forms.ComboBox();
            this.txtLiDo = new System.Windows.Forms.TextBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtTenChiDoanCu = new System.Windows.Forms.TextBox();
            this.txtMaDoanVien = new System.Windows.Forms.TextBox();
            this.txtMaChuyen = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtMaCB = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
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
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(430, 295);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(481, 169);
            this.dataGridView1.TabIndex = 10;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnQuayLai);
            this.groupBox2.Controls.Add(this.btnChuyenSinhHoat);
            this.groupBox2.Location = new System.Drawing.Point(430, 235);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(478, 54);
            this.groupBox2.TabIndex = 9;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Chức năng";
            // 
            // btnQuayLai
            // 
            this.btnQuayLai.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnQuayLai.Location = new System.Drawing.Point(279, 19);
            this.btnQuayLai.Name = "btnQuayLai";
            this.btnQuayLai.Size = new System.Drawing.Size(154, 23);
            this.btnQuayLai.TabIndex = 5;
            this.btnQuayLai.Text = "&Quay lại";
            this.btnQuayLai.UseVisualStyleBackColor = true;
            this.btnQuayLai.Click += new System.EventHandler(this.btnQuayLai_Click);
            // 
            // btnChuyenSinhHoat
            // 
            this.btnChuyenSinhHoat.Location = new System.Drawing.Point(44, 19);
            this.btnChuyenSinhHoat.Name = "btnChuyenSinhHoat";
            this.btnChuyenSinhHoat.Size = new System.Drawing.Size(162, 23);
            this.btnChuyenSinhHoat.TabIndex = 4;
            this.btnChuyenSinhHoat.Text = "&Chuyển chi đoàn";
            this.btnChuyenSinhHoat.UseVisualStyleBackColor = true;
            this.btnChuyenSinhHoat.Click += new System.EventHandler(this.btnChuyenSinhHoat_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbLopMoi);
            this.groupBox1.Controls.Add(this.txtLiDo);
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.txtTenChiDoanCu);
            this.groupBox1.Controls.Add(this.txtMaDoanVien);
            this.groupBox1.Controls.Add(this.txtMaChuyen);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtMaCB);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(430, 129);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(478, 100);
            this.groupBox1.TabIndex = 7;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin cập nhật";
            // 
            // cbLopMoi
            // 
            this.cbLopMoi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLopMoi.FormattingEnabled = true;
            this.cbLopMoi.Location = new System.Drawing.Point(328, 16);
            this.cbLopMoi.Name = "cbLopMoi";
            this.cbLopMoi.Size = new System.Drawing.Size(138, 21);
            this.cbLopMoi.TabIndex = 3;
            // 
            // txtLiDo
            // 
            this.txtLiDo.Location = new System.Drawing.Point(328, 74);
            this.txtLiDo.Multiline = true;
            this.txtLiDo.Name = "txtLiDo";
            this.txtLiDo.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtLiDo.Size = new System.Drawing.Size(138, 20);
            this.txtLiDo.TabIndex = 5;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.CustomFormat = "MM/dd/yyyy";
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(328, 44);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(138, 20);
            this.dateTimePicker1.TabIndex = 4;
            this.dateTimePicker1.Value = new System.DateTime(2008, 11, 12, 0, 0, 0, 0);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(9, 78);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(65, 13);
            this.label8.TabIndex = 1;
            this.label8.Text = "Chi đoàn cũ";
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
            this.label5.Location = new System.Drawing.Point(245, 74);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(70, 13);
            this.label5.TabIndex = 1;
            this.label5.Text = "Lí do chuyển";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(9, 51);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(73, 13);
            this.label6.TabIndex = 1;
            this.label6.Text = "Mã đoàn viên";
            // 
            // txtTenChiDoanCu
            // 
            this.txtTenChiDoanCu.Location = new System.Drawing.Point(88, 69);
            this.txtTenChiDoanCu.Name = "txtTenChiDoanCu";
            this.txtTenChiDoanCu.ReadOnly = true;
            this.txtTenChiDoanCu.Size = new System.Drawing.Size(139, 20);
            this.txtTenChiDoanCu.TabIndex = 2;
            // 
            // txtMaDoanVien
            // 
            this.txtMaDoanVien.Location = new System.Drawing.Point(88, 43);
            this.txtMaDoanVien.Name = "txtMaDoanVien";
            this.txtMaDoanVien.ReadOnly = true;
            this.txtMaDoanVien.Size = new System.Drawing.Size(139, 20);
            this.txtMaDoanVien.TabIndex = 1;
            // 
            // txtMaChuyen
            // 
            this.txtMaChuyen.Location = new System.Drawing.Point(88, 17);
            this.txtMaChuyen.Name = "txtMaChuyen";
            this.txtMaChuyen.ReadOnly = true;
            this.txtMaChuyen.Size = new System.Drawing.Size(139, 20);
            this.txtMaChuyen.TabIndex = 0;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(245, 50);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "Ngày chuyển";
            // 
            // txtMaCB
            // 
            this.txtMaCB.Location = new System.Drawing.Point(88, 17);
            this.txtMaCB.Name = "txtMaCB";
            this.txtMaCB.ReadOnly = true;
            this.txtMaCB.Size = new System.Drawing.Size(139, 20);
            this.txtMaCB.TabIndex = 0;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(245, 23);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(69, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "Chi đoàn mới";
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
            this.label1.Location = new System.Drawing.Point(497, 92);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(332, 24);
            this.label1.TabIndex = 8;
            this.label1.Text = " DANH SÁCH CHUYỂN CHI ĐOÀN";
            // 
            // frmChuyenDoan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Name = "frmChuyenDoan";
            this.Text = "Cập nhật chuyển chi đoàn";
            this.Load += new System.EventHandler(this.frmChuyenDoan_Load);
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
        private System.Windows.Forms.Button btnQuayLai;
        private System.Windows.Forms.Button btnChuyenSinhHoat;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbLopMoi;
        private System.Windows.Forms.TextBox txtLiDo;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        public System.Windows.Forms.TextBox txtTenChiDoanCu;
        public System.Windows.Forms.TextBox txtMaDoanVien;
        private System.Windows.Forms.TextBox txtMaChuyen;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtMaCB;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}