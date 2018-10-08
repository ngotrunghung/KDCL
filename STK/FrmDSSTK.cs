using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace STK
{
    public partial class FrmDSSTK : Form
    {
        public FrmDSSTK()
        {
            InitializeComponent();
        }
        private string gEmail;
        public string GEmail
        {
            get { return gEmail; }
            set { gEmail = value; }
        }
        private void FrmDSSTK_Load(object sender, EventArgs e)
        {
            lbnGetEmail.Text = gEmail;
            MaximizeBox = false;
            MinimizeBox = false;
        }

        private void FrmDSSTK_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult TL;
            TL = MessageBox.Show("Bạn thật sự muốn thoát ?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (TL == DialogResult.No)
            {
                e.Cancel = true;
                Application.Exit();
                Application.ExitThread();
                this.Close();
                
            }
        }

        private void picPlusSTK_Click(object sender, EventArgs e)
        {
            FRMThemSTK stk = new FRMThemSTK();
            stk.Show();
        }
    }
}
