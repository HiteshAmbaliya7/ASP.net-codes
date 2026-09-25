using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxExtensionExample
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            lblmsg.Text = "Button clicked Using AJAX.";
        }
    }
}