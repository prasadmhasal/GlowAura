using Org.BouncyCastle.Bcpg;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cosmatics.User
{
    public partial class Allproduct : System.Web.UI.Page
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
                double price, totalprice;
                double qty;
             
                if (e.CommandName == "AddToCart")
                {
                    string id = e.CommandArgument.ToString();
                    string q = "  exec FindProdById '" + id + "'  ";
                    string myuser = Session["ID"].ToString(); 
                    SqlCommand cmd = new SqlCommand(q, conn);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        rdr.Read();
                        pname = rdr["pname"].ToString();
                        pcat = rdr["pcat"].ToString();
                        pic = rdr["pic"].ToString();
                        //UserId = int.Parse(Session["UserId"].ToString());
                        price = double.Parse(rdr["price"].ToString());
                        DropDownList dl = (DropDownList)e.Item.FindControl("DropDownList1");
                        qty = int.Parse(dl.SelectedValue.ToString());
                        Response.Write(pname + pcat + pic + price + qty);
                        totalprice = price * qty;
                        dt = DateTime.Now.ToString("d-M-yyyy");
                        suser = myuser;
                        rdr.Close();
                        string ql = "exec AddToCart '" + pname + "','" + pcat + "','" + price + "','" + qty + "','" + pic + "','" + dt + "','" + suser + "','"+totalprice+"'";
                        SqlCommand c = new SqlCommand(ql, conn);
                        c.ExecuteNonQuery();
                        Response.Redirect("Add_to_cart.aspx");
                    }

                }

            }
        }
    }
}