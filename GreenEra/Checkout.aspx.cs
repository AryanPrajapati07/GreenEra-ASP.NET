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
    public partial class Checkout : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        String bid;
        String p_name;
        String p_price;


        private const string _key = "rzp_test_zQE8K7rsDm7qpp";
        private const string _secret = "aITmfM3cFkbMr9PskFxhRMZv";
        private const decimal registrationAmount = 100;
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

            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Products.aspx");
            }
            else
            {
                con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
                con.Open();
                con.Close();
                bid = Request.QueryString["id"];

            }


        }
        protected void book_now(object sender, EventArgs e)
        {


            String payment_name = "";
            if (Cash.Checked)
            {
                payment_name = Cash.Text;
            }
            if (Cash1.Checked)
            {
                payment_name = Cash.Text;
            }
            if (Cash2.Checked)
            {
                payment_name = Cash.Text;
            }
            con.Open();

           

            cmd = new SqlCommand("SELECT * FROM Product_detail where id= '" + bid + "'", con);

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                p_name = reader.GetString(1);
                p_price = reader.GetString(3);

            }   
            reader.Close();
            con.Close();


            con.Open();
            cmd = new SqlCommand("insert into Checkout" + "(first_name,last_name,email,phone,add_line1,add_line2,nearest_place,area,city,state,zip_code,special_req,payment,product_name,product_price)values(@first_name,@last_name,@email,@phone,@add_line1,@add_line2,@nearest_place,@area,@city,@state,@zip_code,@special_req,@payment,@product_name,@product_price)", con);
            cmd.Parameters.AddWithValue("@first_name", b_first_name.Text);
            cmd.Parameters.AddWithValue("@last_name", b_last_name.Text);
            cmd.Parameters.AddWithValue("@email", b_email.Text);
            cmd.Parameters.AddWithValue("@phone", b_phone.Text);
            cmd.Parameters.AddWithValue("@add_line1", b_Addline1.Text);
            cmd.Parameters.AddWithValue("@add_line2", b_Addline2.Text);
            cmd.Parameters.AddWithValue("@nearest_place", b_nearplace.Text);
            cmd.Parameters.AddWithValue("@area", b_area.Text);
            cmd.Parameters.AddWithValue("@city", b_city.Text);
            cmd.Parameters.AddWithValue("@state", b_state.Text);
            cmd.Parameters.AddWithValue("@zip_code", b_zipcode.Text);
            cmd.Parameters.AddWithValue("@special_req", b_special_req.Text);
            cmd.Parameters.AddWithValue("@payment", payment_name);
            cmd.Parameters.AddWithValue("@product_name", p_name);
            cmd.Parameters.AddWithValue("@product_price", p_price);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Bill.aspx");

        }
    }
}