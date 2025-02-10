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
    public partial class Farmer_Delete : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            String id = Request.QueryString["id"];
            if (id == null)
            {
                Response.Redirect("Farmer_Product.aspx");
            }
            else
            {
                con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
                con.Open();
                cmd = new SqlCommand("Delete From Product_detail where id=@id", con);

                //int iid = Convert.ToInt32(id);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Farmer_Product.aspx");

            }

        }
    }
}









