<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="account.aspx.cs" Inherits="ClothingCompanyKp.account" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create account</title>
</head>
<body id="bg">
    <form id="form1" runat="server">
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

    <div class="loginBox1">
    <h1 style="font-family:'century gothic';">New Customer</h1>
        <div class="textBox">
            <asp:TextBox ID="Fname" runat="server" Text="First name"></asp:TextBox>
        </div>

        <div class="textBox"> 
            <asp:TextBox ID="Lname" runat="server" Text="Last name"></asp:TextBox>
            </div>
         
        <div class="textBox">
            <asp:TextBox ID="email" runat="server" Text="Email"></asp:TextBox>
         </div>

         <div class="textBox">
             <asp:TextBox ID="Address" runat="server" Text="Address"></asp:TextBox>
         </div>

         <asp:Button ID="createAccount"  runat="server" class="btn" Text="Create account" OnClick="createAccount_Click"/>
        

    </div>
    <div class="loginBox2">
         <div class="textBox">
             <asp:TextBox ID="city" runat="server" Text="Town/City"></asp:TextBox>
         </div>

         <div class="textBox">
             <asp:TextBox ID="country" runat="server" Text="Country"></asp:TextBox>
         </div>

         <div class="textBox">
             <asp:TextBox ID="postcode" runat="server" Text="Postcode"></asp:TextBox>
         </div>

        <div class="textBox">
            <asp:TextBox ID="password" runat="server" Text="Password" TextMode="Password"></asp:TextBox>
        </div>

        <div class="textBox">
             <asp:TextBox ID="password2" runat="server" Text="Confirm password" TextMode="Password"></asp:TextBox>
            </div>
        </div>
        
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    
</body>
</html>
