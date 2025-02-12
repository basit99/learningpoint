<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="WebApplication1.WebForm15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width,initial-scale=-5" />
    <style type="text/css">

                .newStyle2 {
            margin-top: 1000px;
            height:20px;
        }

        .auto-style1 {
            width: 678px;
            height: 315px;
            margin-left: 372px;
            margin-top: 102px;
            background-color: crimson;
        }
        .auto-style2 {
            
             border-radius: 10px;
  border: 2px solid #73AD21;
  padding: 10px; 

   background-color: crimson;

    margin-left: 372px;
            margin-top: 102px;



        }
       
            .auto-style18 
                { margin-left: 446px;
            margin-left: 421px;
              border-radius: 10px;
  border: 2px solid #73AD21;
  padding: 10px; 

        


        }

    </style>
    
    <link href="Content/StyleSheet1.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">

  
            <h2 class="auto-style20">
&nbsp;Sign up</h&nbsp;Sign up</h2>

        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString18 %>" SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString37 %>" SelectCommand="SELECT * FROM [emailship]"></asp:SqlDataSource>

<table class="auto-style2">
            <tr>
                <td class="auto-style2">Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name Please"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Email Please" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirm Password"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Confirm Password"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="auto-style6" OnClick="Button1_Click" Width="81px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/WebForm19.aspx">Log In</asp:HyperLink>
                </td>
            </tr>
        </table>



    </div>
    </form>




     <div id="footer" class="newStyle2">

            
    <meta name="viewport" content="width=device-width,initial-scale=1" />

        </div>
</body>
</html>
