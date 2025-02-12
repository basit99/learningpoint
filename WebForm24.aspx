<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm24.aspx.cs" Inherits="WebApplication1.WebForm24" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
          .newStyle2 {
            margin-top: 1000px;
            height:20px;
        }

        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            margin-left: 812px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    
<div id="header">



    <meta name="viewport" content="width=device-width,initial-scale=1" />
            <h2 class="auto-style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; order management</h2>
                        <p class="auto-style20">
                            &nbsp;</p>
                        <p class="auto-style20">
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString60 %>" SelectCommand="SELECT * FROM [customerordertable]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString74 %>" SelectCommand="SELECT * FROM [customerordertable2]"></asp:SqlDataSource>
    </p>
           
        </div>


    </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString36 %>" SelectCommand="SELECT * FROM [Table66]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="id" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="id1" HeaderText="id1" SortExpression="id1" />
                <asp:BoundField DataField="id2" HeaderText="id2" SortExpression="id2" />
                <asp:BoundField DataField="id3" HeaderText="id3" SortExpression="id3" />
                <asp:BoundField DataField="id4" HeaderText="id4" SortExpression="id4" />
                <asp:BoundField DataField="id5" HeaderText="id5" SortExpression="id5" />
                <asp:BoundField DataField="id6" HeaderText="id6" SortExpression="id6" />
                <asp:BoundField DataField="product1name" HeaderText="product1name" SortExpression="product1name" />
                <asp:BoundField DataField="product2name" HeaderText="product2name" SortExpression="product2name" />
                <asp:BoundField DataField="product3name" HeaderText="product3name" SortExpression="product3name" />
                <asp:BoundField DataField="product4name" HeaderText="product4name" SortExpression="product4name" />
                <asp:BoundField DataField="product5name" HeaderText="product5name" SortExpression="product5name" />
                <asp:BoundField DataField="product6name" HeaderText="product6name" SortExpression="product6name" />
                <asp:BoundField DataField="product1qty" HeaderText="product1qty" SortExpression="product1qty" />
                <asp:BoundField DataField="product2qty" HeaderText="product2qty" SortExpression="product2qty" />
                <asp:BoundField DataField="product3qty" HeaderText="product3qty" SortExpression="product3qty" />
                <asp:BoundField DataField="product4qty" HeaderText="product4qty" SortExpression="product4qty" />
                <asp:BoundField DataField="product5qty" HeaderText="product5qty" SortExpression="product5qty" />
                <asp:BoundField DataField="product6qty" HeaderText="product6qty" SortExpression="product6qty" />
                <asp:BoundField DataField="totalprice" HeaderText="totalprice" SortExpression="totalprice" />
                <asp:BoundField DataField="customername" HeaderText="customername" SortExpression="customername" />
                <asp:BoundField DataField="adres" HeaderText="adresssss" SortExpression="adres" />
                <asp:BoundField DataField="mobilenumber" HeaderText="mobilenumber" SortExpression="mobilenumber" />
                <asp:BoundField DataField="emailadres" HeaderText="emailadres" SortExpression="emailadres" />
            </Columns>
        </asp:GridView>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Logout" />
        </p>
    </form>
    <div id="footer" class="newStyle2">

            
   

        </div>
</body>
</html>
