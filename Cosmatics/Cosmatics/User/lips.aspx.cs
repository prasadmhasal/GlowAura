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
    public partial class lips : System.Web.UI.Page
    {
        string st = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ECommerce;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(st);
            conn.Open();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(st))
            {
                conn.Open();
                string pname, pcat, pic, dt, suser;
                double price, total_price;
                double qty;
                if (e.CommandName == "AddToCart")
                {
                    string id = e.CommandArgument.ToString();
                    string q = "EXEC FindProdById  '" + id + "'  ";
                    SqlCommand cmd = new SqlCommand(q, conn);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        rdr.Read();
                        pname = rdr["pname"].ToString();
                        pcat = rdr["pcat"].ToString();
                        pic = rdr["pic"].ToString();
                        price = double.Parse(rdr["price"].ToString());
                        DropDownList dl = (DropDownList)e.Item.FindControl("DropDownList1");
                        qty = int.Parse(dl.SelectedValue.ToString());
                        Response.Write(pname + pcat + pic + price + qty);
                        total_price = price * qty;
                        dt = DateTime.Now.ToString("d-M-yyyy");
                        suser = "MyUser";
                        rdr.Close();
                        string ql = "exec AddToCart '" + pname + "','" + pcat + "','" + price + "','" + qty + "','" + pic + "','" + dt + "','" + suser + "'";
                        SqlCommand c = new SqlCommand(ql, conn);
                        c.ExecuteNonQuery();
                        Response.Redirect("Add_to_cart.aspx");
                    }

                }

            }
        }
    }
}