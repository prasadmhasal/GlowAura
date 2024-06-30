using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Razorpay.Api;
using Razorpay.Api.Errors;

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
            Label5.Text = r["tot"].ToString();
            double Grandtotal = double.Parse(Label5.Text);
            Session["FinalTotal"] = Grandtotal;
          
        }

        protected void Pay_Click(object sender, EventArgs e)
        {
            // Razorpay API Key and Secret
            string razorpayKeyId = "rzp_test_VPel75yVZnzpbD";
            string razorpayKeySecret = "SYoHmR95xmbUb7BNW1SSLzBc";

            // Amount to be paid (dynamic amount retrieval example)
            double amount = double.Parse(Session["FinalTotal"].ToString());

            // Prepare options for creating an order
            Dictionary<string, object> options = new Dictionary<string, object>();
            options.Add("amount", amount * 100); // Amount in smallest currency unit (e.g., paise)
            options.Add("currency", "INR");
            options.Add("receipt", "order_receipt_123"); // Replace with your receipt identifier
            options.Add("payment_capture", 1); // Automatically capture payment

            // Initialize Razorpay client
            RazorpayClient razorpayClient = new RazorpayClient(razorpayKeyId, razorpayKeySecret);

            try
            {
                // Create an order
                Razorpay.Api.Order order = razorpayClient.Order.Create(options);

                // Extract order ID from the response
                string orderId = order["id"].ToString();

                // Generate Razorpay script
                string razorpayScript = $@"
                <script src='https://checkout.razorpay.com/v1/checkout.js'></script>
            <script>
                var options = {{
                    'key': '{razorpayKeyId}', // Replace with your Razorpay API Key
                    'amount': {amount * 100}, // Amount is in currency subunits (e.g., paise)
                    'currency': 'INR',
                    'name': 'GlowAura', // Name of your company or app
                    'description': 'Checkout Payment',
                    'order_id': '{orderId}', // Order ID from Razorpay
                    'handler': function(response) {{
                        alert('Payment successful: ' + response.razorpay_payment_id);
                        alert('Order ID: ' + response.razorpay_order_id);
                        alert('Signature: ' + response.razorpay_signature);
                        // Handle the response after payment success
                    }},
                    'prefill': {{
                        'name': 'Prasad Mhasal', // Customer's name
                        'email': 'gaurav.kumar@example.com', // Customer's email
                        'contact': '8767614273' // Customer's phone number
                    }},
                    'notes': {{
                        'address': 'Razorpay Corporate Office' // Additional notes if any
                    }},
                    'theme': {{
                        'color': '#3399cc' // Theme color
                    }}
                }};
                var rzp1 = new Razorpay(options);
                rzp1.on('payment.failed', function(response) {{
                    alert(response.error.code + ': ' + response.error.description);
                    // Handle failed payment
                }});
                rzp1.open();
                e.preventDefault();
            </script>";

                // Inject the Razorpay script into the page
                ClientScript.RegisterStartupScript(this.GetType(), "razorpay", razorpayScript, false);
            }
            catch (Exception ex)
            {
                Response.Clear();
                Response.Write($"<p>Error: {ex.Message}</p>");
                Response.End();
            }
        }

    }
}