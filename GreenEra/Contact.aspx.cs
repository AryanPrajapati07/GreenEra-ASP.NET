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
    public partial class Contact : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
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
        }   
        protected void button_Message(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into Contact" + "(name,email,subject,message)values(@name,@email,@sub,@mes)", con);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@sub", Subject.Text);
            cmd.Parameters.AddWithValue("@mes", Message.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Contact.aspx");

        }
    }
}