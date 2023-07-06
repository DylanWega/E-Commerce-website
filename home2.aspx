<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home2.aspx.cs" Inherits="ClothingCompanyKp.home2" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <link rel="stylesheet" href="style.css" type="text/css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
</head>
<!--The title/navigation bar-->
   <body>
    <form id="home2Form" runat="server">
    <nav class="navbar">
        <img src="img/kp logo 04.png" class="logo">
    <ul>
        <li> <a class="active" href="home2.aspx">Home</a></li>
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
       <li><a href="customerProfile.aspx"> <img src="img/person icon.png" class="icon"> 
            <asp:Label ID="logDetail" runat="server" Text=""></asp:Label> </a></li>
    </ul>
    </nav>
<!--The title/navigation bar ENDS-->

<!--Banner/Header STARTS--> 
<div class="banner2">
    <h1>Urban wear</h1> <br>
    <button>Shop now</button>   
</div>
<!--Banner/Header ENDS--> 

<!--Footer STARTS-->
<div class="banner3">
    <h1>Our Philosophy</h1><br>
    <button>About Us</button>   
</div>
<!--Banner2/Header2 STARTS--> 
<div class="banner3">
    <h1>Our Philosophy</h1><br>
    <button>About Us</button>   
</div>
<!--Banner2/Header2 ENDS--> 

<!--Footer STARTS-->
<footer>
<div class="footer">
    <ul style="float: left; font-family: 'century gothic';display: inline;">
        <h3 style="margin-bottom: 15px; padding-left: 20%;">Follow Us</h3>
        <li style="padding-right: 3px;"><a href="https://www.facebook.com/KprimCrew/?ref=pages_you_manage"> <img src="img/fb-icon.png" class="icon"></a></li>
        <li style="padding-left: 3px;"><a href="https://www.instagram.com/kprimwear/"> <img src="img/ig-icon.png" class="icon"></a></li>
    </ul>

    <ul style="margin-right: 500px; font-family: 'century gothic'; float: right; margin-top: -15px;">
        <h3 style="margin-bottom: 15px; margin-left: 40%;">Visit Us</h3>
        <li style="display: list-item; padding-bottom: 6px;">Monday - Friday 9:00 - 20:00</li>
        <li style="display: list-item; padding-bottom: 6px;">Saturday 10:00 - 17:00</li>
        <li style="display: list-item; padding-bottom: 30px;">Sunday 11:00 - 15:00</li> <hr>
        <li style="display: list-item; align-content:center; padding-top: 6px">© 2021 Dylan M. Wega. All Rights Reserved.</li> 
    </ul> 
    
    <ul style="float: right;">
        <li style="margin-top: -15px; margin-right: -150px;"> <img src="img/Kp label 2.png" class="logo"> </li>
    </ul>
</div>
</footer>  
  </form>
</body>
</html>