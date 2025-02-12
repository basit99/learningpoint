using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;

namespace WebApplication1
{
    public partial class WebForm18 : System.Web.UI.Page
    {
         string ConnStr = ConfigurationManager.ConnectionStrings["ecommerceConnectionString39"].ConnectionString;
        string strqry, emaial1, Pass;
        int RowCount;



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserLogin();
        }


        protected void UserLogin()
        {
            using (SqlConnection con = new SqlConnection(ConnStr))
            {
                strqry = "select * from emailship";
                using (SqlCommand cmd = new SqlCommand(strqry))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, con))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        RowCount = dt.Rows.Count;
                        for (int i = 0; i < RowCount; i++)
                        {
                            emaial1 = dt.Rows[i]["email"].ToString();
                            


                            if (emaial1 == TextBox2.Text)
                            {



                                Session["email"] = emaial1;
                                Response.Redirect("webform17.aspx");


                            }

                            else
                            {
                                Label1.Visible = true;
                                Label1.Text = "invalid email";
                            }

                        }
                    }
                }
            }
        }




    }
}