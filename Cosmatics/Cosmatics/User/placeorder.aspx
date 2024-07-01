<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="placeorder.aspx.cs" Inherits="Cosmatics.User.placeorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .order-form .container {
      color: #4c4c4c;
      padding: 20px;
      box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
      max-width: 650px;
    }

    .order-form-label {
      margin: 8px 0 0 0;
      font-size: 14px;
      font-weight: bold;
    }

.order-form-input,
.form-label,
.form-check-label {
      font-family: 'Open Sans', sans-serif;
      font-size: 14px;

    }

    .btn-submit:hover {
      background-color: #0D47A1 !important;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    </head>
    <div class="container">
    <div class="row">
        <div class="col-lg-8">
            <section class="order-form m-4">
                <div class="container pt-4">
                    <div class="row">
                        <div class="col-12 px-4">
                            <h1>Order details</h1>
                            <hr class="mt-1" />
                        </div>

                        <div class="col-12">
                            <div class="row mx-4">
                                <div class="col-12">
                                    <label class="order-form-label">Full Name</label>
                                    <div data-mdb-input-init class="form-outline">
                                        <asp:TextBox ID="TextBox1" class="form-control order-form-input" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-12 mt-3">
                                    <label class="order-form-label">Address</label>
                                    <div data-mdb-input-init class="form-outline">
                                       <asp:TextBox ID="TextBox2" class="form-control order-form-input" runat="server"></asp:TextBox>
                                        <label class="form-label" for="form5">Street Address</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-3 pe-sm-2">
                                    <div data-mdb-input-init class="form-outline">
                                       <asp:TextBox ID="TextBox3" class="form-control order-form-input" runat="server"></asp:TextBox>
                                        <label class="form-label" for="form7">City</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-3 ps-sm-0">
                                    <div data-mdb-input-init class="form-outline">
                                       <asp:TextBox ID="TextBox4" class="form-control order-form-input" runat="server"></asp:TextBox>
                                        <label class="form-label" for="form8">Region</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-3 pe-sm-2">
                                    <div data-mdb-input-init class="form-outline">
                                       <asp:TextBox ID="TextBox5" class="form-control order-form-input" runat="server"></asp:TextBox>
                                        <label class="form-label" for="form9">Postal / Zip Code</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-3 ps-sm-0">
                                    <div data-mdb-input-init class="form-outline">
                                       <asp:TextBox ID="TextBox6" class="form-control order-form-input" runat="server"></asp:TextBox>
                                        <label class="form-label" for="form10">Country</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-3 ps-sm-0">
                                    <div data-mdb-input-init class="form-outline">
                                        <asp:TextBox ID="TextBox7" class="form-control order-form-input" runat="server"></asp:TextBox>
                                        <label class="form-label" for="form10">Contact</label>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3 mx-4">
                                <div class="col-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                                        <label class="form-check-label" for="flexCheckDefault">I know what I need to know</label>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-12">
                                    <asp:Button runat="server" class="btn btn-primary d-block mx-auto btn-submit" Text="Order Now" OnClick="Pay_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div class="col-lg-4">
            <div class="card m-4" style="width: 100%;">
                <div class="card-body">
                    <h5 class="card-title">Total Amount</h5>
                    <asp:Label ID="Label5" class="card-subtitle mb-2 text-muted" runat="server" Text=""></asp:Label>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
        </div>
    </div>
</div>



</asp:Content>
