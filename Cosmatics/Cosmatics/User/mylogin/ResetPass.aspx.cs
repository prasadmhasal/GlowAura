using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Cosmatics.User.mylogin
{
    public partial class ResetPass : System.Web.UI.Page
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

            string email = TextBox1.Text;
            string New_pass = TextBox2.Text;
            string q = $"select acc_email from user_account where acc_email='{email}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Close();
                string q1 = $"update user_account set acc_pass='{New_pass}',acc_confirm_pass='{New_pass}' where acc_email='{email}'";
                SqlCommand c = new SqlCommand(q1, conn);
                c.ExecuteNonQuery();

                string q2 = $"select * from user_account where acc_email='{email}'";
                SqlCommand cm = new SqlCommand(q2, conn);
                SqlDataReader rd = cm.ExecuteReader();

                if (rd.Read())
                {
                    string np = rd["acc_pass"].ToString();
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("prasadmhasal@gmail.com");
                    mail.To.Add(email);
                    mail.Subject = "Reset New Password";
                    mail.Body = $"Hello {email} !!  Your New Password is {np}";
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                    smtp.Credentials = new NetworkCredential("prasadmhasal@gmail.com", "fxjuqdrhzmmeksyq");
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Send(mail);

                    Response.Write("<script>alert('Your New Password has been sent to your Email ID ')</script>");
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Failed to retrieve new password.')</script>");
                }
                rd.Close();

            }

            else
            {
                rdr.Close();
                Response.Write("<script>alert('This Email ID is not exist')</script>");
            }
        }
    }
}