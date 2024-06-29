<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Add_to_cart.aspx.cs" Inherits="Cosmatics.User.Add_to_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        .my{
            padding:5px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mb-4">
            <div class="row justify-content-center">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <div class="col mb-4" style="margin: 20px">
                            <div class="card shadow" style="width: 18rem;">
                                <img class="card-img-top" src='<%# Eval("pic") %>' alt="Card image cap">
                                <div class="card-body">
                                    <h6 class="card-title">Product Category: <%# Eval("pcat") %></h6>
                                    <p class="card-text">Product Name: <%# Eval("pname") %></p>
                                    <p class="card-text"><strong>Price: <%# Eval("price") %></strong> <del>$29.99</del> <span class="text-danger">$19.99</span></p>
                                    <p class="card-text">Product Quantity: <%# Eval("qty") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="text-center mt-3">
                <!-- Button to trigger modal -->
               <asp:HyperLink ID="HyperLinkCreateAccount" runat="server" CssClass="text-primary btn btn-dark text-white  rounded-pill"  NavigateUrl="#" data-toggle="modal" data-target="#exampleModal" ForeColor="#CCCCCC">Order Now</asp:HyperLink>

                <asp:Button ID="Button1" runat="server" Text="Continue shopping" CssClass="btn btn-dark rounded-pill bg-dark text-white" OnClick="Button1_Click" />
            </div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <h5 class="modal-title text-center" id="exampleModalLabel">Order Details</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                        <!-- Registration form -->

                        <div class="form-group my">
                            <label for="TextBox3">Name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Full Name"></asp:TextBox>
                        </div>
                        <div class="form-group my">
                            <label for="TextBox5">Email ID</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Email ID"></asp:TextBox>
                        </div>
                        <div class="form-group my">
                            <label for="TextBox6">Mobile Number</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Eg:9012345678"></asp:TextBox>
                        </div>
                        <div class="form-group my">
                            <label for="TextBox7">Address</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Enter Your Permanent Address"></asp:TextBox>
                        </div>
                        <div class="form-group my">
                            <label for="TextBox7">Pincode</label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Enter Your Permanent Address"></asp:TextBox>
                        </div>

                        <asp:Button ID="Button3"  runat="server" Text="Submit" CssClass="btn btn-dark btn-block mt-3 rounded-pill" OnClick="Button3_Click" />
                    </div>
                    </div>
                </div>
                </div>
        </div>


<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceConnectionString %>" SelectCommand="SELECT [pname], [pcat], [price], [qty], [pic] FROM [cart]"></asp:SqlDataSource>

</asp:Content>
