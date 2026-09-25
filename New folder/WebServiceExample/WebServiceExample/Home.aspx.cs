using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebServiceExample
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            AdditionService.Demo obj = new AdditionService.Demo();
            int result = obj.addition(Convert.ToInt16(txtval1.Text), Convert.ToInt16(txtval2.Text));
            Response.Write("Addition is : " + result + "<br><hr>");
        }
    }
}