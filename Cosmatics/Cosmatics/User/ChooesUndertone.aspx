<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="ChooesUndertone.aspx.cs" Inherits="Cosmatics.User.ChooesUndertone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
    .myhover{
          transition: transform 0.3s ease;
    }
     .myhover:hover{
        
        transform: translateY(-10px) ;
     }
     .hover:hover{
         border: 1px solid gray;
         box-shadow: 10px 10px 5px 12px lightblue;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-5">
     <div class=" mb-5 text-center">
         <asp:Label runat="server" Text="Choose your undertone" Font-Bold="True" Font-Size="25px"></asp:Label>
     </div>

     <div class="row">
         <div class="col justify-contain-center text-center">
             <div class="btn-group-vertical" role="group" aria-label="Basic checkbox toggle button group">
                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User/Chooesproduct.aspx">
                     <div class="mb-3 myhover">
                         <asp:TextBox ID="TextBox1" class="btn-check" runat="server"></asp:TextBox>
                         <asp:Label ID="Label1" runat="server" class="btn btn-outline-dark" Style="padding: 10px;" Text="Cool (Blue Veins)" Width="300px"></asp:Label>
                     </div>
                 </asp:HyperLink>
                 <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/User/Chooesproduct.aspx">

                 <div class="mb-3 myhover">
                     <asp:TextBox ID="TextBox2" class="btn-check" runat="server"></asp:TextBox>
                     <asp:Label ID="Label2" runat="server" class="btn btn-outline-dark"  style="padding:10px;" Text="Worm (Green Veins)" Width="300px"></asp:Label>
                 </div>
                 </asp:HyperLink>
                 <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/User/Chooesproduct.aspx">
                     <div class="mb-3 myhover">
                         <asp:TextBox ID="TextBox3" class="btn-check" runat="server"></asp:TextBox>
                         <asp:Label ID="Label3" runat="server" class="btn btn-outline-dark " Style="padding: 10px;" Text="Neutral (Green & Blue Veins" Width="300px"></asp:Label>
                     </div>
                 </asp:HyperLink>
                
                 

                 <div class="mb-3 myhover py-3 px-3">
                     <asp:HyperLink ID="HyperLink1" NavigateUrl="~/User/FindyourShade.aspx" runat="server" class="offset-2 " Width="183px" ForeColor="Black">
                         <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="black" class="bi bi-arrow-left me-2" viewBox="0 0 16 16">
                             <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8" />
                         </svg>
                         <asp:Label ID="Label4" runat="server" Text="Back" CssClass="mb-0" ForeColor="Black" ></asp:Label>
                     </asp:HyperLink>
                 </div>



             </div>
         </div>
         
     </div>

 </div>
</asp:Content>
