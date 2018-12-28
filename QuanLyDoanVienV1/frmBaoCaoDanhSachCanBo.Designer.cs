namespace QuanLyDoanVienV1
{
    partial class frmBaoCaoDanhSachCanBo
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
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cbLienChi = new System.Windows.Forms.ComboBox();
            this.cbChiDoan = new System.Windows.Forms.ComboBox();
            this.btnCanBoChiDoan = new System.Windows.Forms.Button();
            this.btnCanBoLienChi = new System.Windows.Forms.Button();
            this.btnCanBoDoanTruong = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(706, 358);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(121, 23);
            this.button1.TabIndex = 16;
            this.button1.Text = "&Thoát";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(514, 331);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(140, 13);
            this.label5.TabIndex = 20;
            this.label5.Text = "Danh sách cán bộ chi đoàn";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(514, 295);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(134, 13);
            this.label4.TabIndex = 21;
            this.label4.Text = "Danh sách cán bộ liên chi ";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(514, 183);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 17;
            this.label3.Text = "Liên chi";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(514, 259);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(156, 13);
            this.label1.TabIndex = 18;
            this.label1.Text = "Danh sách cán bộ đoàn trường";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(514, 220);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 13);
            this.label2.TabIndex = 19;
            this.label2.Text = "Chi đoàn";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(631, 175);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(196, 21);
            this.cbLienChi.TabIndex = 11;
            this.cbLienChi.SelectedIndexChanged += new System.EventHandler(this.cbLienChi_SelectedIndexChanged);
            // 
            // cbChiDoan
            // 
            this.cbChiDoan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbChiDoan.FormattingEnabled = true;
            this.cbChiDoan.Location = new System.Drawing.Point(631, 212);
            this.cbChiDoan.Name = "cbChiDoan";
            this.cbChiDoan.Size = new System.Drawing.Size(196, 21);
            this.cbChiDoan.TabIndex = 12;
            this.cbChiDoan.SelectedIndexChanged += new System.EventHandler(this.cbChiDoan_SelectedIndexChanged);
            // 
            // btnCanBoChiDoan
            // 
            this.btnCanBoChiDoan.Location = new System.Drawing.Point(706, 323);
            this.btnCanBoChiDoan.Name = "btnCanBoChiDoan";
            this.btnCanBoChiDoan.Size = new System.Drawing.Size(121, 28);
            this.btnCanBoChiDoan.TabIndex = 15;
            this.btnCanBoChiDoan.Text = "Báo cáo";
            this.btnCanBoChiDoan.UseVisualStyleBackColor = true;
            this.btnCanBoChiDoan.Click += new System.EventHandler(this.btnCanBoChiDoan_Click);
            // 
            // btnCanBoLienChi
            // 
            this.btnCanBoLienChi.Location = new System.Drawing.Point(706, 287);
            this.btnCanBoLienChi.Name = "btnCanBoLienChi";
            this.btnCanBoLienChi.Size = new System.Drawing.Size(121, 28);
            this.btnCanBoLienChi.TabIndex = 14;
            this.btnCanBoLienChi.Text = "Báo cáo";
            this.btnCanBoLienChi.UseVisualStyleBackColor = true;
            this.btnCanBoLienChi.Click += new System.EventHandler(this.btnCanBoLienChi_Click);
            // 
            // btnCanBoDoanTruong
            // 
            this.btnCanBoDoanTruong.Location = new System.Drawing.Point(706, 251);
            this.btnCanBoDoanTruong.Name = "btnCanBoDoanTruong";
            this.btnCanBoDoanTruong.Size = new System.Drawing.Size(121, 28);
            this.btnCanBoDoanTruong.TabIndex = 13;
            this.btnCanBoDoanTruong.Text = "Báo cáo";
            this.btnCanBoDoanTruong.UseVisualStyleBackColor = true;
            this.btnCanBoDoanTruong.Click += new System.EventHandler(this.btnCanBoDoanTruong_Click);
            // 
            // frmBaoCaoDanhSachCanBo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cbLienChi);
            this.Controls.Add(this.cbChiDoan);
            this.Controls.Add(this.btnCanBoChiDoan);
            this.Controls.Add(this.btnCanBoLienChi);
            this.Controls.Add(this.btnCanBoDoanTruong);
            this.Name = "frmBaoCaoDanhSachCanBo";
            this.Text = "Báo cáo danh sách Cán bộ";
            this.Load += new System.EventHandler(this.frmBaoCaoDanhSachCanBo_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.ComboBox cbChiDoan;
        private System.Windows.Forms.Button btnCanBoChiDoan;
        private System.Windows.Forms.Button btnCanBoLienChi;
        private System.Windows.Forms.Button btnCanBoDoanTruong;
    }
}