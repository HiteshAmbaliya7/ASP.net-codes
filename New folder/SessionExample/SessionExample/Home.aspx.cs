using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionExample
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "admin" && txtpassword.Text == "admin")
            {
                Session["username"] = txtusername.Text;
                Response.Redirect("product.aspx");
            }
            else
            {
                Response.Write("<font color='red'>Either UserName or Password is Wrong.</font><br><hr>");
            }
        }
    }
}