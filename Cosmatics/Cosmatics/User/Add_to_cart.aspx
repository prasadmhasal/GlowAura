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
   <div class="container px-3 my-5 clearfix">
    <div class="card">
        <div class="card-header">
            <h2>Shopping Cart</h2>
        </div>
        <div class="card-body">
            <!-- Shopping cart table -->
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="Product Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("prod_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Product Name & Details">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                                <br />
                                <asp:Image ID="Img1" ImageUrl='<%#Eval("pic") %>' Height="100" Width="100" runat="server"></asp:Image>
                                <br />
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("pcat") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("qty") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%#Eval("totalprice") %>'></asp:Label>
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
            </div>
            <!-- / Shopping cart table -->

            <div class="d-flex flex-wrap justify-content-between align-items-center pb-4">
                <div class="mt-4">
                    <label class="text-muted font-weight-normal">Promocode</label>
                    <input type="text" placeholder="ABC" class="form-control">
                </div>
                <div class="d-flex">
                    <div class="text-right mt-4 mr-5 me-5">
                        <label class="text-muted font-weight-normal m-0">Discount</label>
                        <div class="text-large"><strong>$20</strong></div>
                    </div>
                    <div class="text-right mt-4">
                        <label class="text-muted font-weight-normal m-0">Total price</label>
                        <div class="text-large">
                            <asp:Label ID="Label1" runat="server" Text="Label">

                            </asp:Label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-end">
                <button type="button" class="btn btn-lg btn-default md-btn-flat mt-2 mr-3">Back to shopping</button>
               

                <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-primary mt-2" Text="Checkout" OnClick="Button1_Click" />
                
            </div>
        </div>
    </div>
</div>


</asp:Content>
