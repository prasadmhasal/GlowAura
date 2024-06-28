<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cosmatics.User.mylogin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
</head>
<body style="overflow:hidden">
    <img src="../../Images/log.jpg" style="width:100%;height:100%" />
    <form id="form1" runat="server">
        <div>

            <div class="border shadow "  style="padding: 20px; border-radius: 10px; position: absolute; top: 25%; left: 70%;">
                <div class="text-center">
                    <h4>Login</h4>
                </div>

                <div class="form-group py-2">
                    <label for="TextBox1">Username</label>
                    <asp:TextBox ID="TextBox1"  runat="server" CssClass="form-control" placeholder="Enter Username"></asp:TextBox>
                    <!-- Remove ViewStateMode="Enabled" -->
                </div>

                <div class="form-group py-2 ">
                    <label for="TextBox2">Password</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    <!-- Remove <br /> -->
                </div>

                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-dark w-100 mt-3" OnClick="Button1_Click" />

                <div class="d-flex" style="margin-top: 10px;" >
                    <a href="#" data-toggle="modal" data-target="#exampleModal" runat="server" class="text-primary">Create New Account?</a>
                    <span class="text-muted">|</span>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/mylogin/ResetPass.aspx">
                    <p  class="text-primary ">Reset Password</p>
                    </asp:HyperLink>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Register</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div>

                                    <div class="form-group">
                                        <label for="TextBox3">Name</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Username</label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="TextBox5">Email ID</label>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Enter Email ID"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="TextBox6">Mobile Number</label>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Eg:9012345678"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="TextBox7">Address</label>
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Enter Your Permanent Address"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="TextBox8">Age</label>
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Gender</label><br />
                                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" />&nbsp
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" />
                                    </div>
                                    <div class="form-group">
                                        <label for="TextBox9">Password</label>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="TextBox10">Confirm Password</label>
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:Button ID="Button2" runat="server" Text="Register" CssClass="btn btn-primary btn-block" OnClick="Button2_Click" />
                            </div>

                        </div>
                    </div>
                </div>

            </div>



        </div>
    </form>
</body>
</html>
