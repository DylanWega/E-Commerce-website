using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace ClothingCompanyKp
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True");
            conn.Open();
            //string connStr = System.Configuration.ConfigurationManager.ConnectionStrings[@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\ClothingCompanyKp\App_Data\database.mdf;Integrated Security=True"].ToString();
            string pic = context.Request.QueryString["ID"];

            //using(System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(connStr)):

            string query = "SELECT Pimage FROM product WHERE ID = @ID ";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@ID", pic);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                reader.Read();
                context.Response.BinaryWrite((Byte[])reader[reader.GetOrdinal("Pimage")]);
                reader.Close();
            }
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}