using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        int temp;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString37"].ConnectionString);
                conn.Open();
                string checkuser = "select count (*) from emailship where email='" + TextBox1.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                com.CommandTimeout = 600;
                temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User Alteady Exsist");
                }
                conn.Close();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (temp == 0)
            {
                try
                {

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString37"].ConnectionString);
                    conn.Open();
                    string insertQuery = "insert into emailship (name,email,password)values(@rolnumber,@stuname,@selteacher)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@rolnumber", TextBox1.Text);
                    com.Parameters.AddWithValue("@stuname", TextBox2.Text);
                    com.Parameters.AddWithValue("@selteacher", TextBox3.Text);
                    com.ExecuteNonQuery();
                    Response.Write("Registration Successfull");


                    conn.Close();
                }
                catch (Exception ex)

                {

                    Response.Write("Error:" + ex.ToString());
                }
            }
        }
    }
}