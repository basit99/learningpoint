using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {

              
                
                Session.Timeout = 5;

            }
            else
            {
                Response.Redirect("webform18.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString40"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("update emailship set password='" + TextBox2.Text + "' where email='" + TextBox1.Text + "'", conn);
            com.ExecuteNonQuery();
            conn.Close();
            Label1.Visible = true;
            Label1.Text = "Pass UpDated Successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            Session.RemoveAll();
            Response.Redirect("WebForm19.aspx");

        }
    }
}