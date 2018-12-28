namespace QuanLyDoanVienV1
{
    partial class frmBaoCaoDSDuBiDangVienVCamTinhDang
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
            this.button1 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.btnCamTinhDang = new System.Windows.Forms.Button();
            this.btnDuBi = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(711, 318);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(94, 23);
            this.button1.TabIndex = 34;
            this.button1.Text = "&Thoát";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(535, 266);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(152, 13);
            this.label2.TabIndex = 31;
            this.label2.Text = "Danh sách học cảm tình Đảng";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(535, 299);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(137, 13);
            this.label1.TabIndex = 32;
            this.label1.Text = "Danh sách dự bị Đảng viên";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(535, 223);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 33;
            this.label3.Text = "Liên chi";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(610, 215);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(195, 21);
            this.cbLienChi.TabIndex = 28;
            this.cbLienChi.SelectedIndexChanged += new System.EventHandler(this.cbLienChi_SelectedIndexChanged);
            // 
            // btnCamTinhDang
            // 
            this.btnCamTinhDang.Location = new System.Drawing.Point(710, 256);
            this.btnCamTinhDang.Name = "btnCamTinhDang";
            this.btnCamTinhDang.Size = new System.Drawing.Size(95, 23);
            this.btnCamTinhDang.TabIndex = 29;
            this.btnCamTinhDang.Text = "Báo cáo";
            this.btnCamTinhDang.UseVisualStyleBackColor = true;
            this.btnCamTinhDang.Click += new System.EventHandler(this.btnCamTinhDang_Click);
            // 
            // btnDuBi
            // 
            this.btnDuBi.Location = new System.Drawing.Point(711, 289);
            this.btnDuBi.Name = "btnDuBi";
            this.btnDuBi.Size = new System.Drawing.Size(94, 23);
            this.btnDuBi.TabIndex = 30;
            this.btnDuBi.Text = "Báo cáo";
            this.btnDuBi.UseVisualStyleBackColor = true;
            this.btnDuBi.Click += new System.EventHandler(this.btnDuBi_Click);
            // 
            // frmBaoCaoDSDuBiDangVienVCamTinhDang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cbLienChi);
            this.Controls.Add(this.btnCamTinhDang);
            this.Controls.Add(this.btnDuBi);
            this.Name = "frmBaoCaoDSDuBiDangVienVCamTinhDang";
            this.Text = "Báo cáo danh sách dự bị Đảng viên và học cảm tình Đảng";
            this.Load += new System.EventHandler(this.frmBaoCaoDSDuBiDangVienVCamTinhDang_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.Button btnCamTinhDang;
        private System.Windows.Forms.Button btnDuBi;
    }
}