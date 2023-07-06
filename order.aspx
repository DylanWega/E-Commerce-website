<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="ClothingCompanyKp.order" %>

<!DOCTYPE html>


<head runat="server">
    <link rel="stylesheet" href="style.css">
    <title>Place order</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <h1 style="font-family:'century gothic'; margin-top: 10%; margin-left: 40px;">Place order</h1> 

<div class="order-box">

        <img src= "Session["prodImg"]" alt="" class="sizeOrder"> 
        <h3 style="font-family:'century gothic';">
        <asp:Label ID="labelprodName" runat="server" Text=""></asp:Label>
        </h3> 

        <h4 style="font-family:'century gothic';">
        <asp:Label ID="labelprodPrice" runat="server" Text=""></asp:Label>
        </h4> <br>
    
        <h5 style="font-family:'century gothic'; ">Contact Information</h5>
        
        <div class="textBox2">
        <asp:TextBox ID="email" type="email" placeholder="Email" runat="server" ></asp:TextBox>
        </div> <br>
        <h5 style="font-family:'century gothic';">Shipping Address</h5> <br>

        <div class="textBox2">
        <asp:TextBox ID="lname" type="text" placeholder="Last Name" runat="server" ></asp:TextBox>
        </div>
    
        <div class="textBox2">
        <asp:TextBox ID="addres" type="text" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="textBox2">
        <asp:TextBox ID="city" type="text" placeholder="City" runat="server"></asp:TextBox>
        </div>

        <div class="textBox2">
        <asp:TextBox ID="country" type="text" placeholder="Country" runat="server"></asp:TextBox>
        </div>

        <div class="textBox2">
        <asp:TextBox ID="postcode" type="text" placeholder="Postcode" runat="server"></asp:TextBox>
        </div>

    <asp:Button ID="orderBtn" runat="server" Text="Place Order" class="order-btn" OnClick="orderBtn_Click" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>

    </div> 
    </form>
</body>
</html>
