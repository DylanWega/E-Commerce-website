using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothingCompanyKp
{
    public partial class shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buyBtn_Click(object sender, EventArgs e)
        {
            if (Session["connected"] != null)
            {
                logDetail.Text = Session["connected"].ToString();

                Button btn = sender as Button;
                string[] arg = new string[3];
                arg = btn.CommandArgument.ToString().Split(';');
                byte[] imageBytes = System.Text.Encoding.Unicode.GetBytes(arg[2]);

                Session["pName"] = arg[0];
                Session["pPrice"] = arg[1];
                Session["prodImg"] = imageBytes;

                Response.Redirect("order.aspx");
            }
            else
            {
                string message = "Please Login to start buying !";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "'); window.location.href = 'login.aspx'", true);
            }

            
        }

        
    }
}