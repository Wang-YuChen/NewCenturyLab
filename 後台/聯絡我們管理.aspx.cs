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
        GridView1.DataBind();
    }

    

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
        GridView1.DataBind();
        GridView3.DataBind();
        GridView4.DataBind();
        GridView5.DataBind();

        TextBox2.Text = "";
        TextBox3.Text = "";
        Label2.Text = "新增成功!";
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text;
        Label2.Text = "";
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        SqlDataSource4.Insert();
        GridView2.DataBind();

        TextBox4.Text = "";
        TextBox5.Text = "";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";

        if (DropDownList1.SelectedValue == "編號")
        {
            TextBox1.Visible = true;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            Label6.Visible = false;
            GridView3.Visible = true;
            GridView4.Visible = false;
            GridView5.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "留言時間")
        {
            TextBox1.Visible = false;
            TextBox6.Visible = true;
            TextBox7.Visible = false;
            TextBox8.Visible = true;
            Label6.Visible = true;
            GridView3.Visible = false;
            GridView4.Visible = true;
            GridView5.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "回覆內容")
        {
            TextBox1.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = true;
            TextBox8.Visible = false;
            Label6.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = true;
        }

    }

    protected void GridView3_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
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