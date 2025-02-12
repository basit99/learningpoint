<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm19.aspx.cs" Inherits="WebApplication1.WebForm19" %>

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
         .auto-style26 {
            width: 522px;
            height: 33px;
            font-weight: normal;
        }
        .auto-style27 {
            width: 478px;
            height: 33px;
        }
        .auto-style28 {
            width: 522px;
            height: 35px;
        }
        .auto-style29 {
            width: 478px;
            height: 35px;
        }
        .auto-style30 {
            width: 522px;
            height: 38px;
        }
        .auto-style31 {
            width: 478px;
            height: 38px;
        }
        .auto-style32 {
            width: 522px;
            height: 31px;
        }
        .auto-style33 {
            width: 478px;
            height: 31px;
        }
        .auto-style34 {
            width: 522px;
            height: 38px;
            font-weight: normal;
        }

        .auto-style35 {
            font-weight: normal;
            font-size: medium;
        }

        .auto-style36 {
            font-weight: normal;
            font-size: large;
        }
        
        .auto-style2 {
            
             border-radius: 10px;
  border: 2px solid #73AD21;
  padding: 10px; 
   margin-left: 268px;
            margin-top: 44px;
            background-color: #DC143C;






        }
       
            .auto-style38 {
            margin-left: 0px;
        }
        .auto-style39 {
            margin-left: 29px;
        }





        .auto-style40 {
            font-weight: normal;
            background-color: #FF0000;
        }





    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">

    <meta name="viewport" content="width=device-width,initial-scale=1" />
            <h2 class="auto-style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login<table class="auto-style2">
                    <tr>
                        <td class="auto-style34">Email</td>
                        <td class="auto-style31">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style39"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Your Email" ForeColor="Black" CssClass="auto-style36"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">Password</td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="auto-style38"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Black" CssClass="auto-style35"></asp:RequiredFieldValidator></td>
                </tr>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28"></td>
                        <td class="auto-style29">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style40" NavigateUrl="~/WebForm18.aspx">forget pass</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"></td>
                        <td class="auto-style31">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString38 %>" SelectCommand="SELECT * FROM [emailship]"></asp:SqlDataSource>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32"></td>
                        <td class="auto-style33">
                            &nbsp;</td>
                    </tr>
                </table>
                
                
                
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                
                
                
        </h2>
           
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString31 %>" SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
           
        </div>
    <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
    <div id="footer" class="newStyle2">

            
    <meta name="viewport" content="width=device-width,initial-scale=1" />

        </div>


    


</body>
</html>
