<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ClothingCompanyKp.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body id="bg">
    <form id="loginForm" runat="server">
<!--The title/navigation bar STARTS-->
    <nav class="navbar">
        <img src="img/kp logo 04.png" class="logo">
    <ul>
        <li> <a href="home.html">Home</a></li>
        <li> <a href="#">Shop</a></li>
        <li> <a href="#">About</a> </li>
        <li> <a href="#">Collaboration</a></li>
    </ul>

    <ul style="float: right;">
        <li><a class="active" href="login.html"> <img src="img/login icon.png" 
            class="icon" style="opacity: 0.5;"> Log in</a></li>
        <li><a href="#"> <img src="img/cart.png" class="icon"> cart</a></li>
    </ul>
    </nav>
<!--The title/navigation bar ENDS-->

    <div class="loginBox">
    <h1 style="font-family:'century gothic';">Login</h1>
    
        <div class="textBox">
       <asp:TextBox ID="email" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox> 
        </div>
        
        <div class="textBox">
            <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
        </div>
       <asp:Button ID="LoginBtn" runat="server" class="btn" Text="Login" OnClick="loginBtn_Click" />
        
    <p style="font-family: 'century gothic' ;">Not a member ? <a href="account.aspx">Create account</a> </p> <br>
        <asp:Label ID="ErrMsg" runat="server" Text=""></asp:Label>
</div>
    </form>
</body>
</html>