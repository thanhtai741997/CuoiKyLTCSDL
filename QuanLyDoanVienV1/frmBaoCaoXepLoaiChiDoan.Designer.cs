namespace QuanLyDoanVienV1
{
    partial class frmBaoCaoXepLoaiChiDoan
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
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.btnBaoCaoCaNam = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // mtxtNamHoc
            // 
            this.mtxtNamHoc.Location = new System.Drawing.Point(344, 208);
            this.mtxtNamHoc.Mask = "0000";
            this.mtxtNamHoc.Name = "mtxtNamHoc";
            this.mtxtNamHoc.Size = new System.Drawing.Size(189, 20);
            this.mtxtNamHoc.TabIndex = 26;
            this.mtxtNamHoc.ValidatingType = typeof(int);
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(415, 258);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(99, 23);
            this.button1.TabIndex = 23;
            this.button1.Text = "&Thoát";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(267, 178);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 25;
            this.label3.Text = "Liên chi";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(267, 215);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 24;
            this.label1.Text = "Năm học";
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(344, 170);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(189, 21);
            this.cbLienChi.TabIndex = 21;
            // 
            // btnBaoCaoCaNam
            // 
            this.btnBaoCaoCaNam.Location = new System.Drawing.Point(270, 258);
            this.btnBaoCaoCaNam.Name = "btnBaoCaoCaNam";
            this.btnBaoCaoCaNam.Size = new System.Drawing.Size(101, 23);
            this.btnBaoCaoCaNam.TabIndex = 22;
            this.btnBaoCaoCaNam.Text = "Báo cáo";
            this.btnBaoCaoCaNam.UseVisualStyleBackColor = true;
            this.btnBaoCaoCaNam.Click += new System.EventHandler(this.btnBaoCaoCaNam_Click);
            // 
            // frmBaoCaoXepLoaiChiDoan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.mtxtNamHoc);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbLienChi);
            this.Controls.Add(this.btnBaoCaoCaNam);
            this.Name = "frmBaoCaoXepLoaiChiDoan";
            this.Text = "Báo cáo xếp loại Chi Đoàn";
            this.Load += new System.EventHandler(this.frmBaoCaoXepLoaiChiDoan_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MaskedTextBox mtxtNamHoc;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.Button btnBaoCaoCaNam;
    }
}