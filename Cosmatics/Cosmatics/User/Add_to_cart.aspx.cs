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
            if (!IsPostBack)
            {
                FetchCart();

                GrandTotal();

            }
            
        }

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaceOrder.aspx");

        }
        public void GrandTotal()
        {
            string q = $"select sum(totalprice) as tot from cart where suser='{Session["ID"].ToString()}'";
            SqlCommand command = new SqlCommand(q, conn);
            SqlDataReader r = command.ExecuteReader();
            r.Read();
            Label1.Text = r["tot"].ToString();
            double Grandtotal = double.Parse(Label1.Text);
            Session["FinalTotal"] = Grandtotal;

        }


        public void FetchCart()
        {
            string q = $"select * from cart where suser='{Session["ID"].ToString()}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader r = cmd.ExecuteReader();
            GridView1.DataSource = r;
            GridView1.DataBind(); 
           
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lb = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string id = lb.Text;
            string q = $"delete from cart where prod_id='{id}'";

            SqlCommand c = new SqlCommand(q, conn);
            c.ExecuteNonQuery();
            
            Response.Redirect("Add_to_cart.aspx");
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UserHome.aspx");
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/placeorder.aspx");
        }
    }


    }
