using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["reID"] == null)
        {
            Response.Redirect("會員登入.aspx");

        }

        Label6.Text = Session["reName"].ToString();
        Label6.ForeColor = System.Drawing.Color.Blue;

        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
        GridView1.DataBind();
        Session.Abandon();
        Response.Write("<script language=javascript>alert('修改成功，請重新登入!')</script>");
        Response.Write("<script language=javascript>window.location.href='會員登入.aspx'</script>");
    }
}