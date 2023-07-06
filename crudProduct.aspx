<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crudProduct.aspx.cs" Inherits="ClothingCompanyKp.crudProduct" %>

<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
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
            <asp:Label ID="logDetail" runat="server" Text=""></asp:Label> </a></li>
    </ul>
    </nav>
<!--The title/navigation bar ENDS-->
           <div class="product-box" style="float: left;"> <br>
        
        <h1 style="font-family:'century gothic'; text-align: center;">Kprim Product Dashboard</h1>

         <div class="textBox2">
         <asp:Label ID="prodID" runat="server" Text="Product ID"></asp:Label>
        </div> <br>

        <div class="textBox2">
        <asp:TextBox ID="prodName" runat="server" placeholder="Product Name"></asp:TextBox> 
        </div> <br>
    
        <div class="textBox2">
        <asp:TextBox ID="prodPrice" runat="server" placeholder="Price"></asp:TextBox>
        </div> <br>

        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown">
                <asp:ListItem>Hat</asp:ListItem>
                <asp:ListItem>T-Shirt</asp:ListItem>
                <asp:ListItem>Trouser</asp:ListItem>
                <asp:ListItem>Crop top</asp:ListItem>
                <asp:ListItem>Short</asp:ListItem>
                <asp:ListItem Selected="True">Select category</asp:ListItem>
            </asp:DropDownList>
        </div> <br>

        <div >
        <asp:FileUpload ID="FileUpload1" runat="server" Font-Names="century gothic" Font-Size="18px" BorderColor="Black" BackColor="White" BorderStyle="Solid" BorderWidth="0.5px" /> 
        </div> <br>

        <asp:Button ID="addBtn" runat="server" Text="Add" class="add-btn" OnClick="addBtn_Click"/>
        <asp:Button ID="updBtn" runat="server" Text="Update" class="add-btn" OnClick="updBtn_Click" />
        <asp:Button ID="delBtn" runat="server" Text="Delete" class="add-btn" OnClick="delBtn_Click"  />
          
        
    <div style="margin-top: -25%; margin-left: 39%;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True" CssClass="content-table" HeaderStyle-CssClass="content-table" EditRowStyle-CssClass="content-table" RowStyle-CssClass="content-table" SelectedRowStyle-CssClass="content-table" FooterStyle-CssClass="content-table" BorderStyle="None" HeaderStyle-BorderStyle="None" GridLines="None" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Product ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name"></asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price"></asp:BoundField>
                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category"></asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <img src= 'Handler1.ashx?ID=<%# Eval("ID").ToString() %>' alt="" class="size2">
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
       
    </div>
</div>
    </form>
</body>
</html>
