using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace WebApplication1
{
    public partial class WebFormadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {



                Session.Timeout = 5;

            }
            else
            {
                Response.Redirect("webform16.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString21"].ConnectionString);
            string path = Server.MapPath("NewFolder21/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name1 = "NewFolder21/" + FileUpload1.FileName;
                    string ss = "insert into producttable (sno,name,price,image,quantity) values('" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + name1 + "'     ,'" + DropDownList1.SelectedItem.ToString() + "')";
                    SqlCommand cmd = new SqlCommand(ss, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("sucessfully");

                }
                else
                {
                    Response.Write("you can upload jpg and png file");
                }
            }
            else
            {
                Response.Write("plz select file");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString34"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("delete from producttable where Id='" + Convert.ToInt32(TextBox4.Text).ToString() + "'", conn);
            com.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
            Label2.Visible = true;
            Label2.Text = "Deleted Successfully";
            TextBox4.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("login.aspx");
        }

       
      

       

        protected void Button3_Click2(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("webform16.aspx");

        }
    }
    }
