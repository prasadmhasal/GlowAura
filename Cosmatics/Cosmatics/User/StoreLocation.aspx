<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="StoreLocation.aspx.cs" Inherits="Cosmatics.User.StoreLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="overflow-hidden">
    <div class="row" style="padding:0px">
        <div class="col-12">
            <div class="w-100 bg-gray text-white">
                <asp:Image ID="Image1" CssClass="card-img w-100" runat="server" ImageUrl="~/Images/location.jpg"></asp:Image>
            </div>
        </div>
    </div>
</div>
<div class="container mt-5 mb-5">
    <div class="row">
         <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d241292.03952746364!2d72.86810196837453!3d19.09940154809045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1snyaka%20stores!5e0!3m2!1sen!2sin!4v1719306544182!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    <%--<asp:ImageMap ID="ImageMap1" runat="server"></asp:ImageMap>--%>
    </div>

</div>
</asp:Content>