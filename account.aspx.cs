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
    public partial class account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createAccount_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
                conn.Open();
                string query = "INSERT INTO Customer(FirstName, LastName, Email, address, City, Country, Postcode, Password) values (@fname, @lname, @email, @address, @city, @country, @postcode, @password);";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@fname", Fname.Text);
                cmd.Parameters.AddWithValue("@lname", Lname.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@address", Address.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);
                cmd.Parameters.AddWithValue("@country", country.Text);
                cmd.Parameters.AddWithValue("@postcode", postcode.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);
                cmd.ExecuteNonQuery();
                Response.Write("Registration is successful");
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }
    }
}