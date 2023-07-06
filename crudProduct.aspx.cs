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
    public partial class crudProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            prodID.Text = GridView1.SelectedRow.Cells[1].Text;
            prodName.Text = GridView1.SelectedRow.Cells[2].Text;
            prodPrice.Text = GridView1.SelectedRow.Cells[3].Text;
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[4].Text;
            
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] bytes = br.ReadBytes((Int32)fs.Length);
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            string query = "INSERT INTO product values (@name, @price, @category, @Pimage);";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", prodName.Text);
            cmd.Parameters.AddWithValue("@price", prodPrice.Text);
            cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@Pimage", bytes);
            cmd.ExecuteNonQuery();
            string message = "Product Added successfully";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "'); window.location.href = 'crudProduct.aspx'", true);
            conn.Close();
        }

        protected void delBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            string query = "DELETE product WHERE ID = @prodID;";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@prodID", prodID.Text);
            cmd.ExecuteNonQuery();
            string message = "Product Deleted successfully";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "'); window.location.href = 'crudProduct.aspx'", true);
            conn.Close();
        }

        protected void updBtn_Click(object sender, EventArgs e)
        {
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] bytes = br.ReadBytes((Int32)fs.Length);
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            string query = "UPDATE product SET name = @name, price = @price, category = @category, Pimage = @Pimage WHERE ID = '"+ prodID.Text+ "';";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", prodName.Text);
            cmd.Parameters.AddWithValue("@price", prodPrice.Text);
            cmd.Parameters.AddWithValue("@category", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@Pimage", bytes);
            cmd.ExecuteNonQuery();
            string message = "Product Updated successfully";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "'); window.location.href = 'crudProduct.aspx'", true);
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