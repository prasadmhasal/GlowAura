using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cosmatics.admin
{
    public partial class enquiry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind the GridView only on the initial page load
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Retrieve the ID of the record to delete
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            // Set the parameter value
            SqlDataSource1.DeleteParameters["id"].DefaultValue = id.ToString();

            // Delete the record
            try
            {
                SqlDataSource1.Delete();
                GridView1.DataBind(); // Optionally, rebind the GridView after deletion
            }
            catch (Exception ex)
            {
                // Handle any exceptions that may occur during deletion
                // You can log the exception or display an error message to the user
                // Example:
                // ErrorMessageLabel.Text = "Error deleting record: " + ex.Message;
            }
        }
        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            // Loop through each row in the GridView
            foreach (GridViewRow row in GridView1.Rows)
            {
                // Find the CheckBox in the row
                CheckBox chkSolved = (CheckBox)row.FindControl("chkSolved");

                if (chkSolved.Checked)
                {
                    // Retrieve the ID of the record to delete
                    int id = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);

                    try
                    {
                        // Delete the record
                        SqlDataSource1.DeleteParameters["id"].DefaultValue = id.ToString();
                        SqlDataSource1.Delete();

                        // Send email notification
                        SendEmailOnDelete(id);
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions that may occur during deletion
                        // You can log the exception or display an error message to the user
                        // Example:
                        // ErrorMessageLabel.Text = "Error deleting record: " + ex.Message;
                    }
                }
            }

            // Rebind the GridView to refresh data
            GridView1.DataBind();
        }

        private void SendEmailOnDelete(int id)
        {
            // Retrieve information from the database for the email content
            // For example:
            string name = ""; // Retrieve name of the person from database
            string email = ""; // Retrieve email of the person from database
            string subject = ""; // Retrieve subject from database
            string message = ""; // Retrieve message from database

            // Construct your email message
            string emailBody = $"Dear {name},<br /><br />" +
                               $"Your inquiry with the subject '{subject}' has been resolved and deleted from our system.<br /><br />" +
                               $"Here is the original message:<br />" +
                               $"{message}<br /><br />" +
                               $"Thank you for reaching out.<br /><br />" +
                               $"Best regards,<br />Your Company";

            // Send email using SmtpClient
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(new MailAddress(email));
                mailMessage.From = new MailAddress("prasadmhasal@gmail.com");
                mailMessage.Subject = "Your inquiry has been resolved";
                mailMessage.Body = emailBody;
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587); // Update with your SMTP server details
                smtpClient.Credentials = new NetworkCredential("prasadmhasal@gmail.com", "fxjuqdrhzmmeksyq");
                smtpClient.EnableSsl = true;
                smtpClient.Send(mailMessage);
            }
            catch (Exception ex)
            {
                // Handle any exceptions that may occur during email sending
                // Example:
                // ErrorMessageLabel.Text = "Error sending email: " + ex.Message;
            }
        }

    }
}