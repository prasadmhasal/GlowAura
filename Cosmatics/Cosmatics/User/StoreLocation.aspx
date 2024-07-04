<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="StoreLocation.aspx.cs" Inherits="Cosmatics.User.StoreLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <style>
        .contact-area {
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
        }

        @media only screen and (max-width:768px) {
            .contact {
                margin-bottom: 60px;
            }
        }

        .contact input {
            background: #eee;
            border: 1px solid #fff;
            border-radius: 3px;
            -webkit-box-shadow: none;
            box-shadow: none;
            color: #232434;
            font-size: 16px;
            height: 60px;
            padding: 5px;
            margin: 2px;
            width: 100%;
            font-family: 'poppins', sans-serif;
            padding-left: 30px;
            -webkit-transition: all 0.3s ease 0s;
            -o-transition: all 0.3s ease 0s;
            transition: all 0.3s ease 0s;
        }

        .contact textarea {
            background: #eee;
            border: 1px solid #fff;
            border-radius: 3px;
            -webkit-box-shadow: none;
            box-shadow: none;
            color: #232434;
            font-size: 16px;
            padding: 10px;
            width: 100%;
            font-family: 'poppins', sans-serif;
            padding-left: 30px;
            -webkit-transition: all 0.3s ease 0s;
            -o-transition: all 0.3s ease 0s;
            transition: all 0.3s ease 0s;
        }

        .contact input:focus {
            background: #fff;
            border: 1px solid #fff;
            color: #232434;
            -webkit-box-shadow: none;
            box-shadow: none;
            outline: 0 none;
        }

        .contact textarea:focus {
            background: #fff;
            border: 1px solid #fff;
            color: #232434;
            -webkit-box-shadow: none;
            box-shadow: none;
            outline: 0 none;
        }

        .form-control::placeholder {
            color: #232434;
            opacity: 1;
        }

        .mybutton {
            border-radius: 30px;
            color: #fff;
            outline: medium none !important;
            padding: 15px 27px;
            text-transform: capitalize;
            -webkit-transition: all 0.3s ease 0s;
            -o-transition: all 0.3s ease 0s;
            transition: all 0.3s ease 0s;
            background: #7564e5;
            font-family: 'poppins', sans-serif;
            cursor: pointer;
            width: 100%;
        }

            .mybutton:hover,
            .mybutton:focus {
                background: #232434;
                color: #fff;
            }

        /*START ADDRESS*/

        .single_address {
            overflow: hidden;
            margin-bottom: 10px;
            padding-left: 40px;
        }

        @media only screen and (max-width:768px) {
            .single_address {
                padding-left: 0px;
            }
        }

        .single_address i {
            background: #eee;
            color: #7564e5;
            border-radius: 30px;
            width: 60px;
            height: 60px;
            line-height: 60px;
            text-align: center;
            float: left;
            margin-right: 14px;
            font-size: 22px;
            -webkit-box-shadow: 0 5px 30px 0 rgba(0, 0, 0, 0.1);
            box-shadow: 0 5px 30px 0 rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            -webkit-transition: all 0.3s ease 0s;
            -o-transition: all 0.3s ease 0s;
            transition: all 0.3s ease 0s;
        }

        .single_address:hover i {
            background: #7564e5;
            color: #fff;
        }

        .single_address h4 {
            font-size: 18px;
            margin-bottom: 0px;
            overflow: hidden;
            font-weight: 600;
        }

        .single_address p {
            overflow: hidden;
            margin-top: 5px;
        }

        .section-title h1 {
            font-size: 44px;
            font-weight: 500;
            margin-top: 0;
            position: relative;
            text-transform: capitalize;
            margin-bottom: 15px;
        }

        .section-title p {
            padding: 0 10px;
            width: 70%;
            margin: auto;
            letter-spacing: 1px;
        }

        .section-title {
            margin-bottom: 60px;
        }

        .text-center {
            text-align: center !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="overflow-hidden">
    <div class="row" style="padding:0px">
        <div class="col-12">
            <div class="w-100 bg-gray text-white">
                <asp:Image ID="Image1" CssClass="card-img w-100" runat="server" ImageUrl="~/Images/location.jpg"></asp:Image>
            </div>
        </div>
    </div>
</div>
<div "contact" class="contact-area section-padding mt-3">
	<div class="container">										
		<div class="section-title text-center">
			<h1>Get in Touch</h1>
			<p>We're here to help! Whether you have a question about our services, want to collaborate, or just say hello, feel free to reach out. Your message is important to us, and we'll get back to you as soon as possible.</p>
		</div>					
		<div class="row">
			<div class="col-lg-7">	
				<div class="contact">
					
						<div class="row">
							<div class="form-group col-md-6">	
                                <asp:TextBox ID="TextBox1" runat="server"  name="name" class="form-control" placeholder="Name" required="required"></asp:TextBox>
							</div>
							<div class="form-group col-md-6">
								
                                <asp:TextBox ID="TextBox2" runat="server" type="email"  name="email" class="form-control" placeholder="Email" required="required"></asp:TextBox>
							</div>
							<div class="form-group col-md-12">
								
                                <asp:TextBox ID="TextBox3" runat="server" name="subject" class="form-control" placeholder="Subject" required="required"></asp:TextBox>
							</div>
							<div class="form-group col-md-12">
								<textarea rows="6" name="message" class="form-control" runat="server" placeholder="Your Message" required="required"></textarea>
                                
							</div>
							<div class="col-md-12 text-center mt-2">
                               <asp:Button ID="submitButton" runat="server" Text="Send Message" Class="btn btn-contact mybutton" />

							</div>
						</div>
				</div>
			</div><!--- END COL --> 
			<div class="col-lg-5">
				<div class="single_address">
					<i class="fa fa-map-marker"></i>
					<h4>Our Address</h4>
					<p>3481 Melrose Place, Beverly Hills</p>
				</div>
				<div class="single_address">
					<i class="fa fa-envelope"></i>
					<h4>Send your message</h4>
					<p>Info@example.com</p>
				</div>
				<div class="single_address">
					<i class="fa fa-phone"></i>
					<h4>Call us on</h4>
					<p>(+1) 517 397 7100</p>
				</div>
				<div class="single_address">
					<i class="fa fa-clock-o"></i>
					<h4>Work Time</h4>
					<p>Mon - Fri: 08.00 - 16.00. <br>Sat: 10.00 - 14.00</p>
				</div>					
			</div><!--- END COL --> 
        <div class="col-lg-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d241292.03952746364!2d72.86810196837453!3d19.09940154809045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1snyaka%20stores!5e0!3m2!1sen!2sin!4v1719306544182!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
		</div><!--- END ROW -->
	</div><!--- END CONTAINER -->	
</div>
  


</asp:Content>