using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 後台_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataBind();
        }

       
        
    }



    protected void Button9_Click(object sender, EventArgs e)//新增最新消息
    {
        SqlDataSource1.Insert();
        GridView1.DataBind();
        TextBox1.Text = "";
        TextBox2.Text = "";

    }

    protected void Button10_Click(object sender, EventArgs e)//查詢按鈕
    {
        if (TextBox3.Text != null)
            TextBox3.Text = TextBox3.Text;
        else if(TextBox6.Text != null)
            TextBox6.Text = TextBox6.Text;
        else if (TextBox7.Text != null)
            TextBox7.Text = TextBox7.Text;

    }

    protected void GridView2_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void Button11_Click(object sender, EventArgs e)//新增新聞
    {
        SqlDataSource3.Insert();
        GridView3.DataBind();
        TextBox4.Text = "";
        TextBox5.Text = "";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)//當查詢選項發生改變
    {
        TextBox3.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";

        if (DropDownList1.SelectedValue == "編號")
        {
            TextBox3.Visible = true;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            Label8.Visible = false;
            GridView2.Visible = true;
            GridView4.Visible = false;
            GridView5.Visible = false;
                
        }
        else if (DropDownList1.SelectedValue == "標題關鍵字")
        {
            TextBox6.Visible = true;
            TextBox3.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            Label8.Visible = false;
            GridView2.Visible = false;
            GridView4.Visible = true;
            GridView5.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "時間")
        {
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            Label8.Visible = true;
            TextBox3.Visible = false;
            TextBox6.Visible = false;
            GridView2.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = true;
        }
    }

    protected void GridView4_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void GridView5_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}