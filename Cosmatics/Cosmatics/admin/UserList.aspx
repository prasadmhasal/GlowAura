<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="Cosmatics.admin.UserList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="row">
          

    

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="table table-striped border shadow">
                <Columns>
                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="acc_user" HeaderText="acc_user" SortExpression="acc_user" />
                    <asp:BoundField DataField="acc_user_name" HeaderText="acc_user_name" SortExpression="acc_user_name" />
                    <asp:BoundField DataField="acc_email" HeaderText="acc_email" SortExpression="acc_email" />
                    <asp:BoundField DataField="acc_mobile_number" HeaderText="acc_mobile_number" SortExpression="acc_mobile_number" />
                    <asp:BoundField DataField="acc_gender" HeaderText="acc_gender" SortExpression="acc_gender" />
                    <asp:BoundField DataField="acc_role" HeaderText="acc_role" SortExpression="acc_role" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" HeaderText="Delete">
                        <ControlStyle CssClass="btn btn-danger" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ECommerceConnectionString %>" DeleteCommand="DELETE FROM [user_account] WHERE [ID] = @original_ID AND (([acc_user] = @original_acc_user) OR ([acc_user] IS NULL AND @original_acc_user IS NULL)) AND (([acc_user_name] = @original_acc_user_name) OR ([acc_user_name] IS NULL AND @original_acc_user_name IS NULL)) AND (([acc_email] = @original_acc_email) OR ([acc_email] IS NULL AND @original_acc_email IS NULL)) AND (([acc_mobile_number] = @original_acc_mobile_number) OR ([acc_mobile_number] IS NULL AND @original_acc_mobile_number IS NULL)) AND (([acc_gender] = @original_acc_gender) OR ([acc_gender] IS NULL AND @original_acc_gender IS NULL)) AND (([acc_role] = @original_acc_role) OR ([acc_role] IS NULL AND @original_acc_role IS NULL))" InsertCommand="INSERT INTO [user_account] ([acc_user], [acc_user_name], [acc_email], [acc_mobile_number], [acc_gender], [acc_role]) VALUES (@acc_user, @acc_user_name, @acc_email, @acc_mobile_number, @acc_gender, @acc_role)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [acc_user], [acc_user_name], [acc_email], [acc_mobile_number], [acc_gender], [acc_role] FROM [user_account]" UpdateCommand="UPDATE [user_account] SET [acc_user] = @acc_user, [acc_user_name] = @acc_user_name, [acc_email] = @acc_email, [acc_mobile_number] = @acc_mobile_number, [acc_gender] = @acc_gender, [acc_role] = @acc_role WHERE [ID] = @original_ID AND (([acc_user] = @original_acc_user) OR ([acc_user] IS NULL AND @original_acc_user IS NULL)) AND (([acc_user_name] = @original_acc_user_name) OR ([acc_user_name] IS NULL AND @original_acc_user_name IS NULL)) AND (([acc_email] = @original_acc_email) OR ([acc_email] IS NULL AND @original_acc_email IS NULL)) AND (([acc_mobile_number] = @original_acc_mobile_number) OR ([acc_mobile_number] IS NULL AND @original_acc_mobile_number IS NULL)) AND (([acc_gender] = @original_acc_gender) OR ([acc_gender] IS NULL AND @original_acc_gender IS NULL)) AND (([acc_role] = @original_acc_role) OR ([acc_role] IS NULL AND @original_acc_role IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_acc_user" Type="String" />
                    <asp:Parameter Name="original_acc_user_name" Type="String" />
                    <asp:Parameter Name="original_acc_email" Type="String" />
                    <asp:Parameter Name="original_acc_mobile_number" Type="Int64" />
                    <asp:Parameter Name="original_acc_gender" Type="String" />
                    <asp:Parameter Name="original_acc_role" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="acc_user" Type="String" />
                    <asp:Parameter Name="acc_user_name" Type="String" />
                    <asp:Parameter Name="acc_email" Type="String" />
                    <asp:Parameter Name="acc_mobile_number" Type="Int64" />
                    <asp:Parameter Name="acc_gender" Type="String" />
                    <asp:Parameter Name="acc_role" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="acc_user" Type="String" />
                    <asp:Parameter Name="acc_user_name" Type="String" />
                    <asp:Parameter Name="acc_email" Type="String" />
                    <asp:Parameter Name="acc_mobile_number" Type="Int64" />
                    <asp:Parameter Name="acc_gender" Type="String" />
                    <asp:Parameter Name="acc_role" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_acc_user" Type="String" />
                    <asp:Parameter Name="original_acc_user_name" Type="String" />
                    <asp:Parameter Name="original_acc_email" Type="String" />
                    <asp:Parameter Name="original_acc_mobile_number" Type="Int64" />
                    <asp:Parameter Name="original_acc_gender" Type="String" />
                    <asp:Parameter Name="original_acc_role" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
          

    

        </div>

    </div>
   
</asp:Content>
