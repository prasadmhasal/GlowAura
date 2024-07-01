<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Add_to_cart.aspx.cs" Inherits="Cosmatics.User.Add_to_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        .my {
            padding: 5px;
        }

        .ui-w-40 {
            width: 40px !important;
            height: auto;
        }

        .card {
            box-shadow: 0 1px 15px 1px rgba(52,40,104,.08);
        }

        .ui-product-color {
            display: inline-block;
            overflow: hidden;
            margin: .144em;
            width: .875rem;
            height: .875rem;
            border-radius: 10rem;
            -webkit-box-shadow: 0 0 0 1px rgba(0,0,0,0.15) inset;
            box-shadow: 0 0 0 1px rgba(0,0,0,0.15) inset;
            vertical-align: middle;
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
                                <div style="display: flex; flex-direction: row; align-items:center;">
                                    <asp:Image ID="Img1" ImageUrl='<%#Eval("pic") %>' Height="100" Width="100" runat="server"></asp:Image>
                                    <div class="me-2 px-3">
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                                    </div>
                                    <div class="me-2">
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("pcat") %>'></asp:Label>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <div class="text-center" style="border:1px solid gray; padding:5px">
                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("qty") %>'></asp:Label>
                                </div>
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
                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="black" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="black" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </div>
            <!-- / Shopping cart table -->

            <div class="d-flex flex-wrap justify-content-end align-items-center pb-4">
                <div class="text-right mt-4">
                    <label class="text-muted font-weight-large m-0 fs-4">Total price</label>
                    <div class="text-end ">
                        <strong>
                            <asp:Label ID="Label1" class="text-large fs-4" runat="server" Text="Label"></asp:Label>

                        </strong>
                    </div>
                </div>
            </div>


            <div class="text-end">
               

                <asp:Button ID="Button3" runat="server" class="btn btn-lg btn-gray md-btn-flat mt-2 mr-3" Text="Back to shopping" OnClick="Button3_Click"/>
                

                <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-dark mt-2" Text="Checkout" OnClick="Button1_Click" />
                
            </div>
        </div>
    </div>
</div>


</asp:Content>
