<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Face.aspx.cs" Inherits="Cosmatics.User.Face" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container border shadow mt-3 mb-3 py-2">
        <div class="d-flex justify-content-evenly flex-row flex-wrap">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" DataKeyField="pid" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div style="width: 18rem;">
                        <img class="card-img-top card-image" src="img/Mascara.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Product Category:<%#Eval("pcat")%></h5>
                            <p class="card-text">Product Name:<%#Eval("pname")%></p>
                            <p class="card-text"><strong>Price:<%#Eval("price") %></strong><del>$29.99</del> <span class="text-danger">$19.99</span></p>
                            <h5 class="card-text">Qty
                           
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                            </h5>
                            
                            <div class="d-grid gap-2">
                                <asp:Button ID="Button1" CommandName="AddToCart" CommandArgument='<%#Eval("pid")%>' class="btn btn-primary rounded-pill bg-dark text-white" runat="server" Text="Add to Cart" />
                                <asp:Button ID="Button2" class="btn btn-primary rounded-pill bg-dark text-white" runat="server" Text="Buy Now" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ECommerce;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product] where [pcat]='face' OR [pcat]='Face'"></asp:SqlDataSource>



</asp:Content>
