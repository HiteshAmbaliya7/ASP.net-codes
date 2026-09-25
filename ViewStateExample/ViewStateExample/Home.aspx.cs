using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewStateExample
{
    public partial class Home : System.Web.UI.Page
    {
        public int counter
        {
            get
            {
                if (ViewState["lbl_counter"] != null)
                {
                    return (int)ViewState["lbl_counter"];
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["lbl_counter"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            lblcounter.Text = "Page Counter : " + counter.ToString();
            counter++;
        }
    }
}