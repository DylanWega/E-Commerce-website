using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;

namespace ClothingCompanyKp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            string firstName, lastName, eml, address, city, country, postcode, pwd = string.Empty;
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            string query = "SELECT * FROM Customer WHERE Email = '" + email.Text + "'AND Password = '"+ password.Text+"';";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count.ToString() == "1")
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        firstName = reader[0].ToString();
                        lastName = reader[1].ToString();
                        eml = reader[2].ToString();
                        address = reader[3].ToString();
                        city = reader[4].ToString();
                        country = reader[5].ToString();
                        postcode = reader[6].ToString();
                        pwd = reader[7].ToString();
                        Session["connected"] = firstName;
                        Session["lastName"] = lastName;
                        Session["eml"] = eml;
                        Session["address"] = address;
                        Session["city"] = city;
                        Session["country"] = country;
                        Session["postcode"] = postcode;
                        Session["password"] = pwd;

                        Response.Redirect("home2.aspx");
                    }

                }


            }
            if(email.Text == "admin@system.com" && password.Text == "admin"){
                Response.Redirect("crudProduct.aspx");
            }
            else
            {
                ErrMsg.Text = "Enter a correct Email & Password";
                
            }

        }

       
    }
}