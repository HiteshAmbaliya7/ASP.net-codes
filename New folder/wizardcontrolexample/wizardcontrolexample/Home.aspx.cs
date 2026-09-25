using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wizardcontrolexample
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void wz1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Response.Write("<font color='green'>Registration Completed Successfully.</font><br><hr>");
        }
    }
}