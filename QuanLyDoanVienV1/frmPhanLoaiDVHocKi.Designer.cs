namespace QuanLyDoanVienV1
{
    partial class frmPhanLoaiDVHocKi
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
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnLuu = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbDoanPhi = new System.Windows.Forms.ComboBox();
            this.cbRenLuyen = new System.Windows.Forms.ComboBox();
            this.cbPhongTrao = new System.Windows.Forms.ComboBox();
            this.cbHocTap = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtXepLoai = new System.Windows.Forms.TextBox();
            this.txtMaXepLoai = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(227, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(334, 24);
            this.label1.TabIndex = 8;
            this.label1.Text = "PHÂN LOẠI ĐOÀN VIÊN THEO KỲ";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(205, 285);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(390, 150);
            this.dataGridView1.TabIndex = 7;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnThoat);
            this.groupBox2.Controls.Add(this.btnXoa);
            this.groupBox2.Controls.Add(this.btnLuu);
            this.groupBox2.Controls.Add(this.btnThem);
            this.groupBox2.Location = new System.Drawing.Point(205, 237);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(390, 42);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Chức năng";
            // 
            // btnThoat
            // 
            this.btnThoat.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnThoat.Location = new System.Drawing.Point(286, 13);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 23);
            this.btnThoat.TabIndex = 3;
            this.btnThoat.Text = "Th&oát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(198, 13);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 2;
            this.btnXoa.Text = "&Xoá";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnLuu
            // 
            this.btnLuu.Location = new System.Drawing.Point(107, 13);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(75, 23);
            this.btnLuu.TabIndex = 1;
            this.btnLuu.Text = "&Lưu";
            this.btnLuu.UseVisualStyleBackColor = true;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(16, 13);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 23);
            this.btnThem.TabIndex = 0;
            this.btnThem.Text = "&Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbDoanPhi);
            this.groupBox1.Controls.Add(this.cbRenLuyen);
            this.groupBox1.Controls.Add(this.cbPhongTrao);
            this.groupBox1.Controls.Add(this.cbHocTap);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txtXepLoai);
            this.groupBox1.Controls.Add(this.txtMaXepLoai);
            this.groupBox1.Location = new System.Drawing.Point(205, 46);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(390, 185);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin cập nhật";
            // 
            // cbDoanPhi
            // 
            this.cbDoanPhi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbDoanPhi.FormattingEnabled = true;
            this.cbDoanPhi.Location = new System.Drawing.Point(120, 129);
            this.cbDoanPhi.Name = "cbDoanPhi";
            this.cbDoanPhi.Size = new System.Drawing.Size(235, 21);
            this.cbDoanPhi.TabIndex = 5;
            // 
            // cbRenLuyen
            // 
            this.cbRenLuyen.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbRenLuyen.FormattingEnabled = true;
            this.cbRenLuyen.Location = new System.Drawing.Point(120, 75);
            this.cbRenLuyen.Name = "cbRenLuyen";
            this.cbRenLuyen.Size = new System.Drawing.Size(235, 21);
            this.cbRenLuyen.TabIndex = 3;
            // 
            // cbPhongTrao
            // 
            this.cbPhongTrao.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbPhongTrao.FormattingEnabled = true;
            this.cbPhongTrao.Location = new System.Drawing.Point(120, 102);
            this.cbPhongTrao.Name = "cbPhongTrao";
            this.cbPhongTrao.Size = new System.Drawing.Size(235, 21);
            this.cbPhongTrao.TabIndex = 4;
            // 
            // cbHocTap
            // 
            this.cbHocTap.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbHocTap.FormattingEnabled = true;
            this.cbHocTap.Location = new System.Drawing.Point(120, 48);
            this.cbHocTap.Name = "cbHocTap";
            this.cbHocTap.Size = new System.Drawing.Size(235, 21);
            this.cbHocTap.TabIndex = 2;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 164);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(45, 13);
            this.label7.TabIndex = 4;
            this.label7.Text = "Xếp loại";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(13, 138);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(94, 13);
            this.label6.TabIndex = 4;
            this.label6.Text = "Tiêu chí đoàn phí";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(13, 110);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(101, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Tiêu chí phong trào";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 84);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(93, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Tiêu chí rèn luyện";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 56);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(86, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Tiêu chí học tập";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 26);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Mã xếp loại";
            // 
            // txtXepLoai
            // 
            this.txtXepLoai.Location = new System.Drawing.Point(120, 160);
            this.txtXepLoai.Name = "txtXepLoai";
            this.txtXepLoai.Size = new System.Drawing.Size(235, 20);
            this.txtXepLoai.TabIndex = 6;
            // 
            // txtMaXepLoai
            // 
            this.txtMaXepLoai.Location = new System.Drawing.Point(120, 18);
            this.txtMaXepLoai.Name = "txtMaXepLoai";
            this.txtMaXepLoai.ReadOnly = true;
            this.txtMaXepLoai.Size = new System.Drawing.Size(235, 20);
            this.txtMaXepLoai.TabIndex = 1;
            // 
            // frmPhanLoaiDVHocKi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "frmPhanLoaiDVHocKi";
            this.Text = "Phân loại Đoàn viên theo kỳ";
            this.Load += new System.EventHandler(this.frmPhanLoaiDVHocKi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbDoanPhi;
        private System.Windows.Forms.ComboBox cbRenLuyen;
        private System.Windows.Forms.ComboBox cbPhongTrao;
        private System.Windows.Forms.ComboBox cbHocTap;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtXepLoai;
        private System.Windows.Forms.TextBox txtMaXepLoai;
    }
}