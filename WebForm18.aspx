<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm18.aspx.cs" Inherits="WebApplication1.WebForm18" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
   <meta name="viewport" content="width=device-width,initial-scale=-5" />

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
         
        .auto-style30 {
            width: 100%;
            background-color: #DC143C;
        }
         
        .auto-style31 {
            height: 19px;
        }
        .auto-style32 {
            height: 39px;
        }
        .auto-style34 {
            height: 19px;
            width: 468px;
        }
        .auto-style35 {
            height: 39px;
            width: 468px;
        }

          .auto-style2 {
            
             border-radius: 10px;
  border: 2px solid #73AD21;
  padding: 10px; 

   background-color: #DC143C;
            height: 89px;
            margin-left: 454px;


        }
         
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">

    <meta name="viewport" content="width=device-width,initial-scale=1" />
            <h2 class="auto-style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reset Password</h2>
                
        </div>

        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString21 %>" SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
        <table class="auto-style2">
            <tr>
                <td class="auto-style34">Email:<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString39 %>" SelectCommand="SELECT * FROM [emailship]"></asp:SqlDataSource>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Your Email" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style32">
                    <asp:Button ID="Button1" runat="server" Text="Sumbit" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
    </form>

      <div id="footer" class="newStyle2">

            
    <meta name="viewport" content="width=device-width,initial-scale=1" />

        </div>


    <table class="auto-style30">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</body>
</html>
