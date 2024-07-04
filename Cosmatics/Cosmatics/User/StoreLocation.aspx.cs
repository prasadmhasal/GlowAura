using iText.Forms.Form.Element;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cosmatics.User
{
    public partial class StoreLocation : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cf = ConfigurationManager.ConnectionStrings["ECommerceConnectionString"].ConnectionString;
            conn = new SqlConnection(cf);
            conn.Open();
        }
        protected void Button2_Click(object sender, EventArgs e)
        { 
            string name, email, subject , message;
            name = TextBox1.Text;
            email = TextBox2.Text;
            subject = TextBox3.Text;
            message = myTextarea.Text;
            string q = $"exec get_touch '{@name}','{@email}','{@subject}','{@message}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Thank You for Get in Touch With Us ')</script>");
        }
    }
}