<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop2.aspx.cs" Inherits="ClothingCompanyKp.shop2" %>

<!DOCTYPE html>

<link rel="stylesheet" href="style.css">
<head runat="server">
    <title>Shop</title>
</head>
<body>
    <form id="form1" runat="server">
            <nav class="navbar">
        <img src="img/kp logo 04.png" class="logo">
    <ul>
        <li> <a href="home2.aspx">Home</a></li>
        <li> <a class="active" href="shop2.aspx">Shop</a></li>
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
       <li><a href="#"> <img src="img/person icon.png" class="icon"> 
            <asp:Label ID="logDetail" runat="server" Text=""></asp:Label> </a></li>
    </ul>
    </nav>
<!--The title/navigation bar ENDS-->

    <h1 style="font-family:'century gothic'; margin-top: 10%; margin-left: 40px;">Shop</h1> 

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="ID" RepeatDirection="Horizontal">
        <ItemTemplate>
            <ul style="display:inline; text-decoration:none; float:inline-end;" >
            <li>
            <div class="conatiner2">

            <img src= 'Handler1.ashx?ID=<%# Eval("ID").ToString() %>' alt="" class="size">
            <asp:Button ID="buyBtn" runat="server" Text="buy now" class="buy-btn" OnClick="buyBtn_Click" 
            CommandArgument='<%# Eval("name") + ";" +Eval("price")+ ";" +Eval("ID").ToString() %>'/>

           
            
            <h3 style="font-family:'century gothic';">
            <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" />
                
            </h3> 

            <h4 style="font-family:'century gothic';"> £ 
            <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" />
            </h4>

           <!-- category:
            <asp:Label Text='<%# Eval("category") %>' runat="server" ID="categoryLabel" /><br />
            -->
            
            </div>
            </li>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    <ul style="display: inline; text-decoration: none; float: inline-end;" >
<li>
<div class="conatiner2">
        <img src="img/Kp tee.png" alt="" class="size"> 
        <button class="buy-btn">buy now</button>
        <h3 style="font-family:'century gothic';">RougeEnwaaR Tee</h3> 
        <h4 style="font-family:'century gothic';">£ 25.00</h4>
        
</div>
</li>

<li>
<div class="conatiner2">
    <img src="img/kp dad hat .png" alt="" class="size"> 
    <button class="buy-btn">buy now</button>
    <h3 style="font-family:'century gothic';">Kp Baseball hat</h3> 
    <h4 style="font-family:'century gothic';">£ 20.00</h4>
</div>
</li>

<li>
    <div class="conatiner2">
        <img src="img/Kp tee.png" alt="" class="size"> 
        <button class="buy-btn">buy now</button>
        <h3 style="font-family:'century gothic';">Kp Baseball hat</h3> 
        <h4 style="font-family:'century gothic';">£ 20.00</h4>
    </div>
    </li>

</ul>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    </form>
</body>
</html>
