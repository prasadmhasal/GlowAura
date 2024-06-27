using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cosmatics.User.mylogin
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ECommerceConnectionString"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email, pass;
            email = TextBox1.Text;
            pass = TextBox2.Text;
            string q = $"exec UserLogin '{email}','{pass}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    if (rdr["acc_email"].Equals("Admin@gmail.com") && rdr["acc_pass"].Equals("Admin") )
                    {
                        Response.Redirect("~/admin/AdminHome.aspx");
                    }

                    if (rdr["acc_email"].Equals(email) && rdr["acc_pass"].Equals(pass) && rdr["acc_role"].Equals("User"))
                    {
                        Response.Redirect("~/User/UserHome.aspx");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            int age;
            double mobile_number;
            string user_name, user, email, address, gender, pass, confirm_pass, role = "User";
            user_name = TextBox3.Text;
            user = TextBox4.Text;
            email = TextBox5.Text;
            Session["myname"] = user;
            mobile_number = double.Parse(TextBox6.Text);
            address = TextBox7.Text;
            age = int.Parse(TextBox8.Text);
            bool isChecked = RadioButton1.Checked;
            if (isChecked)
                gender = RadioButton1.Text;
            else
                gender = RadioButton2.Text;
            pass = TextBox9.Text;
            confirm_pass = TextBox10.Text;
            string q = $"exec NewUserAccount '{@user_name}','{@user}','{@email}','{@mobile_number}','{@address}','{age}','{@gender}','{@pass}','{@confirm_pass}','{@role}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            clear();

            Response.Write("<script>alert('Registration Successfull')</script>");
        }
        protected void clear()
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            TextBox9.Text = "";
            TextBox10.Text = "";
        }
    }
}