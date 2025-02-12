<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product display.aspx.cs" Inherits="WebApplication1.product_display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <meta name="viewport" content="width=device-width,initial-scale=1" />
   

    <link href="StyleSheet2.css" rel="stylesheet" />
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid blue;
  border-bottom: 16px solid blue;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}



        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            
             border-radius: 10px;
  border: 2px solid #73AD21;
  padding: 10px; 
            margin-right: 0px;
            margin-left: 255px;
        }
        .newStyle1 {
            width: 90px;
            margin-left:2px;
           
        }
        #section {
            margin: 10px;
        }
        .auto-style17 {
            margin-top: 0px;
            margin-bottom:20px;
            margin-left: 11px;
        }
        .auto-style18 {
            margin-left: 15px;
            margin-top: 11px;
        }
        .auto-style19 {
            text-align: center;
            font-weight: normal;
        }
        
        #header {
            width: 1570px;
            height: 30px;
        }
       
        #footer {
            width: 1570px;
            height: 20px;

        }
        #rcorners2 {
  border-radius: 25px;
  border: 2px solid #73AD21;
  padding: 20px; 
  width: 200px;
  height: 150px;  
}

       
        .newStyle2 {
            margin-top: 1000px;
        }
       
        .auto-style20 {
            text-align: left;
        }
        .auto-style21 {
            margin-left: 527px;
            margin-top: 16px;
        }
       
        .auto-style29 {
            margin-top: 253px;
        }
       
        .auto-style31 {
            border-radius: 10px;
            border: 2px solid #73AD21;
            padding: 10px;
            margin-right: 0px;
            margin-left: 28px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style32 {
            margin-top: 0px;
        }

         *{
   margin: 0;
   padding: 0;
   font-family: sans-serif;
  }

  #sidebar{
   position: absolute;
   width: 200px;
   height: 100%;
   background: #151719;
   left: -200px;
   transition: all 500ms linear;
    
     
   
  }
  #sidebar.active{
   
      left: 0px;
       

  }
  #sidebar ul li{
   color: rgba(230,230,230,0.9);
   list-style: none;
   padding: 15px 10px;
   border-bottom: 1px solid rgba(100,100,100,0.3);
    
     
  }
  #sidebar .toggle-btn{
   position: absolute;
   left: 230px;
   top: 20px;

  }
  #sidebar .toggle-btn span{
   display: block;
   width: 30px;
   height: 5px;
   background: #151719;
   margin: 5px 0px;

   

  }

       
        .auto-style34 {
            width: 100%;
        }
        .auto-style35 {
            width: 211px;
        }
        .auto-style40 {
            width: 305px;
        }



        .auto-style41 {
            margin-left: 0px;
            margin-top: 0;
        }
        


        .auto-style43 {
            width: 267px;
            color: white;
            height: 23px;
            text-decoration: none;
        }

 .auto-style3 {
            text-align: center;
            background-color: #3882BA ;
        }





        .auto-style44 {
            margin-top: 31px;
            margin-left: 0;
        }




        .auto-style45 {
            text-align: center;
            background-color: #3882BA;
            height: 20px;
        }




        .auto-style47 {
            text-align: center;
            background-color: #3882BA;
            width: 211px;
        }
        .auto-style49 {
            text-align: center;
            background-color: #3882BA;
            height: 20px;
            width: 305px;
        }




        .auto-style51 {
            text-align: center;
            background-color: #3882BA;
            width: 305px;
        }




        </style>

     <script type="text/javascript">
  function toggleSidebar(){
      document.getElementById("sidebar").classList.toggle('active');
     
     
      
      
  }
 </script>





</head>
<body>
    <div>
        <form id="form1" runat="server">
             <asp:ScriptManager ID="ScriptManager1" runat="server">
                 
        </asp:ScriptManager>
        <div id="header">

    
            <h2 class="auto-style20">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online MegaMart</h2>

        </div>
       
            <asp:Panel ID="Panel1" runat="server" BackColor="Crimson" Height="51px" Width="1580px" ForeColor="White" CssClass="auto-style32">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style17" Height="16px" Width="44px" ForeColor="White" NavigateUrl="~/WebForm15.aspx">SignUp</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /<asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style18" ForeColor="White" Height="20px" Width="42px" NavigateUrl="~/WebForm19.aspx">LogIn</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="16px" Width="154px" BorderStyle="Ridge" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="White" CssClass="auto-style31" ForeColor="Black" Height="38px" Text="Search" OnClick="Button1_Click" Width="89px" />
                <asp:Panel ID="Panel3" runat="server" BackColor="Crimson" CssClass="auto-style29" ForeColor="White" Height="63px" Width="1580px">
                    
                    <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style21" Height="38px" ImageUrl="~/mn.png" OnClick="ImageButton2_Click" Width="30px" />
                   
                    &nbsp; Show Cart</asp:Panel>
        </asp:Panel>
       
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2500"></asp:Timer>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString4 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString5 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
                <asp:AdRotator ID="AdRotator1" runat="server" Height="250px" Width="1580px"  
                    AdvertisementFile="~/XMLFile1.xml" ImageUrlField="ImageUrl"   />
            </ContentTemplate>
        </asp:UpdatePanel>
        
        
        <div id="sidebar">
       <div class="toggle-btn" onclick="toggleSidebar()" style="left: 211px; top: 60px; width: 5px"><a>
      <span></span>
      <span></span>
      <span></span>
      </a>
      </div>
  <ul>
   <li> <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/product display.aspx" CssClass="auto-style43">Home </asp:HyperLink></li>
   <li> <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/WebForm20.aspx" CssClass="auto-style43" ForeColor="White">Contact Us </asp:HyperLink></li>
   
    
  </ul>
 </div>
        
    
     
           
        
        
    
     
        <br />
        <br />
