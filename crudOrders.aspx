<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crudOrders.aspx.cs" Inherits="ClothingCompanyKp.crudOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="style.css" type="text/css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="crudOrders" runat="server">
    <!--The title/navigation bar STARTS-->
    <nav class="navbar">
        <img src="img/kp logo 04.png" class="logo">
    <ul>
        <li> <a href="crudProduct.aspx">Create & Update Products</a></li>
        <li> <a href="crudOrders.aspx">Check Orders</a></li>
    </ul>

     <ul style="float: right;">
        <asp:Button ID="logOutBtn" runat="server" class="btn2" Text="Log out" OnClick="logOutBtn_Click" />
    </ul>

    <ul style="float: right;">
       <li><a href="#"> <img src="img/person icon.png" class="icon"> 
            <asp:Label ID="logDetail" runat="server" Text="Admin"></asp:Label> </a></li>
    </ul>
    </nav>
<!--The title/navigation bar ENDS-->

        <div class="order-box" style="float: left;"> <br>
        
        <h1 style="font-family:'century gothic'; text-align: center;">Kprim Orders Dashboard</h1>

         <div class="textBox3">
         <asp:Label ID="orderID" runat="server" Text="Order ID"></asp:Label>
        </div> <br>

            <asp:Button ID="cancelBtn" runat="server" Text="Cancel" class="add-btn" OnClick="cancelBtn_Click"/>

            <div style="margin-top: -5%; margin-left: 15%;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="orderID" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True" CssClass="content-table" HeaderStyle-CssClass="content-table" EditRowStyle-CssClass="content-table" RowStyle-CssClass="content-table" SelectedRowStyle-CssClass="content-table" FooterStyle-CssClass="content-table" BorderStyle="None" HeaderStyle-BorderStyle="None" GridLines="None" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="orderID" HeaderText="orderID" ReadOnly="True" InsertVisible="False" SortExpression="orderID"></asp:BoundField>
                    <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName"></asp:BoundField>
                    <asp:BoundField DataField="productPrice" HeaderText="productPrice" SortExpression="productPrice"></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country"></asp:BoundField>
                    <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode"></asp:BoundField>
                </Columns>
            </asp:GridView>
            </div>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [orders]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
