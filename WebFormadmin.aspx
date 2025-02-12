<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormadmin.aspx.cs" Inherits="WebApplication1.WebFormadmin" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta name="viewport" content="width=device-width,initial-scale=1" />
   

    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
     <style type="text/css">
          .newStyle2 {
            margin-top: 1000px;
            height:20px;
        }

         .auto-style20 {
             height: 40px;
         }
         
         .auto-style21 {
             width: 100%;
             background-color: #DC143C;
         }
         .auto-style22 {
             height: 22px;
         }
         .auto-style23 {
             width: 518px;
         }
         .auto-style24 {
             height: 22px;
             width: 518px;
         }
         
         .auto-style25 {
             width: 566px;
         }
         .auto-style26 {
             margin-left: 458px;
         }
         .auto-style27 {
             margin-left: 460px;
         }
         
         .auto-style28 {
             margin-left: 514px;
         }
         
         .auto-style29 {
             margin-left: 454px;
         }
         
         .auto-style30 {
             margin-left: 315px;
         }
         
         </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">

    <meta name="viewport" content="width=device-width,initial-scale=1" />
            <h2 class="auto-style20">
                Admin</h2>
        
        </div>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString28 %>" SelectCommand="SELECT * FROM [Table444]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString29 %>" SelectCommand="SELECT * FROM [Table444]"></asp:SqlDataSource>
        <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString24 %>" SelectCommand="SELECT * FROM [Table66]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString27 %>" SelectCommand="SELECT * FROM [Table156]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString52 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
        <table class="auto-style21">
            <tr>
                <td class="auto-style23">Serail # :<asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString59 %>" SelectCommand="SELECT * FROM [customerordertable]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Name:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox1" runat="server" Height="114px" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Product Price<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString23 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Quantity</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString33 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString53 %>" SelectCommand="SELECT * FROM [emailship]"></asp:SqlDataSource>
        <br />
        <table class="auto-style21">
            <tr>
                <td class="auto-style25">Id<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString25 %>" SelectCommand="SELECT * FROM [Table66]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString26 %>" SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString30 %>" SelectCommand="SELECT * FROM [Table444]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString34 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource20" runat="server"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style27" DataKeyNames="id" DataSourceID="SqlDataSource22">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style26" DataKeyNames="id" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="totalprice" HeaderText="totalprice" SortExpression="totalprice" />
                <asp:BoundField DataField="customername" HeaderText="customername" SortExpression="customername" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource13" runat="server"></asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource9" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource23" runat="server"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="auto-style29" DataKeyNames="id" DataSourceID="SqlDataSource21">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:TemplateField HeaderText="image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource8" runat="server"></asp:SqlDataSource>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CssClass="auto-style30" DataKeyNames="id" DataSourceID="SqlDataSource24">
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
                <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
                <asp:BoundField DataField="mobilenumber" HeaderText="mobilenumber" SortExpression="mobilenumber" />
                <asp:BoundField DataField="emailadres" HeaderText="emailadres" SortExpression="emailadres" />
            </Columns>
        </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource15" runat="server"></asp:SqlDataSource>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />
        <br />
        
        <br />
&nbsp;<asp:Button ID="Button3" runat="server" CssClass="auto-style28" OnClick="Button3_Click2" style="height: 26px" Text="Log Out" />
    </form>
     <div id="footer" class="newStyle2">

            
    <meta name="viewport" content="width=device-width,initial-scale=1" />

        </div>
    
</body>
</html>
