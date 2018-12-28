namespace QuanLyDoanVienV1
{
    partial class frmBaoCaoDanhSachKiLuat
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
            this.btnBC = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // mtxtNamHoc
            // 
            this.mtxtNamHoc.Location = new System.Drawing.Point(620, 265);
            this.mtxtNamHoc.Mask = "0000";
            this.mtxtNamHoc.Name = "mtxtNamHoc";
            this.mtxtNamHoc.Size = new System.Drawing.Size(174, 20);
            this.mtxtNamHoc.TabIndex = 30;
            this.mtxtNamHoc.ValidatingType = typeof(int);
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(688, 307);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 29;
            this.button1.Text = "&Thoát";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(545, 234);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 28;
            this.label3.Text = "Liên chi";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(545, 272);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 27;
            this.label1.Text = "Năm học";
            // 
            // cbLienChi
            // 
            this.cbLienChi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbLienChi.FormattingEnabled = true;
            this.cbLienChi.Location = new System.Drawing.Point(620, 226);
            this.cbLienChi.Name = "cbLienChi";
            this.cbLienChi.Size = new System.Drawing.Size(175, 21);
            this.cbLienChi.TabIndex = 25;
            // 
            // btnBC
            // 
            this.btnBC.Location = new System.Drawing.Point(578, 307);
            this.btnBC.Name = "btnBC";
            this.btnBC.Size = new System.Drawing.Size(75, 23);
            this.btnBC.TabIndex = 26;
            this.btnBC.Text = "&Báo cáo";
            this.btnBC.UseVisualStyleBackColor = true;
            this.btnBC.Click += new System.EventHandler(this.btnBC_Click);
            // 
            // frmBaoCaoDanhSachKiLuat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.mtxtNamHoc);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbLienChi);
            this.Controls.Add(this.btnBC);
            this.Name = "frmBaoCaoDanhSachKiLuat";
            this.Text = "Báo cáo danh sách kỉ luật";
            this.Load += new System.EventHandler(this.frmBaoCaoDanhSachKiLuat_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MaskedTextBox mtxtNamHoc;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbLienChi;
        private System.Windows.Forms.Button btnBC;
    }
}