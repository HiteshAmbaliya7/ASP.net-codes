using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace ReadandWriteXML
{
    public partial class Home : System.Web.UI.Page
    {
        DataSet ds;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnwrite_Click(object sender, EventArgs e)
        {
            ds = new DataSet();
            dt = new DataTable("Student");
            dt.Columns.Add("firstName");
            dt.Columns.Add("lastName");
            dt.Columns.Add("city");
            dt.Rows.Add(txtfnm.Text, txtlnm.Text, txtcity.Text);
            ds.Tables.Add(dt);
            ds.WriteXml(Server.MapPath("Student.xml"));
            Response.Write("<font color='green'>XML File Written Successfully.</font><br><hr>");
        }

        protected void btnread_Click(object sender, EventArgs e)
        {
            ds = new DataSet();
            ds.ReadXml(Server.MapPath("Student.xml"));
            gvstudent.DataSource = ds.Tables["Student"];
            gvstudent.DataBind();
        }
    }
}