&nbsp;<h2 class="auto-style19">&nbsp;</h2>
             <p class="auto-style19">
                 <asp:DataList ID="DataList3" runat="server" BackColor="Crimson" BorderColor="Lime" BorderWidth="10px" DataKeyField="id" DataSourceID="SqlDataSource5" RepeatColumns="5" RepeatDirection="Horizontal" CssClass="auto-style44" OnItemCommand="DataList3_ItemCommand">
                     <ItemTemplate>
                         <table class="auto-style34">
                             <tr>
                                 <td class="auto-style47">Id:</td>
                                 <td class="auto-style3">
                                     <asp:Label ID="Label9" runat="server" CssClass="auto-style3" Text='<%# Eval("id") %>'></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style47">Serail #:</td>
                                 <td  class="auto-style3">
                                     <asp:Label ID="Label10" runat="server" CssClass="auto-style3" Text='<%# Eval("sno") %>'></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style47">Product Name:</td>
                                 <td class="auto-style3">
                                     <asp:Label ID="Label11" runat="server" CssClass="auto-style3" Text='<%# Eval("name") %>'></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style47">Price (Rupees):</td>
                                 <td class="auto-style3">
                                     <asp:Label ID="Label12" runat="server" CssClass="auto-style3" Text='<%# Eval("price") %>'></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style47">Quantity:</td>
                                 <td class="auto-style3">
                                     <asp:DropDownList ID="DropDownList3" runat="server"  SelectedValue='<%# Eval("quantity") %>'>
                                         <asp:ListItem>1</asp:ListItem>
                                         <asp:ListItem>2</asp:ListItem>
                                         <asp:ListItem>3</asp:ListItem>
                                         <asp:ListItem>4</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style47">Image:</td>
                                 <td class="auto-style3">
                                     <asp:Image ID="Image4" runat="server" CssClass="auto-style3" Height="150px" ImageUrl='<%# Eval("image") %>' Width="150px" />
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style35">&nbsp;</td>
                                 <td>&nbsp;</td>
                             </tr>
                         </table>
                         <asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton4_Click" ImageUrl="~/kkk.png" CommandName="d" CommandArgument='<%# Eval("id") %>'  />
                         
                         
<br />
                     </ItemTemplate>
                 </asp:DataList>
             </p>
             <p class="auto-style19">
                 &nbsp;</p>
             <p class="auto-style19">&nbsp;</p>
             <p class="auto-style19">
                 &nbsp;</p>
             <p class="auto-style19">
                 &nbsp;</p>
             <p class="auto-style19">&nbsp;</p>
             <p class="auto-style19">
             <asp:DataList ID="DataList4" runat="server" BackColor="Crimson"   BorderColor="Lime" BorderWidth="10px" OnItemCommand="DataList4_ItemCommand" CssClass="auto-style41" RepeatDirection="Horizontal" >
                 <ItemTemplate>
                     <table class="auto-style34">
                         <tr>
                             <td class="auto-style51">Id:</td>
                             <td class="auto-style3">
                                 <asp:Label ID="Label13" runat="server"  CssClass="auto-style3" Text ='<%# Eval("id") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style51"> Serail #:</td>
                             <td class="auto-style3">
                                 <asp:Label ID="Label14" runat="server" Text='<%# Eval("sno") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style49">Product Name:</td>
                             <td class="auto-style45">
                                 <asp:Label ID="Label15" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style51">Price&nbsp; (Rupees) </td>
                             <td class="auto-style3">
                                 <asp:Label ID="Label16" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style51">Quantity:</td>
                             <td class="auto-style3">
                                 <asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Eval("quantity") %>'>
                                     <asp:ListItem>1</asp:ListItem>
                                     <asp:ListItem>2</asp:ListItem>
                                     <asp:ListItem>3</asp:ListItem>
                                     <asp:ListItem>4</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style51">Image:</td>
                             <td class="auto-style3">
                                 <asp:Image ID="Image5" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>' Width="150px" />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style40">&nbsp;</td>
                             <td>
                                 <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/kkk.png" CommandName ="dee" CommandArgument='<%# Eval("id") %>'/>
                             </td>
                         </tr>
                     </table>
                     <br />
                 </ItemTemplate>
             </asp:DataList>
             </p>
             <p class="auto-style19">&nbsp;</p>
             <p class="auto-style19">&nbsp;</p>
    <p class="auto-style1">
        
        </p>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString3 %>" SelectCommand="SELECT * FROM [producttable]"></asp:SqlDataSource>
            
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
             
    </form>
        <div id="footer" class="newStyle2">
            
           
        </div>
    </div>
    </body>
</html>
