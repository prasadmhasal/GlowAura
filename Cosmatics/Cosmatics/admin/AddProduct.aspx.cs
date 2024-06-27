using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cosmatics.admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cf = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cf);
            conn.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pname, pcat, pic, dt;
            double price;

            pname = ProName.Text;
            pcat = DropDownList1.SelectedValue;

            // Check if a file is uploaded
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Save the uploaded file to the 'Product' directory
                    string fileName = Path.GetFileName(FileUpload1.FileName);
                    string uploadFolder = Server.MapPath("~/Product/");
                    string filePath = Path.Combine(uploadFolder, fileName);

                    // Ensure the 'Product' directory exists
                    Directory.CreateDirectory(uploadFolder);

                    // Save the file
                    FileUpload1.SaveAs(filePath);

                    // Set the 'pic' variable to the relative path for the database
                    pic = "~/Product/" + fileName;

                    // Get other product details
                    dt = DateTime.Now.ToString("d/M/yyyy");
                    price = double.Parse(ProductPrice.Text);

                    // Construct the SQL query to insert product details
                    string q = "EXEC AddProducttProc @pname, @pcat, @pic, @price, @dt";

                    // Execute the query using SqlCommand and parameters
                    using (SqlCommand cmd = new SqlCommand(q, conn))
                    {
                        cmd.Parameters.AddWithValue("@pname", pname);
                        cmd.Parameters.AddWithValue("@pcat", pcat);
                        cmd.Parameters.AddWithValue("@pic", pic);
                        cmd.Parameters.AddWithValue("@price", price);
                        cmd.Parameters.AddWithValue("@dt", dt);

                        // Execute the query
                        cmd.ExecuteNonQuery();
                    }

                    // Display success message
                    Response.Write("<script>alert('Product Added Successfully')</script>");
                }
                catch (Exception ex)
                {
                    // Handle exceptions (e.g., file system errors)
                    Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
                }
            }
            else
            {
                // Display message if no file is uploaded
                Response.Write("<script>alert('Please select a file to upload')</script>");
            }
        }

    }
}