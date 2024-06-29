using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Cosmatics.User
{

    public partial class Add_to_cart : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cf = ConfigurationManager.ConnectionStrings["ECommerceConnectionString"].ConnectionString;
            conn = new SqlConnection(cf);
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UserHome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaceOrder.aspx");

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            // Handle Register button click
            string name = TextBox1.Text;
            string emailId = TextBox2.Text;
            string number = TextBox3.Text;
            string Address = TextBox4.Text;
            string pincode = TextBox5.Text;
            string UserId = Session["UserId"].ToString();  
            string q = $"exec Totalamount '{UserId}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    if (rdr["UserId"].Equals(UserId)) ;

                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials')</script>");
            }
        }


    }


    }
}