using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationStateExample
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            if (Application["counter"] == null)
            {
                Application["counter"] = "0";
            }
            else
            {
                Application["counter"] = Convert.ToInt16(Application["counter"]) + 1;
                lblcounter.Text = Application["counter"].ToString();
            }
        }
    }
}