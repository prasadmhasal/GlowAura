<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Allproduct.aspx.cs" Inherits="Cosmatics.User.Allproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
        <div class="row">


            <div class="d-flex justify-content-center ">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" RepeatColumns="4" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <div class="card shadow rounded" style="width: 18rem; margin: 20px;">
                            <img class="card-img-top" src='<%# Eval("pic") %>' alt="Card image cap" width="200" height="250">
                            <!-- Update src attribute as needed -->
                            <div class="card-body">
                                <h5 class="card-title">Product Category: <%# Eval("pcat") %></h5>
                                <p class="card-text">Product Name: <%# Eval("pname") %></p>
                                <p class="card-text"><strong>Price: <%# Eval("price") %></strong></p>
                                <div class="mb-3 d-flex align-items-center">
                                    <h6 class="px-2">Qty:</h6>
                                    <div class="me-3">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select" Height="40" Width="200">
                                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="d-grid gap-2">
                                    <asp:Button ID="Button1" runat="server" Text="Add to Cart" CssClass="btn  rounded bg-dark text-white" CommandName="AddToCart" CommandArgument='<%# Eval("pid") %>' />
                                    
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ECommerce;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>

</asp:Content>
