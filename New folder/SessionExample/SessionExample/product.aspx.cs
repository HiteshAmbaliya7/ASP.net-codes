using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionExample
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("Welcome <b>" + Session["username"].ToString() + "</b>");
            }
        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
    }
}