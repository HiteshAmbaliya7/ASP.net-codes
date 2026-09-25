using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomeValidatorControlServerSide
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cust1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int n = Convert.ToInt16(args.Value);
            if (n % 2 == 0)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}