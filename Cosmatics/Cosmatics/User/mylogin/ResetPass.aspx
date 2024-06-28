<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPass.aspx.cs" Inherits="Cosmatics.User.mylogin.ResetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .glass {
    
        background: rgba(255, 254, 254, 0.17);
        border-radius: 16px;
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(4.5px);
        -webkit-backdrop-filter: blur(4.5px);
        border: 1px solid rgba(255, 254, 254, 0.19);
    }
</style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body style="overflow:hidden">
     <img src="../../Images/background.png" style="width:100%;height:100vh" />
    <form id="form1" runat="server">

        <div class="border shadow p-3 mb-5  rounded glass" style="padding: 20px; border-radius: 10px; width: 25%; position: absolute; top: 25%; left: 70%">
       

            
            <div class="text-center mb-3" >
                <h4>Forgot Password</h4>
            </div>

            <div class="form-group py-2">
                <label for="exampleInputEmail1">Email Email ID</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control  rounded-pill" TextMode="Email" placeholder="Enter Email Id"></asp:TextBox>
            </div>
            <div class="form-group py-2">
                <label for="exampleInputEmail1">Enter New Password</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control  rounded-pill" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>


            <asp:Button ID="Button1" runat="server" Text="Reset" class="btn btn-dark w-100 mt-3 rounded-pill" OnClick="Button1_Click"  />
        </div>
    </form>
</body>
</html>
