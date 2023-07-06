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
using System.IO;

namespace ClothingCompanyKp
{
    public partial class crudOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            string query = "DELETE orders WHERE orderID = @orderID;";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@orderID", orderID.Text);
            cmd.ExecuteNonQuery();
            string message = "Order Cancelled successfully";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "'); window.location.href = 'crudProduct.aspx'", true);
            conn.Close();
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            Session.Remove("connected");
            Session.RemoveAll();
            Response.Redirect("home.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            orderID.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}