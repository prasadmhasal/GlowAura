using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Razorpay.Api;


namespace Cosmatics.User
{
    public partial class placeorder : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ECommerceConnectionString"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();
            if (!IsPostBack)
            {
               GrandTotal();
            }
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

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string Id = "rzp_test_VPel75yVZnzpbD";
            string key_secret = "SYoHmR95xmbUb7BNW1SSLzBc";

            RazorpayClient razorpayClient = new RazorpayClient(Id, key_secret);
            double amount = double.Parse(Session["FinalTotal"].ToString());

            Dictionary<string, object> options = new Dictionary<string, object>();
            options.Add("amount", amount * 100);
            options.Add("currency", "INR");
            options.Add("receipt", "order_receipt_123");
            options.Add("payment_capture", 1);

            Razorpay.Api.Order order = razorpayClient.Order.Create(options);

            string orderId = order["id"].ToString();
            string Razorpayscript = $@"
            var options = {{
            'key': '{Id}', // Replace with your Razorpay API Key
            'amount':'{amount * 100}, // Amount is in currency subunits (e.g., paise). This should be dynamic based on your application logic
            'currency': 'INR',
            'name': 'GlowAura ',
            'description':'Checkout Payment',
            // Replace with your order ID obtained from Razorpay
            ""handler"": function (response) {{
                alert('Payment successfull ' + response.razorpay_payment_id);
                alert(response.razorpay_order_id);
                alert(response.razorpay_signature);
                // Handle the response after payment success
            }},
            ""prefill"": {{
                ""name"": ""Prasad Mhasal"",
                ""email"": ""gaurav.kumar@example.com"",
                ""contact"": ""8767614273""
            }},
            ""notes"": {{
                ""address"": ""Razorpay Corporate Office""
            }},
            ""theme"": {{
                ""color"": ""#3399cc""
            }}
        }};
        var rzp1 = new Razorpay(options);
        rzp1.open();
        return false;";



        }
    }
}