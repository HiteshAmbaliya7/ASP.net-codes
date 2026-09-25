using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownListControl
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write(ddlcourse.SelectedItem.Text);
        }
    }
}