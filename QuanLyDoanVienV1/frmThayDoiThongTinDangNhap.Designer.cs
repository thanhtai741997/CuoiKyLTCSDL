namespace QuanLyDoanVienV1
{
    partial class frmThayDoiThongTinDangNhap
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
            this.btnQuayLai = new System.Windows.Forms.Button();
            this.txtMatkhau = new System.Windows.Forms.TextBox();
            this.txtTen = new System.Windows.Forms.TextBox();
            this.btnThayDoi = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(550, 231);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Tên đăng nhập";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // btnQuayLai
            // 
            this.btnQuayLai.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnQuayLai.Location = new System.Drawing.Point(692, 305);
            this.btnQuayLai.Name = "btnQuayLai";
            this.btnQuayLai.Size = new System.Drawing.Size(75, 23);
            this.btnQuayLai.TabIndex = 9;
            this.btnQuayLai.Text = "&Quay lại";
            this.btnQuayLai.UseVisualStyleBackColor = true;
            this.btnQuayLai.Click += new System.EventHandler(this.btnQuayLai_Click);
            // 
            // txtMatkhau
            // 
            this.txtMatkhau.Location = new System.Drawing.Point(645, 254);
            this.txtMatkhau.Name = "txtMatkhau";
            this.txtMatkhau.PasswordChar = '*';
            this.txtMatkhau.Size = new System.Drawing.Size(146, 20);
            this.txtMatkhau.TabIndex = 6;
            this.txtMatkhau.TextChanged += new System.EventHandler(this.txtMatkhau_TextChanged);
            // 
            // txtTen
            // 
            this.txtTen.Location = new System.Drawing.Point(645, 228);
            this.txtTen.Name = "txtTen";
            this.txtTen.Size = new System.Drawing.Size(146, 20);
            this.txtTen.TabIndex = 4;
            this.txtTen.TextChanged += new System.EventHandler(this.txtTen_TextChanged);
            // 
            // btnThayDoi
            // 
            this.btnThayDoi.Location = new System.Drawing.Point(576, 305);
            this.btnThayDoi.Name = "btnThayDoi";
            this.btnThayDoi.Size = new System.Drawing.Size(75, 23);
            this.btnThayDoi.TabIndex = 8;
            this.btnThayDoi.Text = "&Thay đổi";
            this.btnThayDoi.UseVisualStyleBackColor = true;
            this.btnThayDoi.Click += new System.EventHandler(this.btnThayDoi_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(550, 261);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Mật khẩu";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // frmThayDoiThongTinDangNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnQuayLai);
            this.Controls.Add(this.txtMatkhau);
            this.Controls.Add(this.txtTen);
            this.Controls.Add(this.btnThayDoi);
            this.Controls.Add(this.label2);
            this.Name = "frmThayDoiThongTinDangNhap";
            this.Text = "Thay đổi thông tin đăng nhập";
            this.Load += new System.EventHandler(this.frmThayDoiThongTinDangNhap_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnQuayLai;
        private System.Windows.Forms.TextBox txtMatkhau;
        private System.Windows.Forms.TextBox txtTen;
        private System.Windows.Forms.Button btnThayDoi;
        private System.Windows.Forms.Label label2;
    }
}