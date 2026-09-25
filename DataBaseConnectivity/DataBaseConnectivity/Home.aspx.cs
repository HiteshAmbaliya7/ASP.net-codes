using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace DataBaseConnectivity
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=YAJURVED-LAB;Initial Catalog=employee;Integrated Security=True");
            con.Open();
            if (!IsPostBack)
            {
                getdata();
                getdataonrepeater();
            }
        }

        protected void btnsumbit_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("sp_InsertEmployeeDetail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nm", txtname.Text);
                cmd.Parameters.AddWithValue("@city", ddlcity.Text);
                cmd.Parameters.AddWithValue("@gender", (rbtmale.Checked == true) ? rbtmale.Text : rbtfemale.Text);
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("<script>alert('Record Insert Successfully');</script>");
                    getdata();
                }
                else
                {
                    Response.Write("<script>alert('Error');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
        public void getdata()
        {
            cmd = new SqlCommand("sp_GetEmployeeDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            dr = cmd.ExecuteReader();
            dt = new DataTable();
            dt.Load(dr);
            gvempdetail.DataSource = dt;
            gvempdetail.DataBind();
        }

        protected void gvempdetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            getdata();
        }

        protected void gvempdetail_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvempdetail.EditIndex = e.NewEditIndex;
            getdata();
        }

        protected void gvempdetail_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvempdetail.EditIndex = -1;
            getdata();
        }

        protected void gvempdetail_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int id = Convert.ToInt16(gvempdetail.DataKeys[e.RowIndex].Value);
                TextBox txtnm = (TextBox)gvempdetail.Rows[e.RowIndex].Cells[2].Controls[0];
                TextBox txtcity = (TextBox)gvempdetail.Rows[e.RowIndex].Cells[3].Controls[0];
                TextBox txtgender = (TextBox)gvempdetail.Rows[e.RowIndex].Cells[4].Controls[0];
                TextBox txtmobile = (TextBox)gvempdetail.Rows[e.RowIndex].Cells[5].Controls[0];
                cmd = new SqlCommand("sp_UpdateEmployeeDetail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@nm", txtnm.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@gender", txtgender.Text);
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("<script>alert('Record Update Successfully');</script>");
                    gvempdetail.EditIndex = -1;
                    getdata();
                }
                else
                {
                    Response.Write("<script>alert('error');</script>");
                    getdata();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                getdata();
            }

        }

        protected void gvempdetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = Convert.ToInt16(gvempdetail.DataKeys[e.RowIndex].Value);
                cmd = new SqlCommand("sp_DeleteEmployeeDetail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", id);
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Record Deleted Successfully');</script>");
                        getdata();
                    }
                    else
                    {
                        Response.Write("<script>alert('error');</script>");
                        getdata();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                getdata();
            }
        }
        public void getdataonrepeater()
        {
            cmd = new SqlCommand("sp_GetEmployeeDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            dr = cmd.ExecuteReader();
            dt = new DataTable();
            dt.Load(dr);
            rptemployee.DataSource = dt;
            rptemployee.DataBind();
        }

    }
}