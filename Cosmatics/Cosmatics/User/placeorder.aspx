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
    <div class="conatiner">
        <div class="row">
            <div class="col-12 d-flex">

           
            <section class="order-form m-4">
                <div class="container pt-4">
                    <div class="row">
                        <div class="col-12 px-4">
                            <h1>You can see my Order Form</h1>
                            <span>with some explanation below</span>
                            <hr class="mt-1" />
                        </div>

                        <div class="col-12">
                            <div class="row mx-4">
                                <div class="col-12">
                                    <label class="order-form-label">FullName</label>
                                </div>
                                <div class="col-sm-6">
                                    <div data-mdb-input-init class="form-outline">
                                        <input type="text" id="form1" class="form-control order-form-input" />
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3 mx-4">
                                <div class="col-12">
                                    <label class="order-form-label">Adress</label>
                                </div>
                                <div class="col-12">
                                    <div data-mdb-input-init class="form-outline">
                                        <input type="text" id="form5" class="form-control order-form-input" />
                                        <label class="form-label" for="form5">Street Address</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-2 pe-sm-2">
                                    <div data-mdb-input-init class="form-outline">
                                        <input type="text" id="form7" class="form-control order-form-input" />
                                        <label class="form-label" for="form7">City</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-2 ps-sm-0">
                                    <div data-mdb-input-init class="form-outline">
                                        <input type="text" id="form8" class="form-control order-form-input" />
                                        <label class="form-label" for="form8">Region</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-2 pe-sm-2">
                                    <div data-mdb-input-init class="form-outline">
                                        <input type="text" id="form9" class="form-control order-form-input" />
                                        <label class="form-label" for="form9">Postal / Zip Code</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 mt-2 ps-sm-0">
                                    <div data-mdb-input-init class="form-outline">
                                        <input type="text" id="form10" class="form-control order-form-input" />
                                        <label class="form-label" for="form10">Country</label>
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
                               
                                    <asp:Button runat="server"  class="btn btn-primary d-block mx-auto btn-submit" Text="Order Now" OnClick="Pay_Click" />
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </section>
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Total Amount </h5>
                    
                        <asp:Label ID="Label5" class="card-subtitle mb-2 text-muted" runat="server" Text=""></asp:Label>
                    
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    
                </div>
            </div>
          </div>

        </div>

    </div>


</asp:Content>
