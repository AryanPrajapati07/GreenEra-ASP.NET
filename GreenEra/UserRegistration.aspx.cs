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
    public partial class UserRegistration : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
            con.Open();
        }

        protected void Signup_next(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand("insert into UserInfo" + "(name,email,phone,password)values(@name,@email,@phone,@pass)", con);
            cmd.Parameters.AddWithValue("@name", Name_signup.Text);
            cmd.Parameters.AddWithValue("@email", Email_signup.Text);
            cmd.Parameters.AddWithValue("@phone", Phone_signup.Text);
            cmd.Parameters.AddWithValue("@pass", Password_signup.Text);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";

            Response.Redirect("HomePage.aspx");


        }


    }
}