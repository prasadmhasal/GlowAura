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
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="225px" Width="1082px" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="CID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("prod_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PIC">
                        <ItemTemplate>
                            <asp:Image ID="Img1" ImageUrl='<%#Eval("pic") %>' Height="100" Width="100" runat="server"></asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Prod Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Prod Cat">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("pcat") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Qty">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("qty") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Total Price">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("totalprice") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("dt") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button class="btn btn-sm btn-danger" ID="Button2" CommandName="Delete" runat="server" Text="Remove" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>



                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>

            <div class="d-grid gap-2">
                
                <asp:Button ID="Button1" CssClass="btn btn-primary rounded-pill bg-dark text-white" runat="server" Text="Button" OnClick="Button1_Click" />  
                
                <asp:Button ID="Button3" runat="server" Text="Back To Shopping " CssClass="btn btn-primary rounded-pill bg-dark text-white" OnClick="Button3_Click" />
            </div>
        </div>
    </div>

</asp:Content>
