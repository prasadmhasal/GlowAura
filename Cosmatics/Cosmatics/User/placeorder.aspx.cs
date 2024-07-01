using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Policy;
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
            
        }
        

        protected void Pay_Click(object sender, EventArgs e)
        {
            string fullName = TextBox1.Text.ToString(); // Replace with actual field ID if different
            string address = TextBox2.Text.ToString();
            string city = TextBox3.Text.ToString();
            string region = TextBox4.Text.ToString();
            int postalCode =int.Parse(TextBox5.Text.ToString());
            string country = TextBox6.Text.ToString();
            double phone =double.Parse (TextBox7.Text.ToString());

            StoreCustomerDetails(fullName, address, city, region, postalCode, country,phone);


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
                Session["OrderId"] = orderId;

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
                        window.location.href = 'Invoice.aspx';
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
        protected void StoreCustomerDetails(string fullName, string address, string city, string region, int postalCode, string country, double phone)
        {
            try
            {
                // Replace "Your_Connection_String_Here" with your actual SQL Server connection string
                using (SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ECommerce;Integrated Security=True;MultipleActiveResultSets=True"))
                {
                    conn.Open();

                    // Create a SqlCommand object for the stored procedure
                    SqlCommand cmd = new SqlCommand("cust_add", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Add parameters required by the stored procedure
                    cmd.Parameters.AddWithValue("@name", fullName);
                    cmd.Parameters.AddWithValue("@address", address);
                    cmd.Parameters.AddWithValue("@city", city);
                    cmd.Parameters.AddWithValue("@region", region);
                    cmd.Parameters.AddWithValue("@postal", postalCode);
                    cmd.Parameters.AddWithValue("@country", country);
                    cmd.Parameters.AddWithValue("@suser", Session["ID"].ToString()); // Assuming suser comes from session
                    cmd.Parameters.AddWithValue("@contact", phone);
                    cmd.Parameters.AddWithValue("@grandtotal", Session["FinalTotal"].ToString());

                    // Execute the stored procedure
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Success message or further processing if needed
                        Response.Write("<script>alert('Customer details stored successfully.');</script>");
                    }
                    else
                    {
                        // Handle case where no rows were affected
                        Response.Write("<script>alert('Failed to store customer details.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }



       



    }
}