using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalendarcontrolExample
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            lbldate.Text = cal1.SelectedDate.ToString("dd/MM/yyyy");
        }

        protected void cal1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}