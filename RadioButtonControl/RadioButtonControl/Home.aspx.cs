using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadioButtonControl
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rbtmale_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtmale.Checked == true)
                Response.Write(rbtmale.Text);
            else
                Response.Write("");
        }

        protected void rbtfemale_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtfemale.Checked == true)
                Response.Write(rbtfemale.Text);
            else
                Response.Write("");
        }
    }
}