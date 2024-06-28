<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Cosmatics.admin.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
    <div class="row">
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1" Width="100%" CssClass="table table-striped border shadow ">
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                <asp:BoundField DataField="pcat" HeaderText="pcat" SortExpression="pcat" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
                <asp:BoundField DataField="mdt" HeaderText="mdt" SortExpression="mdt" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("pic") %>' Height="100" Width="100" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowEditButton="True" HeaderText="Update">
                    <ControlStyle CssClass="btn btn-success" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ECommerceConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [pid] = @original_pid AND (([pname] = @original_pname) OR ([pname] IS NULL AND @original_pname IS NULL)) AND (([pcat] = @original_pcat) OR ([pcat] IS NULL AND @original_pcat IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND (([mdt] = @original_mdt) OR ([mdt] IS NULL AND @original_mdt IS NULL)) AND (([Productimage] = @original_Productimage) OR ([Productimage] IS NULL AND @original_Productimage IS NULL))" InsertCommand="INSERT INTO [product] ([pname], [pcat], [price], [pic], [mdt]) VALUES (@pname, @pcat, @price, @pic, @mdt)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [pname] = @pname, [pcat] = @pcat, [price] = @price, [pic] = @pic, [mdt] = @mdt  WHERE [pid] = @original_pid AND (([pname] = @original_pname) OR ([pname] IS NULL AND @original_pname IS NULL)) AND (([pcat] = @original_pcat) OR ([pcat] IS NULL AND @original_pcat IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND (([mdt] = @original_mdt) OR ([mdt] IS NULL AND @original_mdt IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_pid" Type="Int32" />
                <asp:Parameter Name="original_pname" Type="String" />
                <asp:Parameter Name="original_pcat" Type="String" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_pic" Type="String" />
                <asp:Parameter Name="original_mdt" Type="String" />
                
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="pcat" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="mdt" Type="String" />
               
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="pcat" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="mdt" Type="String" />
               
                <asp:Parameter Name="original_pid" Type="Int32" />
                <asp:Parameter Name="original_pname" Type="String" />
                <asp:Parameter Name="original_pcat" Type="String" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_pic" Type="String" />
                <asp:Parameter Name="original_mdt" Type="String" />
               
            </UpdateParameters>

        </asp:SqlDataSource>
       
    </div>
</div>

</asp:Content>
