using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using PdfSharp.Pdf;
using TheArtOfDev.HtmlRenderer.PdfSharp;



namespace Cosmatics.User
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ECommerceConnectionString"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();
            string userID = Session["ID"].ToString();
            Label1.Text = Session["FinalTotal"].ToString();
            string q = $"INSERT INTO placeorder (pname, pcat, price, qty, pic, dt, suser, totalprice) " +
            "SELECT pname, pcat, price, qty, pic, dt, suser, totalprice " +
            "FROM cart WHERE suser=@userID";
            SqlCommand c = new SqlCommand(q, conn);
            c.Parameters.AddWithValue("@UserID", userID);
            int row = c.ExecuteNonQuery();
            if (row > 0)
            {
                string query = $"delete from cart where suser='{Session["ID"].ToString()}'";
                SqlCommand cm = new SqlCommand(query, conn);
                cm.ExecuteNonQuery();

            }
        }

        protected void btnSendInvoice_Click(object sender, EventArgs e)
        {
            // Example customer details (replace with actual data)
            
            string customerEmail = "prasadmhasal@gmail.com";

            // Generate PDF invoice and send email
            GenerateInvoicePdf(customerEmail);
        }

        protected void GenerateInvoicePdf(string customerEmail)
        {
            // Sample HTML content for the invoice (replace with your actual invoice HTML)
            string invoiceHtml = @"
                <html>
                <head>
                    <style>
                        	body {
    		margin-top: 20px;
    		background: #eee;
    	}

    	/*Invoice*/
    	.invoice .top-left {
    		font-size: 65px;
    		color: #3ba0ff;
    	}

    	.invoice .top-right {
    		text-align: right;
    		padding-right: 20px;
    	}

    	.invoice .table-row {
    		margin-left: -15px;
    		margin-right: -15px;
    		margin-top: 25px;
    	}

    	.invoice .payment-info {
    		font-weight: 500;
    	}

    	.invoice .table-row .table > thead {
    		border-top: 1px solid #ddd;
    	}

    		.invoice .table-row .table > thead > tr > th {
    			border-bottom: none;
    		}

    	.invoice .table > tbody > tr > td {
    		padding: 8px 20px;
    	}

    	.invoice .invoice-total {
    		margin-right: -10px;
    		font-size: 16px;
    	}

    	.invoice .last-row {
    		border-bottom: 1px solid #ddd;
    	}

    	.invoice-ribbon {
    		width: 85px;
    		height: 88px;
    		overflow: hidden;
    		position: absolute;
    		top: -1px;
    		right: 14px;
    	}

    	.ribbon-inner {
    		text-align: center;
    		-webkit-transform: rotate(45deg);
    		-moz-transform: rotate(45deg);
    		-ms-transform: rotate(45deg);
    		-o-transform: rotate(45deg);
    		position: relative;
    		padding: 7px 0;
    		left: -5px;
    		top: 11px;
    		width: 120px;
    		background-color: #66c591;
    		font-size: 15px;
    		color: #fff;
    	}

    		.ribbon-inner:before, .ribbon-inner:after {
    			content: "";
    			position: absolute;
    		}

    		.ribbon-inner:before {
    			left: 0;
    		}

    		.ribbon-inner:after {
    			right: 0;
    		}

    	@media(max-width:575px) {
    		.invoice .top-left, .invoice .top-right, .invoice .payment-details {
    			text-align: center;
    		}

    		.invoice .from, .invoice .to, .invoice .payment-details {
    			float: none;
    			width: 100%;
    			text-align: center;
    			margin-bottom: 25px;
    		}

    			.invoice p.lead, .invoice .from p.lead, .invoice .to p.lead, .invoice .payment-details p.lead {
    				font-size: 22px;
    			}

    		.invoice .btn {
    			margin-top: 10px;
    		}
    	}

    	@media print {
    		.invoice {
    			width: 900px;
    			height: 800px;
    		}
    	}
                        body { font-family: Arial, sans-serif; }
                        .invoice { /* Your invoice styles */ }
                        .invoice-table { width: 100%; border-collapse: collapse; }
                        .invoice-table th, .invoice-table td { border: 1px solid #ddd; padding: 8px; }
                        .invoice-total { font-weight: bold; }
                    </style>
                </head>
                <body>
                    <div class='container bootstrap snippets bootdeys'>
                        <div class='row'>
                            <div class='col-sm-12'>
                                <div class='panel panel-default invoice' id='invoice'>
                                    <div class='panel-body'>
                                        <div class='invoice-ribbon'>
                                            <div class='ribbon-inner'>PAID</div>
                                        </div>
                                        <div class='row'>
                                            <div class='col-sm-6 top-left'>
                                                <i class='fa fa-rocket'></i>
                                            </div>
                                            <div class='col-sm-6 top-right'>
                                                <h3 class='marginright'>INVOICE-1234578</h3>
                                                <span class='marginright'>14 April 2014</span>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class='row'>
                                            <div class='col-xs-4 from'>
                                                <p class='lead marginbottom'>From : Dynofy</p>
                                                <p>350 Rhode Island Street</p>
                                                <p>Suite 240, San Francisco</p>
                                                <p>California, 94103</p>
                                                <p>Phone: 415-767-3600</p>
                                                <p>Email: <a href='mailto:your-email@example.com'>your-email@example.com</a></p>
                                            </div>
                                            <div class='col-xs-4 to'>
                                                <p class='lead marginbottom'>To : John Doe</p>
                                                <p>425 Market Street</p>
                                                <p>Suite 2200, San Francisco</p>
                                                <p>California, 94105</p>
                                                <p>Phone: 415-676-3600</p>
                                                <p>Email: <a href='mailto:customer@example.com'>customer@example.com</a></p>
                                            </div>
                                            <div class='col-xs-4 text-right payment-details'>
                                                <p class='lead marginbottom payment-info'>Payment details</p>
                                                <p>Date: 14 April 2014</p>
                                                <p>VAT: DK888-777 </p>
                                                <p>Total Amount: $1019</p>
                                                <p>Account Name: Flatter</p>
                                            </div>
                                        </div>
                                        <div class='row table-row'>
                                            <table class='invoice-table'>
                                                <thead>
                                                    <tr>
                                                        <th class='text-center' style='width: 5%'>#</th>
                                                        <th style='width: 50%'>Item</th>
                                                        <th class='text-right' style='width: 15%'>Quantity</th>
                                                        <th class='text-right' style='width: 15%'>Unit Price</th>
                                                        <th class='text-right' style='width: 15%'>Total Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class='text-center'>1</td>
                                                        <td>Flatter Theme</td>
                                                        <td class='text-right'>10</td>
                                                        <td class='text-right'>$18</td>
                                                        <td class='text-right'>$180</td>
                                                    </tr>
                                                    <tr>
                                                        <td class='text-center'>2</td>
                                                        <td>Flat Icons</td>
                                                        <td class='text-right'>6</td>
                                                        <td class='text-right'>$59</td>
                                                        <td class='text-right'>$354</td>
                                                    </tr>
                                                    <tr>
                                                        <td class='text-center'>3</td>
                                                        <td>Wordpress version</td>
                                                        <td class='text-right'>4</td>
                                                        <td class='text-right'>$95</td>
                                                        <td class='text-right'>$380</td>
                                                    </tr>
                                                    <tr class='last-row'>
                                                        <td class='text-center'>4</td>
                                                        <td>Server Deployment</td>
                                                        <td class='text-right'>1</td>
                                                        <td class='text-right'>$300</td>
                                                        <td class='text-right'>$300</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class='row'>
                                            <div class='col-xs-6 margintop'>
                                                <p class='lead marginbottom'>THANK YOU!</p>
                                            </div>
                                            <div class='col-xs-6 text-right pull-right invoice-total'>
                                                <p>Subtotal : $1019</p>
                                                <p>Discount (10%) : $101</p>
                                                <p>VAT (8%) : $73</p>
                                                <p>Total : $991</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </body>
                </html>";


            // Convert HTML to PDF
            PdfDocument pdf = PdfGenerator.GeneratePdf(invoiceHtml, PdfSharp.PageSize.A4);

            // Save the document to a MemoryStream
            MemoryStream stream = new MemoryStream();
                pdf.Save(stream, false);
                stream.Position = 0;

                // Send email with attached PDF
                SendEmailWithAttachment(customerEmail, stream, "Invoice.pdf");
           
               
            
        }

        protected void SendEmailWithAttachment(string recipientEmail, MemoryStream attachmentStream, string attachmentFileName)
        {
            try
            {
                // SMTP settings (replace with your SMTP server and credentials)
                string smtpServer = "smtp.gmail.com";
                int smtpPort = 587;
                string smtpUsername = "prasadmhasal@gmail.com";
                string smtpPassword = "fxjuqdrhzmmeksyq";
                bool enableSsl = true;

                // Create new MailMessage and SmtpClient
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(smtpUsername);
                mail.To.Add(recipientEmail);
                mail.Subject = "Invoice";
                mail.Body = "Please find attached invoice.";

                // Attach PDF invoice
                mail.Attachments.Add(new Attachment(attachmentStream, attachmentFileName));

                // Configure SMTP client
                SmtpClient smtpClient = new SmtpClient(smtpServer, smtpPort);
                smtpClient.EnableSsl = enableSsl;
                smtpClient.Credentials = new NetworkCredential(smtpUsername, smtpPassword);

                // Send email
                smtpClient.Send(mail);

                // Dispose resources
                mail.Dispose();
                smtpClient.Dispose();
            }
            catch (Exception ex)
            {
                // Handle exception
                Response.Write($"Error sending email: {ex.Message}");
            }
            finally
            {
                Response.Write("<script>alter('email send')</script>");

                // Dispose the MemoryStream
                attachmentStream.Dispose();
            }
        }
    }

    }
