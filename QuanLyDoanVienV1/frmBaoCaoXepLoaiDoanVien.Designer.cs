namespace QuanLyDoanVienV1
{
    partial class frmBaoCaoXepLoaiDoanVien
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
            this.mtxtNamHoc = new System.Windows.Forms.MaskedTextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.btnBaoCaoCaNam = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.cbChiDoan = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // mtxtNamHoc
            // 
            this.mtxtNamHoc.Location = new System.Drawing.Point(619, 280);
            this.mtxtNamHoc.Mask = "0000";
            this.mtxtNamHoc.Name = "mtxtNamHoc";
            this.mtxtNamHoc.Size = new System.Drawing.Size(178, 20);
            this.mtxtNamHoc.TabIndex = 28;
            this.mtxtNamHoc.ValidatingType = typeof(int);
            this.mtxtNamHoc.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(this.mtxtNamHoc_MaskInputRejected);
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(705, 326);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(92, 23);
            this.button1.TabIndex = 27;
            this.button1.Text = "&Thoát";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnBaoCaoCaNam
            // 
            this.btnBaoCaoCaNam.Location = new System.Drawing.Point(563, 326);
            this.btnBaoCaoCaNam.Name = "btnBaoCaoCaNam";
            this.btnBaoCaoCaNam.Size = new System.Drawing.Size(93, 23);
            this.btnBaoCaoCaNam.TabIndex = 26;
            this.btnBaoCaoCaNam.Text = "Báo cáo";
            this.btnBaoCaoCaNam.UseVisualStyleBackColor = true;
            this.btnBaoCaoCaNam.Click += new System.EventHandler(this.btnBaoCaoCaNam_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(544, 216);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 22;
            this.label3.Text = "Liên chi";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(544, 253);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 13);
            this.label2.TabIndex = 23;
            this.label2.Text = "Chi đoàn";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(544, 287);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 24;
            this.label1.Text = "Năm học";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(619, 208);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(178, 21);
            this.cbLienChi.TabIndex = 21;
            this.cbLienChi.SelectedIndexChanged += new System.EventHandler(this.cbLienChi_SelectedIndexChanged);
            // 
            // cbChiDoan
            // 
            this.cbChiDoan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbChiDoan.FormattingEnabled = true;
            this.cbChiDoan.Location = new System.Drawing.Point(619, 245);
            this.cbChiDoan.Name = "cbChiDoan";
            this.cbChiDoan.Size = new System.Drawing.Size(178, 21);
            this.cbChiDoan.TabIndex = 25;
            this.cbChiDoan.SelectedIndexChanged += new System.EventHandler(this.cbChiDoan_SelectedIndexChanged);
            // 
            // frmBaoCaoXepLoaiDoanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.mtxtNamHoc);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnBaoCaoCaNam);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbLienChi);
            this.Controls.Add(this.cbChiDoan);
            this.Name = "frmBaoCaoXepLoaiDoanVien";
            this.Text = "Báo cáo xếp loại Đoàn viên";
            this.Load += new System.EventHandler(this.frmBaoCaoXepLoaiDoanVien_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MaskedTextBox mtxtNamHoc;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnBaoCaoCaNam;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.ComboBox cbChiDoan;
    }
}