<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Cosmatics.admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mybg">
        <div class="container mt-5 mb-2  overflow-hidden">
            <div runat="server" class="form-container w-50 border shadow offset-3">
                <div style="padding: 20px">
                    <h2 class="text-center">Add Product</h2>

                    <div class="form-group">
                        <asp:Label ID="PName" runat="server" Text="Product Name"></asp:Label>
                        <asp:TextBox ID="ProName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <br />


                    <div class="form-group">
                        <asp:Label ID="Pcat" runat="server" Text="Product Category"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem>Face</asp:ListItem>
                            <asp:ListItem>Eyes</asp:ListItem>
                            <asp:ListItem>Lips</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />


                    <div class="form-group">
                        <asp:Label ID="Price" runat="server" Text="Product Price"></asp:Label>
                        <asp:TextBox ID="ProductPrice" runat="server"  CssClass="form-control"></asp:TextBox>
                    </div>
                    <br />


                    <div class="form-group">
                        <asp:Label ID="PImg" runat="server" Text="Product Image"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" type="file"  CssClass="form-control" runat="server" />

                    </div>
                    <br />


                    <div class="form-group text-center">
                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-dark btn-block w-100" OnClick="Button1_Click"  />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
