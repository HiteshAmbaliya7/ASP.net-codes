using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextBoxControl
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtval_TextChanged(object sender, EventArgs e)
        {
            Response.Write("<font color='red'>"+txtval.Text+"</font>");
            Response.Write("<script>alert('" + txtval.Text + "');</script>");
            txtval2.Text = txtval.Text;
            txtval2.ReadOnly = true;
        }
    }
}