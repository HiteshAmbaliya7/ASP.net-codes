using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace dropdownchangecolor
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlcolor_SelectedIndexChanged(object sender, EventArgs e)
        {
            body1.Style["background-color"] = ddlcolor.SelectedValue;
        }
    }
}