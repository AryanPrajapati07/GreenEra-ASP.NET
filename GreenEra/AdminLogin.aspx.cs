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
    public partial class AdminLogin : System.Web.UI.Page
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

        protected void admin_login(object sender, EventArgs e)
        {
            cmd.CommandText = "Select * from adminInfo where email='" + adminemail.Text + "' and password='" + adminpass.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "adminInfo");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("Admin_Dashboard.aspx");
            }
        }
    }
}