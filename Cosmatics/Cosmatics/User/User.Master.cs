using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Reflection.Emit;

namespace Cosmatics.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string xyz = TextBox2.Text.ToString();
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("prasadmhasal@gmail.com");
            mail.To.Add(xyz);
            mail.Subject = "Thank You For  subscribing us.";
            mail.Body = "Thank you for subscribing to GlowAura! We're thrilled to welcome you to our community of skincare enthusiasts who are dedicated to achieving radiant and healthy skin.\r\n\r\nAt GlowAura, we are committed to providing you with the latest skincare innovations, expert tips, and exclusive offers that will help you on your journey to glowing skin.\r\n\r\nWhat you can expect as a subscriber:\r\n\r\nExclusive Updates: Stay informed about our newest products and launches.\r\nExpert Tips: Receive personalized skincare advice from our team of skincare experts.\r\nSpecial Offers: Enjoy subscriber-only discounts and promotions.\r\nWe are excited to have you join us on this skincare journey. If you have any questions or feedback, please don't hesitate to reach out to us at [GlowAura@gmail.com].\r\n\r\nOnce again, thank you for subscribing to GlowAura. We look forward to helping you achieve your skincare goals!\r\n\r\nWarm regards,";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("prasadmhasal@gmail.com", "fxjuqdrhzmmeksyq");
            smtp.EnableSsl = true;
            smtp.Send(mail);
            Response.Write("<Script>alert('Thank You for Subscription')</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("mylogin/login.aspx");
        }
    }
}