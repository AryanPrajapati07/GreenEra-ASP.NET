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
    public partial class UserLogin : System.Web.UI.Page
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

        protected void Signin_next(object sender, EventArgs e)
        {
            Session["email"] = Email_signin.Text;
              
            cmd.CommandText = "Select * from UserInfo where email='" + Email_signin.Text + "' and password='" + Password_signin.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "UserInfo");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["log"] = "true";
                Response.Redirect("HomePage.aspx");
            }
        }
    }
}