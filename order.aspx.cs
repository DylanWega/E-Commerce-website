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
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            labelprodName.Text = Session["pName"].ToString();
            labelprodPrice.Text = Session["pPrice"].ToString();

            lname.Text = Session["lastName"].ToString();
            email.Text = Session["eml"].ToString();
            addres.Text = Session["address"].ToString();
            city.Text = Session["city"].ToString();
            country.Text = Session["country"].ToString();
            postcode.Text = Session["postcode"].ToString();


        }

        protected void orderBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            string query = "INSERT INTO orders (productName, productPrice, Email, LastName, address, City, Country, Postcode) values (@productName, @productPrice, @Email, @LastName, @address, @City, @Country, @Postcode);";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@productName", labelprodName.Text);
            cmd.Parameters.AddWithValue("@productPrice", labelprodPrice.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@LastName", lname.Text);
            cmd.Parameters.AddWithValue("@address", addres.Text);
            cmd.Parameters.AddWithValue("@City", city.Text);
            cmd.Parameters.AddWithValue("@Country", country.Text);
            cmd.Parameters.AddWithValue("@Postcode", postcode.Text);
            
            cmd.ExecuteNonQuery();
            string message = "Thank you for your order. An agent will contact you soon for the payement details. You can continue shopping ! !";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "'); window.location.href = 'shop2.aspx'", true);
        }
    }
}