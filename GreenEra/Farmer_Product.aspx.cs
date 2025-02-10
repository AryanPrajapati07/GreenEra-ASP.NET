using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;
using System.Security.Cryptography;
using System.Web.Services.Description;
using System.Xml.Linq;

namespace GreenEra
{
    public partial class Farmer_Product : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        byte[] bytes1;

        public string[] pid { get; set; }
        public string[] pname { get; set; }
        public string[] pquantity { get; set; }
        public string[] pprice { get; set; }
        public string[] pabout { get; set; }
        public string[] pimage { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
            con.Open();
            con.Close();
            retdata();

        }

        protected void add_product(object sender, EventArgs e)
        {
            String filename = Path.GetFileName(bike_image.PostedFile.FileName);
            Stream fs = bike_image.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] imagecode = br.ReadBytes((Int32)fs.Length);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Product_detail" + "(product_name,product_netquantity,product_price,product_about,product_image)values(@product_name,@product_netquantity,@product_price,@product_about,@product_image)", con);
            cmd.Parameters.AddWithValue("@product_name", product_name.Text);
            cmd.Parameters.AddWithValue("@product_netquantity", product_netquantity.Text);
            cmd.Parameters.AddWithValue("@product_price", product_price.Text);
            cmd.Parameters.AddWithValue("@product_about", product_about.Text);
            cmd.Parameters.AddWithValue("@product_image", imagecode);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Farmer_Product.aspx");
        }
        public void retdata()
        {
            datacount();

            pid = new string[len];
            pname = new string[len];
            pquantity = new string[len];
            pprice = new string[len];
            pabout = new string[len];
            pimage = new string[len];



            con.Open();


            cmd = new SqlCommand("SELECT * FROM Product_detail", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {


                String p_id = reader.GetInt32(0).ToString();
                String p_name = reader.GetString(1);
                String p_quantity = reader.GetString(2);
                String p_price = reader.GetString(3);
                String p_about = reader.GetString(4);

                bytes1 = (byte[])reader["product_image"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                pid.SetValue(p_id, i);
                pname.SetValue(p_name, i);
                pquantity.SetValue(p_quantity, i);
                pprice.SetValue(p_price, i);
                pabout.SetValue(p_about, i);
                pimage.SetValue(url, i);
                i++;

            }
            con.Close();

        }
        public void datacount()
        {

            String connectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";


            String query = "select count(*) from Product_detail";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                len = (int)command.ExecuteScalar();
                Console.WriteLine(len);

                connection.Close();
            }
        }
    }
}