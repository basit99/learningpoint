<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm17.aspx.cs" Inherits="WebApplication1.WebForm17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>

   

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
            width: 58%;
            height: 167px;
            margin-left: 247px;
            margin-top: 48px;
            background-color: #DC143C;
        }
        .auto-style22 {
            height: 29px;
        }
        .auto-style23 {
            height: 29px;
            width: 309px;
        }
        .auto-style24 {
            width: 309px;
            height: 134px;
        }
        .auto-style25 {
            width: 309px;
            height: 39px;
        }
        .auto-style26 {
            height: 39px;
        }
        .auto-style27 {
            width: 309px;
            height: 21px;
        }
        .auto-style28 {
            height: 21px;
        }
        .auto-style29 {
            height: 134px;
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
        &nbsp;<table class="auto-style21">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString40 %>" SelectCommand="SELECT * FROM [emailship]"></asp:SqlDataSource>
                <tr>
                    <td class="auto-style23">Email:</td>
                    <td class="auto-style22">  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Your Email" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td class="auto-style25">Password:</td>
                    <td class="auto-style26">  <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Black"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style27">Confirm Password:</td>
                    <td class="auto-style28"><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Confirm Pass"></asp:CompareValidator> </td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString20 %>" SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style29">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reset" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    </div>
    </form>


    <div id="footer" class="newStyle2">

            
    <meta name="viewport" content="width=device-width,initial-scale=1" />

        </div>
</body>
</html>
