using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cosmatics.admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cf = ConfigurationManager.ConnectionStrings["ECommerceConnectionString"].ConnectionString;
            conn = new SqlConnection(cf);
            conn.Open();
            if(!IsPostBack)
            {
                ProductCount();
                Orderplaced();
                UserAccount();
            }
        }

        public void ProductCount()
        {
            string q = $"select count(pid) as pid from product";
            SqlCommand c = new SqlCommand(q, conn);
            SqlDataReader rdr = c.ExecuteReader();
            rdr.Read();
            Label1.Text = rdr["pid"].ToString();
            Label2.Text = rdr["pid"].ToString();

        }

        public void Orderplaced()
        {
            string q = $"select count(order_id ) as orderplaced from placeorder;";
            SqlCommand c = new SqlCommand(q, conn);
            SqlDataReader rdr = c.ExecuteReader();
            rdr.Read();
            Label3.Text = rdr["orderplaced"].ToString();
            Label4.Text = rdr["orderplaced"].ToString();
            Label5.Text = rdr["orderplaced"].ToString();
            Label6.Text = rdr["orderplaced"].ToString();

        }
        public void UserAccount()
        {
            string q = $"select count(ID) as Users from user_account where acc_role = 'User';";
            SqlCommand c = new SqlCommand(q, conn);
            SqlDataReader rdr = c.ExecuteReader();
            rdr.Read();
            Label7.Text = rdr["Users"].ToString();
            Label8.Text = rdr["Users"].ToString();
           
        }
    }
}