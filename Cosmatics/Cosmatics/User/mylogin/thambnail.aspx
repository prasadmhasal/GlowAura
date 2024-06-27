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
        <div>
            <div class="card bg-dark text-white w-100">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/thumbnail.jpg" Width="100%" Height="100%"  />
                <div class="card-img-overlay text-end">
                    <h5 class="card-title">Card title</h5>
                   
                </div>
            </div>

        </div>
    </form>
</body>
</html>
