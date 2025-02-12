using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication1
{
    public partial class product_display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("addtocart10.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "abc")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("addtocart10.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString5"].ConnectionString);
            string find = "select* from producttable where(name like '%' + @name + '%')";
            SqlCommand comm = new SqlCommand(find, conn);
            comm.Parameters.Add("@name", SqlDbType.NVarChar).Value = TextBox1.Text;
            conn.Open();
            comm.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;
            DataSet ds = new DataSet();
            da.Fill(ds, "name");
            DataList4.DataSource = ds;
            DataList4.DataBind();


            conn.Close();
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList2"));
                Response.Redirect("addtocart10.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }

        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "dee")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList4"));
                Response.Redirect("addtocart10.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }

        }

        protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "d")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList3"));
                Response.Redirect("addtocart10.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }
        }

      
    }
}