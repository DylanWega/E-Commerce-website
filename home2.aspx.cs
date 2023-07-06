using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothingCompanyKp
{
    public partial class home2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["connected"] != null)
            {
                logDetail.Text = Session["connected"].ToString();
            }
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            Session.Remove("connected");
            Session.RemoveAll();
            Response.Redirect("home.aspx");
        }
    }
}