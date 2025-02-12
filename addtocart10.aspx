<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtocart10.aspx.cs" Inherits="WebApplication1.addtocart10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            width: 56%;
            margin-left: 495px;
            margin-top: 78px;
        }
        .auto-style6 {
            height: 16px;
            width: 95px;
        }
        .auto-style7 {
            width: 95px;
        }
        .auto-style9 {
            width: 95px;
            height: 21px;
        }
        .newStyle1 {
            width: 1700px;
            height: 40px;
        }
        .newStyle2 {
            width: 1700px;
            height: 30px;
        }
        .auto-style13 {
            width: 291px;
            height: 21px;
        }
        .auto-style14 {
            width: 291px;
        }
        .auto-style15 {
            height: 16px;
            width: 291px;
        }
        .newStyle3 {
            margin-left: 80px;
        }
        .newStyle4 {
            margin-left: 120px;
        }
        .auto-style17 {
            text-align: left;
        }

        #rcorners2 {
  border-radius: 25px;
  border: 2px solid #73AD21;
  padding: 20px; 
  width: 200px;
  height: 150px;  
}

.auto-style2 {
            
             border-radius: 10px;
  border: 2px solid #73AD21;
  padding: 10px; 







        }
        .auto-style18 {
            border-radius: 10px;
            border: 2px solid #73AD21;
            padding: 10px;
            .auto-style18 
                { margin-left: 446px;
            margin-left: 421px;
              border-radius: 10px;
  border: 2px solid #73AD21;
  padding: 10px; 

        


        }


        .auto-style199 {
            width: 500px;
            margin-left: 306px;
            margin-right: 700px;
             border-radius: 10px;
  border: 2px solid #73AD21;
  padding: 10px; 

        }
        .auto-style20 {
            width: 501px;
        }
        .auto-style21 {
            width: 174px;
        }
        


        }
        
        


        .auto-style19 {
            text-align: center;
        }
        
        


        .auto-style20 {
            margin-left: 140px;
        }
        
        


        .auto-style21 {
            margin-left: 110px;
        }
        
        


        .auto-style22 {
            width: 291px;
            height: 68px;
        }
        .auto-style23 {
            width: 95px;
            height: 68px;
        }
        .auto-style24 {
            margin-left: 8px;
            margin-top: 13px;
        }
        .auto-style25 {
            margin-left: 66px;
        }
        
        


        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style19">
            <div id="header" class="newStyle1">
                <h2 class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADD TO CART</h2>
            </div>
        <p class="auto-style1">
            <asp:SqlDataSource ID="SqlDataSource6" runat="server"></asp:SqlDataSource>
            </p>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString6 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource30" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource32" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString71 %>" SelectCommand="SELECT * FROM [customerordertable]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource31" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString70 %>" SelectCommand="SELECT * FROM [customerordertable]"></asp:SqlDataSource>
        <div>
        
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:imageConnectionString9 %>" SelectCommand="SELECT * FROM [Table55]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource27" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource33" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString72 %>" SelectCommand="SELECT * FROM [customerordertable2]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource28" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString68 %>" SelectCommand="SELECT * FROM [customerordertable]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString16 %>" SelectCommand="SELECT * FROM [Table66]"></asp:SqlDataSource>
        <br />
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString7 %>" SelectCommand="SELECT * FROM [table55]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString15 %>" SelectCommand="SELECT * FROM [Table66]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource26" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString55 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
        <br />
            <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString17 %>" SelectCommand="SELECT * FROM [Table66]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No Of Items In Cart&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Check the &quot;checkbox&quot; of all products then click &quot; confirm order &quot; then fill remaining details and click &quot; submit order &quot; ]<br />
        <br />
        </div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:imageConnectionString48 %>" SelectCommand="SELECT * FROM [Table55]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString8 %>" SelectCommand="SELECT * FROM [Table77]"></asp:SqlDataSource>
        <br />
            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString12 %>" SelectCommand="SELECT * FROM [table55]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource25" runat="server"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString11 %>" SelectCommand="SELECT * FROM [Table77]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource29" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString69 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString13 %>" SelectCommand="SELECT * FROM [table55]"></asp:SqlDataSource>
            <div class="auto-style20">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id"  ForeColor="#333333" GridLines="None" CssClass="auto-style18"  HorizontalAlign="Center"  OnRowDeleting="GridView1_RowDeleting1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ShowFooter="True" Height="127px"  >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                    <asp:TemplateField HeaderText="product name" SortExpression="name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="quantity" SortExpression="quantity">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:TemplateField HeaderText="Check box">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField DeleteText="Remove" HeaderText="Remove" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString9 %>" SelectCommand="SELECT * FROM [table55]"></asp:SqlDataSource>
            &nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/product display.aspx">continue shopping</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button13" runat="server" CssClass="auto-style25" OnClick="Button13_Click1" Text="confirm order" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource10" runat="server"></asp:SqlDataSource>
            <br />
            <table class="auto-style3">
            <tr>
                <td class="auto-style13">Id</td>
                
                <td class="auto-style9">
                    <asp:SqlDataSource ID="SqlDataSource23" runat="server"></asp:SqlDataSource>
            <asp:ListBox ID="ListBox1" runat="server" Height="50px" Width="174px" SelectionMode="Multiple">
            </asp:ListBox>
                </td>
                <td class="auto-style21">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Product Name</td>
                <td class="auto-style7">
            <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple" Height="50px" Width="174px">
            </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Quantity</td>
                <td class="auto-style23">
            <asp:ListBox ID="ListBox3" runat="server" CssClass="auto-style24" SelectionMode="Multiple" Height="50px" Width="174px">
            </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Total Price<br />
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Customer Name"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style2" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Address</td>
                <td class="auto-style6">
                    <br />
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style2" Height="92px" Width="194px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Mobile#</td>
                <td class="auto-style6">
                    <br />
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style2" MaxLength="11" Height="21px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:SqlDataSource ID="SqlDataSource15" runat="server"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource20" runat="server"></asp:SqlDataSource>
                    Email:<asp:SqlDataSource ID="SqlDataSource18" runat="server"></asp:SqlDataSource>
                </td>
                <td class="auto-style6">
                    <asp:SqlDataSource ID="SqlDataSource14" runat="server"></asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style2" Height="24px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:SqlDataSource ID="SqlDataSource19" runat="server"></asp:SqlDataSource>
                </td>
                <td class="auto-style6">
            <asp:Button ID="Button12" runat="server" CssClass="auto-style199" Text="Submit Order" style="margin-left: 0px; margin-top: 0px;" OnClick="Button122_Click" Height="48px" Width="140px" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
            <br />
            <asp:SqlDataSource ID="SqlDataSource16" runat="server"></asp:SqlDataSource>
            <br />
        <br />
            <br />
            <br />
            <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;<p>
                &nbsp;</p>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <p>
            &nbsp;</p>
            <div id="footer" class="newStyle2">
            </div>
            </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    
</body>
</html>
