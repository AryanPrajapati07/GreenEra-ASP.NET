using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace GreenEra
{
    public partial class Products : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string id;
       

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
            var ses = Session["log"];
            if (ses != null)
            {
                object sessionValue = Session["log"];
                if (sessionValue == "true")
                {

                }
            }
            else
            {
                Response.Redirect("UserLogin.aspx");
            }
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
            con.Open();
            con.Close();
            retdata();
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

            //con.Open();
            //cmd = new SqlCommand("SELECT * FROM Product_detail", con);
            //SqlDataReader reader1 = cmd.ExecuteReader();
            //while (reader1.Read())
            //{


            //    //String p_id = reader1.GetInt32(0).ToString();
            //    bytes1 = (byte[])reader1["product_image"];
            //    string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
            //    //pid.SetValue(p_id, i);
                
            //    pimage.SetValue(url, i);
            //    i++;

            //}
            //con.Close();

        }
        public void datacount()
        {

            String connectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true"; 

            String query = "select count(*) from Product_detail";
            //cmd.Parameters.AddWithValue("@id", id);
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