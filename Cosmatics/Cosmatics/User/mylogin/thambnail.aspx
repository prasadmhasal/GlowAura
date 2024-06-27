<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thambnail.aspx.cs" Inherits="Cosmatics.User.mylogin.thambnail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title></title>
    <style>
        *{
            margin:0%;
            padding:0%;
            box-sizing:border-box;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class=" bg-dark text-white overflow-hidden">
                <div class="card-img-overlay d-flex flex-column ">
                    <asp:HyperLink ID="HyperLink1" runat="server" style="text-decoration:none" NavigateUrl="~/User/mylogin/login.aspx">
                    <h5 class="card-title text-end mb-0 text-white " >Login</h5>
                    </asp:HyperLink>
                </div>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/thamb.jpg" class="card-img" style="height:100vh" />
            </div>


       
    </form>
</body>
</html>
