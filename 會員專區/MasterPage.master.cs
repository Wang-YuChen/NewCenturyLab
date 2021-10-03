using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 會員專區_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;

        if (Session["role"] == null)
            Response.Redirect("~/會員登入.aspx");

        //顯示登入者姓名
        if (Session["name"] != null)
        {
            Label1.Text = Session["name"].ToString();
        }
        //顯示登入者帳號
        if (Session["id"] != null)
        {
            Label6.Text = Session["id"].ToString();
        }
        
    }

    

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("線上預約.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("查看檢驗報告.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("修改會員資料.aspx"); 
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/會員登入.aspx");
    }
}
