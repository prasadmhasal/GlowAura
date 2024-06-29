<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Cosmatics.User.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-color: #f2f2f2;
        }
        .myhover:hover{
             transform: scale(1.2); 
             box-shadow:5px;
        }
        .myhover1:hover{
             transform: scale(1.1);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" w-100 Container-fluid" style="overflow: hidden">
        <div class="row ">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <asp:Image ID="Image1" class="d-block w-100" runat="server" ImageUrl="~/Images/slider2.png" Height="500px" />
                    </div>
                    <div class="carousel-item">
                        <asp:Image ID="Image9" class="d-block w-100" runat="server" ImageUrl="~/Images/slider4.jpg" Height="500px" />
                    </div>
                    <div class="carousel-item">
                        <asp:Image ID="Image10" class="d-block w-100" runat="server" ImageUrl="~/Images/slider3.jpg" Height="500px" />
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

        </div>

        <div class="container mt-5">
            <div class="col-md-3 mb-3">
                <asp:Label ID="Label1" runat="server" Text="Best Collections" Font-Size="25px" Font-Bold="True"></asp:Label>
            </div>
            <div class="row ">
                <div class="d-flex justify-content-evenly">
                    <div class="col-md-2 me-5 text-center myhover">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="#" runat="server" style="text-decoration:none; color:black" >
                            <asp:Image ID="Image2" runat="server" CssClass="rounded-circle shadow" ImageUrl="~/Images/lipsrick.jfif" Style="object-fit: contain;" Width="200px"  Height="200px"/>
                            <div class="mt-2">
                                <asp:Label ID="Label2" runat="server" Text="Lips" Font-Size="20px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False"></asp:Label>
                            </div>
                        </asp:HyperLink>

                    </div>
                    <div class="col-md-2  me-5 text-center myhover">
                        <asp:HyperLink ID="HyperLink2" NavigateUrl="#" runat="server"  style="text-decoration:none; color:black">
                            <asp:Image ID="Image3" runat="server" CssClass="rounded-circle shadow" ImageUrl="~/Images/eyes.jpg" Style="object-fit: cover;" Width="200px" Height="200px" />
                            <div class="mt-2">
                                <asp:Label ID="Label3" runat="server" Text="Eyes" Font-Size="20px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False"></asp:Label>
                            </div>
                        </asp:HyperLink>

                    </div>
                    <div class="col-md-2  me-5 text-center myhover">
                        <asp:HyperLink ID="HyperLink3" NavigateUrl="#" runat="server"  style="text-decoration:none; color:black">
                            <asp:Image ID="Image4" runat="server" CssClass="rounded-circle shadow" ImageUrl="~/Images/foundation.jpg" Style="object-fit:cover;" Width="200px"  Height="200px" />
                            <div class="mt-2">
                                <asp:Label ID="Label4" runat="server" Text="Face" Font-Size="20px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False"></asp:Label>
                            </div>
                        </asp:HyperLink>

                    </div>
                    
                </div>
                
            </div>
        </div>

        <div class="container mt-5" >
            <div class="row">
                <div class="card   shadow" style="border-radius:20px;" >
                    <div class="row g-0">
                        <div class="col-md-8">
                            <div class="card-body mt-5">
                                <h1 class="card-title" style="font-size: 4rem;">Find your
                                    <br />
                                    Perfect Shade</h1>
                                <p class="card-text" style="font-size: 1rem;">Find your best shade, perfect for your skin tone. All
                                    <br />
                                    in just 5 simple steps.</p>
                               
                                    <div class="mt-4">

                                        <asp:Button ID="Button1" class="btn rounded-pill me-2" Style="border-radius: 20px; color: aliceblue" runat="server" Text="Match me" BackColor="#967969" BorderStyle="None" Width="102px" Font-Bold="True" Height="37px" OnClick="Button1_Click" />
                                    </div>

                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:Image ID="Image5" class="img-fluid rounded-start" runat="server" ImageUrl="~/Images/girls.jpg" />
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="container mt-5">
            <div class="col-md-3 mb-3">
                <asp:Label ID="Label5" runat="server" Text="New Arival" Font-Size="25px" Font-Bold="True"></asp:Label>
            </div>

            <div class="row">
                <div class="d-flex justify-content-evenly">
                    <div class="">
                        <div class="text-center border shadow myhover1">
                         <asp:Image ID="Image6" class="rounded  " runat="server" ImageUrl="~/Images/card1.png" Width="400px" Height="400px" />
                        </div>
                    </div>
                    <div class="">
                        <div class="myhover1 text-center border shadow">
                        <asp:Image ID="Image7" class="rounded " runat="server" ImageUrl="~/Images/card2.png"  Width="400px" Height="400px"/>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="container mt-5">
            <div class="col-md-3 mb-3">
                <asp:Label ID="Label6" runat="server" Text="About Us" Font-Size="25px" Font-Bold="True"></asp:Label>
            </div>
            <div class="row">
                <div>
                    <div class="card mb-3 rounded-pill">
                        <div class="row ">
                            <div class="col-md-8">
                                <div class="card-body" style="padding-left:10rem; padding-top:2rem;">
                                    <%--<h5 class="card-title">About Us</h5>--%>
                                    <p class="card-text">
                                        "At Glow Aura, we're dedicated to simplifying beauty,
                                        <br />
                                        making it accessible, affordable, and uniquely yours!<br />
                                        Our cosmetics are crafted for diverse skin tones,<br />
                                        celebrating every hue with pride.
                                    </p>
                                    <p class="card-text">
                                        Designed and perfected locally,<br />
                                        our products ensure finding your ideal match is effortless.<br />
                                        Whether it's bold eyeshadows or seamless blenders,
                                        <br />
                                        we offer everything you need, conveniently delivered to your doorstep.
                                    </p>
                                    <p class="card-text">
                                        Embark on a beauty journey with us and discover confidence
                                        <br />
                                        through our personalized shade finder quiz. At Glow Aura,<br />
                                        beauty means embracing your ,inner radiance and feeling incredible inside and out!"
                                    </p>
                                    
                                </div>
                            </div>
                            <div class="col-4" style="overflow:hidden">
                                <asp:Image ID="Image8" class="img-fluid rounded-pill" runat="server" ImageUrl="~/Images/poster1.png" Style=" height:100%;" />
                            </div>
                       </div>
                    </div>

                </div>

            </div>

        </div>
       
    </div>

   



</asp:Content>
