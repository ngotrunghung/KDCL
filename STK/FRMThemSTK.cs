using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

namespace STK
{
    public partial class FRMThemSTK : Form
    {
        public FRMThemSTK()
        {
            InitializeComponent();
        }
        public SqlConnection Kn()
        {
            return new SqlConnection(@"Data Source = DESKTOP-C213M68\SQLEXPRESS;Initial Catalog = db_Money; Integrated Security = True; Context Connection = False; MultiSubnetFailover=True");
        }
        private void pictureBox1_Click(object sender, EventArgs e)
        {
            FrmAddBank a = new FrmAddBank();
            a.Show();
        }

        private void FRMThemSTK_Load(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            string.Format("{0:dd/MM/yyyy}", date); // 10/07/2018
            MaximizeBox = false;
            MinimizeBox = false;

           
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            
           
        }

        private void bthThem_Click(object sender, EventArgs e)
        {
            if(dateTimePicker1.Value > DateTime.Now)
            {
                MessageBox.Show("Hơi lố rồi đó !");
            }
        }

        private void cbbNganHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection cnn = Kn();

            string sql1 = "SELECT MaNganHang FROM NganHang WHERE TenNganHang ='" + this.cbbNganHang.SelectedItem.ToString() + "'";
            cnn.Open();
            SqlCommand com = new SqlCommand(sql1, cnn);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                labMaNganHang.Text = dr.GetString(0).ToString();
                break;
            }
        }
    }
}
