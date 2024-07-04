<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="enquiry.aspx.cs" Inherits="Cosmatics.admin.enquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1"
                Width="100%" CssClass="table table-striped border shadow">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                    <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
                    <asp:TemplateField HeaderText="Solve">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSolved" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" HeaderText="Delete" DeleteText="Delete">
                        <ControlStyle CssClass="btn btn-danger btn-sm" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>

            <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" CssClass="btn btn-primary mt-3" OnClick="btnSendEmail_Click" />
        </div>
    </div>
</div>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceConnectionString %>"
    SelectCommand="SELECT * FROM [get_in_touch]" DeleteCommand="DELETE FROM [get_in_touch] WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
</asp:SqlDataSource>

    

   
  

    

   
</asp:Content>
