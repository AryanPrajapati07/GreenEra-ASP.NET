using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.EnterpriseServices;

namespace GreenEra
{
    public partial class Admin_Dashboard : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd1 = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        int j = 0;
        byte[] bytes1;

        public string[] p_id { get; set; }
        public string[] p_fname { get; set; }
        public string[] p_lname { get; set; }
        public string[] p_email { get; set; }
        public string[] p_phone { get; set; }
        public string[] p_area { get; set; }
        public string[] p_city { get; set; }
        public string[] p_state { get; set; }
        public string[] p_zipcode { get; set; }
        public string[] p_payment { get; set; }
        public string[] p_productname { get; set; }
        public string[] p_price { get; set; }
        public string[] p_admin { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";
            con.Open();
            con.Close();
            retdata();
        }
        public void retdata()
        {
            datacount();

            p_id = new string[len];
            p_fname = new string[len];
            p_lname = new string[len];
            p_email = new string[len];
            p_phone = new string[len];
            p_area = new string[len];
            p_city = new string[len];
            p_state = new string[len];
            p_zipcode = new string[len];
            p_payment = new string[len];
            p_productname = new string[len];
            p_price = new string[len];

            p_admin = new string[len];

            con.Open();


            cmd = new SqlCommand("SELECT * FROM Checkout", con);
            SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
            {

               

                String pid = reader.GetInt32(0).ToString();
                String pfname = reader.GetString(1);
                String plname = reader.GetString(2);
                String pemail = reader.GetString(3);
                String pphone = reader.GetString(4);
                String parea = reader.GetString(8);
                String pcity = reader.GetString(9);
                String pstate = reader.GetString(10);
                String pzipcode = reader.GetString(11);
                String ppayment = reader.GetString(13);
                String pproductname = reader.GetString(14);
                String pprice = reader.GetString(15);

               

                p_id.SetValue(pid, i);
                p_fname.SetValue(pfname, i);
                p_lname.SetValue(plname, i);
                p_email.SetValue(pemail, i);
                p_phone.SetValue(pphone, i);
                p_area.SetValue(parea, i);
                p_city.SetValue(pcity, i);
                p_state.SetValue(pstate, i);
                p_zipcode.SetValue(pzipcode, i);
                p_payment.SetValue(ppayment, i);
                p_productname.SetValue(pproductname, i);
                p_price.SetValue(pprice, i);
                i++;

            }
            con.Close();

            con.Open();
            cmd1 = new SqlCommand("SELECT * FROM adminInfo", con);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            while (reader1.Read())
            {
                String padmin = reader1.GetString(1);
                p_admin.SetValue(padmin, j);
            }
            con.Close();
        }
        public void datacount()
        {

            String connectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=GreenEra;integrated Security=true";


            String query = "select count(*) from Checkout";
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