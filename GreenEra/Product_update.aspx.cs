using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreenEra
{
    public partial class Product_update : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
            con.Open();
            con.Close();

            if (Request.QueryString["uid"] == null || Request.QueryString["uid"].Length == 0)
            {
                Response.Redirect("AddProduct.aspx");
            }
            else
            {
                id = Request.QueryString["uid"];

            }
        }
        protected void retrive_data(object sender, EventArgs e)
        {
            getData(Request.QueryString["uid"]);

        }
        public void getData(string id)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Product_detail where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                TextBox1.Text = reader.GetString(1);
                TextBox7.Text = reader.GetString(2);
                TextBox8.Text = reader.GetString(3);
                TextBox9.Text = reader.GetString(4);

            }
            con.Close();
            reader.Close();
        }
        public void update_data(object sender, EventArgs e)
        {
            id = Request.QueryString["uid"];
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
            string query = "UPDATE Product_detail SET " +
    "product_name=@dname1, product_netquantity=@dname7 , product_price=@dname8 , product_about=@dname9 " +
    "WHERE id=@id";

            // Create a new SqlCommand object
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@dname1", TextBox1.Text);


            cmd.Parameters.AddWithValue("@dname7", TextBox7.Text);
            cmd.Parameters.AddWithValue("@dname8", TextBox8.Text);
            cmd.Parameters.AddWithValue("@dname9", TextBox9.Text);
            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("AddProduct.aspx");
            // Execute the update query


            //con.Open();
            //SqlCommand cmd = new SqlCommand("insert into Update_Product" + "(product_name,product_netquantity,product_price,product_about)values(@product_name,@product_netquantity,@product_price,@product_about)", con);
            //cmd.Parameters.AddWithValue("@product_name", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@product_netquantity", TextBox7.Text);
            //cmd.Parameters.AddWithValue("@product_price", TextBox8.Text);
            //cmd.Parameters.AddWithValue("@product_about", TextBox9.Text);


            //cmd.ExecuteNonQuery();
            //con.Close();
            //Response.Redirect("AddProduct.aspx");

        }
    }
}