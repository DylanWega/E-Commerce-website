<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerProfile.aspx.cs" Inherits="ClothingCompanyKp.customerProfile" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Profile</title>
</head>
<body>
    <form id="profile" runat="server">
    <nav class="navbar">
        <img src="img/kp logo 04.png" class="logo">
    <ul>
        <li> <a href="home2.aspx">Home</a></li>
        <li> <a href="shop2.aspx">Shop</a></li>
        <li> <a href="#">About</a> </li>
        <li> <a href="#">Collaboration</a></li>
    </ul>

    <ul style="float: right;">
        <asp:Button ID="logOutBtn" runat="server" class="btn2" Text="Log out" OnClick="logOutBtn_Click" />
    </ul>
        
    <ul style="float: right;">
        <li><a href="#"> <img src="img/cart.png" class="icon">cart</a></li>
    </ul>


    <ul style="float: right;">
       <li><a class="active" href="customerProfile.aspx"> <img src="img/person icon.png" class="icon"> 
            <asp:Label ID="logDetail" runat="server" Text=""></asp:Label> </a></li>
    </ul>
    </nav>
<!--The title/navigation bar ENDS-->

<h1 style="font-family:'century gothic'; margin-top: 10%; margin-left: 40px;">Personal Information</h1> 

<div class="custBox">
        
    <div class="textBox2">
        <asp:Label ID="Email" runat="server" Text="Label" placeholder="Email"></asp:Label>
    </div>

    <div class="textBox2">
       <asp:TextBox ID="Fname" runat="server"  placeholder="First name"></asp:TextBox>
    </div>

    <div class="textBox2"> 
        <asp:TextBox ID="Lname" runat="server" placeholder="Last name"></asp:TextBox>
        </div>

     <div class="textBox2">
         <asp:TextBox ID="Address" runat="server" placeholder="Address"></asp:TextBox>
     </div>

     <div class="textBox2">
         <asp:TextBox ID="city" runat="server" placeholder="Town/City"></asp:TextBox>
     </div>

     <div class="textBox2">
         <asp:TextBox ID="country" runat="server" placeholder="Country"></asp:TextBox>
     </div>

     <div class="textBox2"> 
         <asp:TextBox ID="postcode" runat="server" placeholder="Postcode"></asp:TextBox>
     </div>

    <div class="textBox2">
        <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
    </div>

    <div class="textBox2"> 
        <asp:TextBox ID="password2" runat="server" placeholder="Confirm password" TextMode="Password"></asp:TextBox>
        </div>

        <asp:Button ID="updateBtn" runat="server" Text="Update Account" class="order-btn" OnClick="updateBtn_Click"/>
        <asp:Button ID="deleteBtn" runat="server" Text="Delete Account" class="order-btn" OnClick="deleteBtn_Click"/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource> 
    </div>
        </form>
</body>
</html>
