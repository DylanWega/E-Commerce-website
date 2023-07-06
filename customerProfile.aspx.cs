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
    public partial class customerProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            logDetail.Text = Session["connected"].ToString();

            Fname.Text = Session["connected"].ToString();
            Lname.Text = Session["lastName"].ToString();
            Email.Text = Session["eml"].ToString();
            Address.Text = Session["address"].ToString();
            city.Text = Session["city"].ToString();
            country.Text = Session["country"].ToString();
            postcode.Text = Session["postcode"].ToString();
            password.Text = Session["password"].ToString();

            

        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            string query = "UPDATE Customer SET FirstName = @fn, LastName = @ln, address = @adrs, City = @cty, Country = @ctry, Postcode = @pcode, Password = @pwd WHERE Email='" + Email.Text + "';";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@fn", Fname.Text);
            cmd.Parameters.AddWithValue("@ln", Lname.Text);
            cmd.Parameters.AddWithValue("@adrs", Address.Text);
            cmd.Parameters.AddWithValue("@eml", Email.Text);
            cmd.Parameters.AddWithValue("@cty", city.Text);
            cmd.Parameters.AddWithValue("@ctry", country.Text);
            cmd.Parameters.AddWithValue("@pcode", postcode.Text);
            cmd.Parameters.AddWithValue("@pwd", password.Text);
            cmd.ExecuteNonQuery();
            string message = "Information updated successfully";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "'); window.location.href = 'login.aspx'", true);
            conn.Close();
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            string query = "DELETE Customer WHERE Email = @email";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@email", Email.Text);
            cmd.ExecuteNonQuery();
            string message = "Account deleted successfully";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "'); window.location.href = 'login.aspx'", true);
            conn.Close();
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            Session.Remove("connected");
            Session.RemoveAll();
            Response.Redirect("home.aspx");
        }
    }

        
    
}