using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckBoxControl
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chk1_CheckedChanged(object sender, EventArgs e)
        {
            if (chk1.Checked == true)
                Response.Write(chk1.Text);
            else
                Response.Write("");
        }
    }
}