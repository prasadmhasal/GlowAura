<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="FindyourShade.aspx.cs" Inherits="Cosmatics.User.Find_your_Shade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .myhover:hover{
       
       transform: translateY(-10px);
    }
    .hover:hover{
        border: 1px solid gray;
        box-shadow: 10px 10px 5px 12px lightblue;
    }
</style>
    <div class="container mt-5 mb-5">
    <div class=" mb-3 text-center">
        <asp:Label ID="Label1" runat="server" Text="Find Your Skin Tone" Font-Size="25px" Font-Bold="False"></asp:Label>
    </div>
    <div class="row">
        <div class="d-flex justify-content-evenly">
            <div class="col-md-2 me-5 text-center myhover">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/User/ChooesUndertone.aspx" runat="server" style="text-decoration:none; color:black" ForeColor="Black">
                    <asp:Image ID="Image2" runat="server" CssClass="rounded-circle shadow hover" ImageUrl="~/Images/girl1.jfif" Style="object-fit: contain;" Width="200px"  Height="200px"/>
                    <div class="mt-2">
                        
                        
                            <asp:Label ID="Label2" runat="server" Text="Light" Font-Size="20px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False"></asp:Label>

                      
                    </div>
                </asp:HyperLink>

            </div>
            <div class="col-md-2  me-5 text-center myhover">
                <asp:HyperLink ID="HyperLink2"  NavigateUrl="~/User/ChooesUndertone.aspx" ForeColor="Black" runat="server"  style="text-decoration:none; color:black">
                    <asp:Image ID="Image3" runat="server" CssClass="rounded-circle shadow hover" ImageUrl="~/Images/girl2.jfif" Style="object-fit: cover;" Width="200px" Height="200px" />
                    <div class="mt-2">
                        

                        <asp:Label ID="Label3" runat="server" Text="Medium" Font-Size="20px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False"></asp:Label>
                       
                    </div>
                </asp:HyperLink>

            </div>
            <div class="col-md-2  me-5 text-center myhover">
                <asp:HyperLink ID="HyperLink3"  NavigateUrl="~/User/ChooesUndertone.aspx" ForeColor="Black" runat="server"  style="text-decoration:none; color:black">
                    <asp:Image ID="Image4" runat="server" CssClass="rounded-circle shadow hover" ImageUrl="~/Images/girl3.jfif" Style="object-fit:cover;" Width="200px"  Height="200px" />
                    <div class="mt-2">
                  

                        <asp:Label ID="Label4" runat="server" Text="Deep" Font-Size="20px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False"></asp:Label>
                        
                    </div>
                </asp:HyperLink>

            </div>
            
        </div>
        
    </div>
</div>
</asp:Content>
