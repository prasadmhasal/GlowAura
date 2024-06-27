<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Eyes.aspx.cs" Inherits="Cosmatics.User.product.Eyes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <div class="row justify-content-center mt-5 mb-3">
         <div class="col d-flex justify-content-center">
             <div class="col-4">
                 <div class="card shadow" style="width: 18rem;">
                     <asp:Image ID="Image1" class="card-img-top" runat="server" ImageUrl="~/Images/eyes/eyes5.jpg" Height="250px" />
                     <div class="card-body">
                         <h6 class="card-title">HD Compact Powder | Oil Control / 03-Butterscotch</h6>
                         <p class="card-text text-center">$199</p>
                         <asp:Button ID="Button6" class="btn btn-dark btn-block" runat="server" Text="Order Now" Width="100%" OnClick="Button6_Click" />
                     </div>
                 </div>
             </div>
             <div class="col-4">
                 <div class="card shadow" style="width: 18rem;">
                     <asp:Image ID="Image2" class="card-img-top" runat="server" ImageUrl="~/Images/eyes/eyes4.jpg" Height="250px" />
                     <div class="card-body">
                         <h6 class="card-title">HD Compact Powder | Oil Control / 04-Butterscotch</h6>
                         <p class="card-text text-center">$199</p>
                         <asp:Button ID="Button5" class="btn btn-dark btn-block" runat="server" Text="Order Now" Width="100%" />
                     </div>
                 </div>
             </div>
             <div class="col-4">
                 <div class="card shadow" style="width: 18rem;">
                     <asp:Image ID="Image3" class="card-img-top" runat="server" ImageUrl="~/Images/eyes/eyes2.jpg" Height="250px" />
                     <div class="card-body">
                         <h6 class="card-title">Born To Bake | Setting Powder / Translucent</h6>
                         <p class="card-text text-center">$199</p>
                         <asp:Button ID="Button4" class="btn btn-dark btn-block" runat="server" Text="Order Now" Width="100%" />
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="row justify-content-center mt-5 mb-3">
         <div class="col d-flex justify-content-center">
             <div class="col-4">
                 <div class="card shadow" style="width: 18rem;">
                     <asp:Image ID="Image4" class="card-img-top" runat="server" ImageUrl="~/Images/eyes/eyes1.jpg" Height="250px" />
                     <div class="card-body">
                         <h6 class="card-title">Born To Bake | Setting Powder / Banana Pudding</h6>
                         <p class="card-text text-center">$199</p>
                         <asp:Button ID="Button3" class="btn btn-dark btn-block" runat="server" Text="Order Now" Width="100%" />
                     </div>
                 </div>
             </div>
             <div class="col-4">
                 <div class="card shadow" style="width: 18rem;">
                     <asp:Image ID="Image5" class="card-img-top" runat="server" ImageUrl="~/Images/eyes/eyes2.jpg" Height="250px" />
                     <div class="card-body">
                         <h6 class="card-title">Blossom Liquid Concealer / Buff</h6>
                         <p class="card-text text-center">$199</p>
                         <asp:Button ID="Button2" class="btn btn-dark btn-block" runat="server" Text="Order Now" Width="100%" />
                     </div>
                 </div>
             </div>
             <div class="col-4">
                 <div class="card shadow" style="width: 18rem;">
                     <asp:Image ID="Image6" class="card-img-top" runat="server" ImageUrl="~/Images/eyes/eyes3.jpg" Height="250px" />
                     <div class="card-body">
                         <h6 class="card-title">Blossom Liquid Concealer / 1 Buff</h6>
                         <p class="card-text text-center">$199</p>
                         <asp:Button ID="Button1" class="btn btn-dark btn-block" runat="server" Text="Order Now" Width="100%" />
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <div class="row justify-content-center mt-5 mb-3">
         <div class="col d-flex justify-content-center">

             <div class="col-4">
                 <div class="card shadow" style="width: 18rem;">
                     <asp:Image ID="Image9" class="card-img-top" runat="server" ImageUrl="~/Images/eyes/eyes4.jpg" Height="250px" />
                     <div class="card-body">
                         <h6 class="card-title">Matte On | Compact Powder / 04 Medium Beige</h6>
                         <p class="card-text text-center">$199</p>
                         <asp:Button ID="Button9" class="btn btn-dark btn-block" runat="server" Text="Order Now" Width="100%" />
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
</asp:Content>
