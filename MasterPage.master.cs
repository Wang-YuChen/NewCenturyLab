using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "檢驗所資訊")
        {
            Response.Redirect("檢驗所資訊.aspx");
        }
        else if(DropDownList1.SelectedValue == "簡介與理念")
        {
            Response.Redirect("簡介與理念.aspx");
        }
        else if (DropDownList1.SelectedValue == "檢驗所設備")
        {
            Response.Redirect("機器設備介紹.aspx");
        }
        else if (DropDownList1.SelectedValue == "檢驗師介紹")
        {
            Response.Redirect("檢驗師介紹.aspx");
        }

    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedValue == "檢驗項目")
        {
            Response.Redirect("檢驗服務項目.aspx");
        }
        else if (DropDownList3.SelectedValue == "檢驗套餐")
        {
            Response.Redirect("檢驗套餐.aspx");
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedValue == "會員登入")
        {
            Response.Redirect("會員登入.aspx");
        }
        else if (DropDownList4.SelectedValue == "會員註冊")
        {
            Response.Redirect("會員註冊.aspx");
        }
    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList5.SelectedValue == "預約表單")
        {
            Response.Redirect("線上預約.aspx");
        }
    }

    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList6.SelectedValue == "Q&A")
        {
            Response.Redirect("Q.A.aspx");
        }
        else if (DropDownList6.SelectedValue == "常見問題")
        {
            Response.Redirect("常見問題.aspx");
        }
        
    }

    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList7.SelectedValue == "BMI")
        {
            Response.Redirect("BMI遊戲.aspx");
        }
        else if (DropDownList7.SelectedValue == "健康O或X")
        {
            Response.Redirect("健康O X.aspx");
        }
    }

    

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("首頁.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("會員登入.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("線上預約.aspx");
    }
}
