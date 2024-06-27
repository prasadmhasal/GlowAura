<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Add_to_cart.aspx.cs" Inherits="Cosmatics.User.Add_to_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container border shadow mt-3 mb-3 py-2">
        <div class="d-flex justify-content-evenly flex-row flex-wrap">


            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" DataSourceID="SqlDataSource2">
                <itemtemplate>


                    <div style="width: 18rem;">
                        <img class="card-img-top card-image" src="<%#Eval("pic")%>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Product Category:<%#Eval("pcat")%></h5>
                            <p class="card-text">Product Name:<%#Eval("pname")%></p>
                            <p class="card-text"><strong>Price:<%#Eval("price") %></strong><del>$29.99</del> <span class="text-danger">$19.99</span></p>
                            <p class="card-text">Product Quantity:<%#Eval("qty")%></p>
                        </div>
                    </div>

                </itemtemplate>
            </asp:DataList>

        </div>
    </div>



    <div class="text-center mt-3">
        <asp:Button ID="Button2" class="btn btn-primary rounded-pill bg-dark text-white" runat="server" Text="Place Order" OnClick="Button2_Click" />

        <asp:Button ID="Button1" class="btn btn-primary rounded-pill bg-dark text-white" runat="server" Text="Continue shopping" OnClick="Button1_Click" />

    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ECommerce;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [pname], [pcat], [price], [qty], [pic] FROM [cart]"></asp:SqlDataSource>
</asp:Content>
