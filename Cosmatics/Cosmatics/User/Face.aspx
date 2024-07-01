<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Face.aspx.cs" Inherits="Cosmatics.User.Face" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="d-flex justify-content-center ">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" DataKeyField="pid" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="border shadow" style="width: 18rem; margin:20px">
                        <img class="card-img-top card-image" src='<%#Eval("pic") %>' alt="Card image cap" width="200" height="250">
                        <div class="card-body">
                            <h6 class="card-title">Product Category:<%#Eval("pcat")%></h6>
                            <p class="card-text">Product Name:<%#Eval("pname")%></p>
                            <p class="card-text"><strong>Price:<%#Eval("price") %></strong></p>
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
                                <asp:Button ID="Button1" CommandName="AddToCart" CommandArgument='<%#Eval("pid")%>' class="btn  rounded bg-dark text-white" runat="server" Text="Add to Cart" />
                                
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ECommerce;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product] where [pcat]='face' OR [pcat]='Face'"></asp:SqlDataSource>



</asp:Content>
