using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 後台_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page.MaintainScrollPositionOnPostBack = true;

        if (Session["role"] == null)
        {
            Response.Redirect("~/會員登入.aspx");

        }
        else if (Session["role"].ToString() == "一般會員")
        {
            Response.Redirect("~/會員登入.aspx");
        }

        //顯示登入者姓名
        if (Session["name"] != null)
        {
            Label1.Text = Session["name"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("關於我們管理.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("最新消息管理.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("會員專區管理.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("檢驗服務項目管理.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("聯絡我們管理.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("知識庫管理.aspx");
    }

    

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("線上預約管理.aspx");
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/會員登入.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("後台首頁.aspx");
    }
}
