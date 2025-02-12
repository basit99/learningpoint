<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm16.aspx.cs" Inherits="WebApplication1.WebForm16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

      <meta name="viewport" content="width=device-width,initial-scale=0" />
    
   

    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
     <style type="text/css">

                .newStyle2 {
            margin-top: 1000px;
            height:20px;
        }

         .auto-style3 {
             width: 66%;
             background-color: #DC143C;
             height: 142px;
             margin-top: 44px;
             margin-left: 69px;
         }

         .auto-style12 {
             width: 409px;
             height: 15px;
         }
         .auto-style14 {
             width: 409px;
             height: 42px;
         }
         .auto-style15 {
             height: 42px;
         }
         .auto-style16 {
             height: 15px;
         }
         .auto-style20 {
             height: 40px;
         }
         .auto-style21 {
             width: 409px;
             height: 7px;
         }
         .auto-style22 {
             height: 7px;
         }
         .auto-style23 {
             width: 409px;
             height: 9px;
         }
         .auto-style24 {
             height: 9px;
         }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
        <div id="header">

    <meta name="viewport" content="width=device-width,initial-scale=1" />
            <h2 class="auto-style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login</h2>
           
        </div>
        &nbsp;<table class="auto-style3">
            <tr>
                <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
                  <td class="auto-style24">
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your Email" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    
                  </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</td>
                <td class="auto-style22"> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Black"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString19 %>" SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
                <td class="auto-style12"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString41 %>" SelectCommand="SELECT * FROM [emailship]"></asp:SqlDataSource>
                <td class="auto-style14"></td>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" style="height: 26px" />
                </td>
            </tr>
            </table>
        <br />
        <br />
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </form>




     <div id="footer" class="newStyle2">

            
    <meta name="viewport" content="width=device-width,initial-scale=1" />

        </div>
    
</body>
</html>
