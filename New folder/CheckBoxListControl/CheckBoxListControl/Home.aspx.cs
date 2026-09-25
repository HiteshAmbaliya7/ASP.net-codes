using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckBoxListControl
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            string course = "";
            foreach (ListItem item in chkcourse.Items)
            {
                if (item.Selected)
                {
                    course += item.Text + " , ";
                }
            }
            lblmsg.Text = "You Have Selected : " + course;
        }
    }
}