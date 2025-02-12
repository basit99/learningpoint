using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;

namespace WebApplication1
{
    public partial class addtocart10 : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("id");
                dt.Columns.Add("name");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("image");
               


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString6"].ConnectionString);
                        String myquery = "select * from producttable where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart10.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString6"].ConnectionString);
                        String myquery = "select * from producttable where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart10.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Label4.Text = grandtotal().ToString();

                    }


                }
                Label3.Text = GridView1.Rows.Count.ToString();

            }
            
        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[1];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                    break;

                }
            }

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("addtocart10.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;

           
        }

      

      

        protected void Button122_Click(object sender, EventArgs e)

        {
            int rowcount;
                rowcount = GridView1.Rows.Count;
            if (rowcount == 1 && grandtotal() > 1400)

                {
               
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString72"].ConnectionString);
                con.Open();
                string ss = "insert into customerordertable2 (id1,product1name,product1qty,totalprice,customername,adres,mobilenumber,emailadres) values(@id1,@product1name,@product1qty,@totalprice,@customername,@adres,@mobilenumber,@emailadres)";
                SqlCommand com = new SqlCommand(ss, con);
                com.Parameters.AddWithValue("@id1", ListBox1.Items[0].ToString());
                com.Parameters.AddWithValue("@product1name", ListBox2.Items[0].ToString());
                com.Parameters.AddWithValue("@product1qty", ListBox3.Items[0].ToString());
                com.Parameters.AddWithValue("@totalprice", Label4.Text.ToString());
                com.Parameters.AddWithValue("@customername", TextBox6.Text);
                com.Parameters.AddWithValue("@adres", TextBox11.Text);
                com.Parameters.AddWithValue("@mobilenumber", TextBox8.Text);
                com.Parameters.AddWithValue("@emailadres", TextBox9.Text);
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("sucessfully");
                Response.Redirect("webform201.aspx");


            }



            if(rowcount==2 && grandtotal() > 1400)

                {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString72"].ConnectionString);
                con.Open();
                string ss = "insert into customerordertable2 (id1,id2,product1name,product2name,product1qty,product2qty,totalprice,customername,adres,mobilenumber,emailadres) values(@id1,@id2,@product1name,@product2name,@product1qty,@product2qty,@totalprice,@customername,@adres,@mobilenumber,@emailadres)";
                SqlCommand com = new SqlCommand(ss, con);
                com.Parameters.AddWithValue("@id1", ListBox1.Items[0].ToString());
                com.Parameters.AddWithValue("@id2", ListBox1.Items[1].ToString());
                com.Parameters.AddWithValue("@product1name", ListBox2.Items[0].ToString());
                com.Parameters.AddWithValue("@product2name", ListBox2.Items[1].ToString());
                com.Parameters.AddWithValue("@product1qty", ListBox3.Items[0].ToString());
                com.Parameters.AddWithValue("@product2qty", ListBox3.Items[1].ToString());
                com.Parameters.AddWithValue("@totalprice", Label4.Text.ToString());
                com.Parameters.AddWithValue("@customername", TextBox6.Text);
                com.Parameters.AddWithValue("@adres", TextBox11.Text);
                com.Parameters.AddWithValue("@mobilenumber", TextBox8.Text);
                com.Parameters.AddWithValue("@emailadres", TextBox9.Text);
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("sucessfully");
                Response.Redirect("webform201.aspx");

            }

            if (rowcount == 3 && grandtotal() > 1400)
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString72"].ConnectionString);
                con.Open();
                string ss = "insert into customerordertable2 (id1,id2,id3,product1name,product2name,product3name,product1qty,product2qty,product3qty,totalprice,customername,adres,mobilenumber,emailadres) values(@id1,@id2,@id3,@product1name,@product2name,@product3name,@product1qty,@product2qty,@product3qty,@totalprice,@customername,@adres,@mobilenumber,@emailadres)";
                SqlCommand com = new SqlCommand(ss, con);
                com.Parameters.AddWithValue("@id1", ListBox1.Items[0].ToString());
                com.Parameters.AddWithValue("@id2", ListBox1.Items[1].ToString());
                com.Parameters.AddWithValue("@id3", ListBox1.Items[2].ToString());
                com.Parameters.AddWithValue("@product1name", ListBox2.Items[0].ToString());
                com.Parameters.AddWithValue("@product2name", ListBox2.Items[1].ToString());
                com.Parameters.AddWithValue("@product3name", ListBox2.Items[2].ToString());
                com.Parameters.AddWithValue("@product1qty", ListBox3.Items[0].ToString());
                com.Parameters.AddWithValue("@product2qty", ListBox3.Items[1].ToString());
                com.Parameters.AddWithValue("@product3qty", ListBox3.Items[2].ToString());
                com.Parameters.AddWithValue("@totalprice", Label4.Text.ToString());
                com.Parameters.AddWithValue("@customername", TextBox6.Text);
                com.Parameters.AddWithValue("@adres", TextBox11.Text);
                com.Parameters.AddWithValue("@mobilenumber", TextBox8.Text);
                com.Parameters.AddWithValue("@emailadres", TextBox9.Text);
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("sucessfully");
                Response.Redirect("webform201.aspx");

            }


            if (rowcount == 4 && grandtotal() > 1400)
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString72"].ConnectionString);
                con.Open();
                string ss = "insert into customerordertable2 (id1,id2,id3,id4,product1name,product2name,product3name,product4name,product1qty,product2qty,product3qty,product4qty,totalprice,customername,adres,mobilenumber,emailadres) values(@id1,@id2,@id3,@id4,@product1name,@product2name,@product3name,@product4name,@product1qty,@product2qty,@product3qty,@product4qty,@totalprice,@customername,@adres,@mobilenumber,@emailadres)";
                SqlCommand com = new SqlCommand(ss, con);
                com.Parameters.AddWithValue("@id1", ListBox1.Items[0].ToString());
                com.Parameters.AddWithValue("@id2", ListBox1.Items[1].ToString());
                com.Parameters.AddWithValue("@id3", ListBox1.Items[2].ToString());
                com.Parameters.AddWithValue("@id4", ListBox1.Items[3].ToString());
                com.Parameters.AddWithValue("@product1name", ListBox2.Items[0].ToString());
                com.Parameters.AddWithValue("@product2name", ListBox2.Items[1].ToString());
                com.Parameters.AddWithValue("@product3name", ListBox2.Items[2].ToString());
                com.Parameters.AddWithValue("@product4name", ListBox2.Items[3].ToString());
                com.Parameters.AddWithValue("@product1qty", ListBox3.Items[0].ToString());
                com.Parameters.AddWithValue("@product2qty", ListBox3.Items[1].ToString());
                com.Parameters.AddWithValue("@product3qty", ListBox3.Items[2].ToString());
                com.Parameters.AddWithValue("@product4qty", ListBox3.Items[3].ToString());
                com.Parameters.AddWithValue("@totalprice", Label4.Text.ToString());
                com.Parameters.AddWithValue("@customername", TextBox6.Text);
                com.Parameters.AddWithValue("@adres", TextBox11.Text);
                com.Parameters.AddWithValue("@mobilenumber", TextBox8.Text);
                com.Parameters.AddWithValue("@emailadres", TextBox9.Text);
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("sucessfully");
                Response.Redirect("webform201.aspx");

            }

            if (rowcount == 5 && grandtotal() > 1400)
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString72"].ConnectionString);
                con.Open();
                string ss = "insert into customerordertable2 (id1,id2,id3,id4,id5,product1name,product2name,product3name,product4name,product5name,product1qty,product2qty,product3qty,product4qty,product5qty,totalprice,customername,adres,mobilenumber,emailadres) values(@id1,@id2,@id3,@id4,@id5,@product1name,@product2name,@product3name,@product4name,@product5name,@product1qty,@product2qty,@product3qty,@product4qty,@product5qty,@totalprice,@customername,@adres,@mobilenumber,@emailadres)";
                SqlCommand com = new SqlCommand(ss, con);
                com.Parameters.AddWithValue("@id1", ListBox1.Items[0].ToString());
                com.Parameters.AddWithValue("@id2", ListBox1.Items[1].ToString());
                com.Parameters.AddWithValue("@id3", ListBox1.Items[2].ToString());
                com.Parameters.AddWithValue("@id4", ListBox1.Items[3].ToString());
                com.Parameters.AddWithValue("@id5", ListBox1.Items[4].ToString());
                com.Parameters.AddWithValue("@product1name", ListBox2.Items[0].ToString());
                com.Parameters.AddWithValue("@product2name", ListBox2.Items[1].ToString());
                com.Parameters.AddWithValue("@product3name", ListBox2.Items[2].ToString());
                com.Parameters.AddWithValue("@product4name", ListBox2.Items[3].ToString());
                com.Parameters.AddWithValue("@product5name", ListBox2.Items[4].ToString());
                com.Parameters.AddWithValue("@product1qty", ListBox3.Items[0].ToString());
                com.Parameters.AddWithValue("@product2qty", ListBox3.Items[1].ToString());
                com.Parameters.AddWithValue("@product3qty", ListBox3.Items[2].ToString());
                com.Parameters.AddWithValue("@product4qty", ListBox3.Items[3].ToString());
                com.Parameters.AddWithValue("@product5qty", ListBox3.Items[4].ToString());
                com.Parameters.AddWithValue("@totalprice", Label4.Text.ToString());
                com.Parameters.AddWithValue("@customername", TextBox6.Text);
                com.Parameters.AddWithValue("@adres", TextBox11.Text);
                com.Parameters.AddWithValue("@mobilenumber", TextBox8.Text);
                com.Parameters.AddWithValue("@emailadres", TextBox9.Text);
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("sucessfully");
                Response.Redirect("webform201.aspx");

            }


            if (rowcount == 6 && grandtotal() > 1400)
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerceConnectionString72"].ConnectionString);
                con.Open();
                string ss = "insert into customerordertable2 (id1,id2,id3,id4,id5,id6,product1name,product2name,product3name,product4name,product5name,product6name,product1qty,product2qty,product3qty,product4qty,product5qty,product6qty,totalprice,customername,adres,mobilenumber,emailadres) values(@id1,@id2,@id3,@id4,@id5,@id6,@product1name,@product2name,@product3name,@product4name,@product5name,@product6name,@product1qty,@product2qty,@product3qty,@product4qty,@product5qty,@product6qty,@totalprice,@customername,@adres,@mobilenumber,@emailadres)";
                SqlCommand com = new SqlCommand(ss, con);
                com.Parameters.AddWithValue("@id1", ListBox1.Items[0].ToString());
                com.Parameters.AddWithValue("@id2", ListBox1.Items[1].ToString());
                com.Parameters.AddWithValue("@id3", ListBox1.Items[2].ToString());
                com.Parameters.AddWithValue("@id4", ListBox1.Items[3].ToString());
                com.Parameters.AddWithValue("@id5", ListBox1.Items[4].ToString());
                com.Parameters.AddWithValue("@id6", ListBox1.Items[5].ToString());
                com.Parameters.AddWithValue("@product1name", ListBox2.Items[0].ToString());
                com.Parameters.AddWithValue("@product2name", ListBox2.Items[1].ToString());
                com.Parameters.AddWithValue("@product3name", ListBox2.Items[2].ToString());
                com.Parameters.AddWithValue("@product4name", ListBox2.Items[3].ToString());
                com.Parameters.AddWithValue("@product5name", ListBox2.Items[4].ToString());
                com.Parameters.AddWithValue("@product6name", ListBox2.Items[5].ToString());
                com.Parameters.AddWithValue("@product1qty", ListBox3.Items[0].ToString());
                com.Parameters.AddWithValue("@product2qty", ListBox3.Items[1].ToString());
                com.Parameters.AddWithValue("@product3qty", ListBox3.Items[2].ToString());
                com.Parameters.AddWithValue("@product4qty", ListBox3.Items[3].ToString());
                com.Parameters.AddWithValue("@product5qty", ListBox3.Items[4].ToString());
                com.Parameters.AddWithValue("@product6qty", ListBox3.Items[5].ToString());
                com.Parameters.AddWithValue("@totalprice", Label4.Text.ToString());
                com.Parameters.AddWithValue("@customername", TextBox6.Text);
                com.Parameters.AddWithValue("@adres", TextBox11.Text);
                com.Parameters.AddWithValue("@mobilenumber", TextBox8.Text);
                com.Parameters.AddWithValue("@emailadres", TextBox9.Text);
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("sucessfully");
                Response.Redirect("webform201.aspx");

            }

            else
            {
                Response.Write(" total is smaller than 1400 or order not submitted correctly ");
            }
            

        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {




            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[1];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                    break;

                }
            }

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("addtocart10.aspx");

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;

            TextBox11.Text = gr.Cells[0].Text;
            


        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("product%20display.aspx");
        }

        protected void Button13_Click1(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
                Label lb1 = (Label)GridView1.Rows[i].FindControl("Label2");
                Label lb2 = (Label)GridView1.Rows[i].FindControl("Label3");
                if (ch.Checked == true)
                    ListBox1.Items.Add(lb.Text.ToString());
                ListBox2.Items.Add(lb1.Text.ToString());
                ListBox3.Items.Add(lb2.Text.ToString());
               
                




            }
        }

       
    }
}


   

    
  