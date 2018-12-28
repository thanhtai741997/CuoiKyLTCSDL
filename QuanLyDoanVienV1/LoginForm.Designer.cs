namespace QuanLyDoanVienV1
{
    partial class LoginForm
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
            this.txtUsername = new DevExpress.XtraEditors.TextEdit();
            this.txtPassword = new DevExpress.XtraEditors.TextEdit();
            this.lbLoginUsername = new DevExpress.XtraEditors.LabelControl();
            this.lbLoginPassword = new DevExpress.XtraEditors.LabelControl();
            this.btnLoginConfirm = new DevExpress.XtraEditors.SimpleButton();
            this.btnLoginExit = new DevExpress.XtraEditors.SimpleButton();
            this.grbLoginInfo = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.txtUsername.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassword.Properties)).BeginInit();
            this.grbLoginInfo.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtUsername
            // 
            this.txtUsername.EditValue = "123";
            this.txtUsername.Location = new System.Drawing.Point(204, 52);
            this.txtUsername.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.Size = new System.Drawing.Size(117, 20);
            this.txtUsername.TabIndex = 1;
            // 
            // txtPassword
            // 
            this.txtPassword.EditValue = "123";
            this.txtPassword.Location = new System.Drawing.Point(204, 89);
            this.txtPassword.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Properties.PasswordChar = '*';
            this.txtPassword.Size = new System.Drawing.Size(117, 20);
            this.txtPassword.TabIndex = 2;
            // 
            // lbLoginUsername
            // 
            this.lbLoginUsername.Location = new System.Drawing.Point(78, 55);
            this.lbLoginUsername.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.lbLoginUsername.Name = "lbLoginUsername";
            this.lbLoginUsername.Size = new System.Drawing.Size(72, 13);
            this.lbLoginUsername.TabIndex = 3;
            this.lbLoginUsername.Text = "Tên đăng nhập";
            this.lbLoginUsername.Click += new System.EventHandler(this.labelControl1_Click);
            // 
            // lbLoginPassword
            // 
            this.lbLoginPassword.Location = new System.Drawing.Point(78, 92);
            this.lbLoginPassword.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.lbLoginPassword.Name = "lbLoginPassword";
            this.lbLoginPassword.Size = new System.Drawing.Size(44, 13);
            this.lbLoginPassword.TabIndex = 4;
            this.lbLoginPassword.Text = "Mật khẩu";
            // 
            // btnLoginConfirm
            // 
            this.btnLoginConfirm.Location = new System.Drawing.Point(100, 136);
            this.btnLoginConfirm.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnLoginConfirm.Name = "btnLoginConfirm";
            this.btnLoginConfirm.Size = new System.Drawing.Size(87, 28);
            this.btnLoginConfirm.TabIndex = 5;
            this.btnLoginConfirm.Text = "Xác nhận";
            this.btnLoginConfirm.Click += new System.EventHandler(this.btnLoginConfirm_Click);
            // 
            // btnLoginExit
            // 
            this.btnLoginExit.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnLoginExit.Location = new System.Drawing.Point(221, 136);
            this.btnLoginExit.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnLoginExit.Name = "btnLoginExit";
            this.btnLoginExit.Size = new System.Drawing.Size(87, 28);
            this.btnLoginExit.TabIndex = 6;
            this.btnLoginExit.Text = "Thoát";
            this.btnLoginExit.Click += new System.EventHandler(this.btnLoginExit_Click);
            // 
            // grbLoginInfo
            // 
            this.grbLoginInfo.Controls.Add(this.btnLoginExit);
            this.grbLoginInfo.Controls.Add(this.txtUsername);
            this.grbLoginInfo.Controls.Add(this.btnLoginConfirm);
            this.grbLoginInfo.Controls.Add(this.txtPassword);
            this.grbLoginInfo.Controls.Add(this.lbLoginPassword);
            this.grbLoginInfo.Controls.Add(this.lbLoginUsername);
            this.grbLoginInfo.Location = new System.Drawing.Point(471, 170);
            this.grbLoginInfo.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.grbLoginInfo.Name = "grbLoginInfo";
            this.grbLoginInfo.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.grbLoginInfo.Size = new System.Drawing.Size(398, 217);
            this.grbLoginInfo.TabIndex = 7;
            this.grbLoginInfo.TabStop = false;
            this.grbLoginInfo.Text = "Thông tin đăng nhập";
            // 
            // LoginForm
            // 
            this.AcceptButton = this.btnLoginConfirm;
            this.Appearance.Options.UseFont = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnLoginExit;
            this.ClientSize = new System.Drawing.Size(1340, 556);
            this.Controls.Add(this.grbLoginInfo);
            this.Font = new System.Drawing.Font("Tahoma", 10F);
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "LoginForm";
            this.Text = "Đăng nhập";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.LoginForm_FormClosing);
            this.Load += new System.EventHandler(this.LoginForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtUsername.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassword.Properties)).EndInit();
            this.grbLoginInfo.ResumeLayout(false);
            this.grbLoginInfo.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private DevExpress.XtraEditors.TextEdit txtUsername;
        private DevExpress.XtraEditors.TextEdit txtPassword;
        private DevExpress.XtraEditors.LabelControl lbLoginUsername;
        private DevExpress.XtraEditors.LabelControl lbLoginPassword;
        private DevExpress.XtraEditors.SimpleButton btnLoginConfirm;
        private DevExpress.XtraEditors.SimpleButton btnLoginExit;
        private System.Windows.Forms.GroupBox grbLoginInfo;
    }
}