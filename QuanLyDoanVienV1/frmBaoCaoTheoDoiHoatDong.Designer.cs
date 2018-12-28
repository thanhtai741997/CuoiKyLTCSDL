namespace QuanLyDoanVienV1
{
    partial class frmBaoCaoTheoDoiHoatDong
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
            this.cbDoanVien = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.btnBaoCao = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.lb = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.cbChiDoan = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // cbDoanVien
            // 
            this.cbDoanVien.FormattingEnabled = true;
            this.cbDoanVien.Location = new System.Drawing.Point(625, 281);
            this.cbDoanVien.Name = "cbDoanVien";
            this.cbDoanVien.Size = new System.Drawing.Size(182, 21);
            this.cbDoanVien.TabIndex = 24;
            this.cbDoanVien.SelectedIndexChanged += new System.EventHandler(this.cbDoanVien_SelectedIndexChanged);
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(700, 322);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 23;
            this.button1.Text = "&Thoát";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnBaoCao
            // 
            this.btnBaoCao.Location = new System.Drawing.Point(568, 322);
            this.btnBaoCao.Name = "btnBaoCao";
            this.btnBaoCao.Size = new System.Drawing.Size(77, 23);
            this.btnBaoCao.TabIndex = 22;
            this.btnBaoCao.Text = "&Báo cáo";
            this.btnBaoCao.UseVisualStyleBackColor = true;
            this.btnBaoCao.Click += new System.EventHandler(this.btnBaoCao_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(534, 219);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 19;
            this.label3.Text = "Liên chi";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // lb
            // 
            this.lb.AutoSize = true;
            this.lb.Location = new System.Drawing.Point(534, 289);
            this.lb.Name = "lb";
            this.lb.Size = new System.Drawing.Size(56, 13);
            this.lb.TabIndex = 20;
            this.lb.Text = "Đoàn viên";
            this.lb.Click += new System.EventHandler(this.lb_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(534, 256);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 13);
            this.label2.TabIndex = 21;
            this.label2.Text = "Chi đoàn";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(625, 211);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(182, 21);
            this.cbLienChi.TabIndex = 17;
            this.cbLienChi.SelectedIndexChanged += new System.EventHandler(this.cbLienChi_SelectedIndexChanged);
            // 
            // cbChiDoan
            // 
            this.cbChiDoan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbChiDoan.FormattingEnabled = true;
            this.cbChiDoan.Location = new System.Drawing.Point(625, 248);
            this.cbChiDoan.Name = "cbChiDoan";
            this.cbChiDoan.Size = new System.Drawing.Size(182, 21);
            this.cbChiDoan.TabIndex = 18;
            this.cbChiDoan.SelectedIndexChanged += new System.EventHandler(this.cbChiDoan_SelectedIndexChanged);
            // 
            // frmBaoCaoTheoDoiHoatDong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.cbDoanVien);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnBaoCao);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lb);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cbLienChi);
            this.Controls.Add(this.cbChiDoan);
            this.Name = "frmBaoCaoTheoDoiHoatDong";
            this.Text = "Báo cáo theo dõi hoạt động";
            this.Load += new System.EventHandler(this.frmBaoCaoTheoDoiHoatDong_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbDoanVien;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnBaoCao;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lb;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.ComboBox cbChiDoan;
    }
}