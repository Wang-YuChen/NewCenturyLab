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



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

        if (DropDownList1.SelectedValue == "預約編號")
        {
            TextBox1.Visible = true;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            Label6.Visible = false;
            GridView2.Visible = true;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "會員編號")
        {
            TextBox1.Visible = false;
            TextBox2.Visible = true;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            Label6.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = true;
            GridView4.Visible = false;
            GridView5.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "姓名")
        {
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = true;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            Label6.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = true;
            GridView5.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "預約日期")
        {
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            Label6.Visible = true;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = true;
        }

    }

    protected void GridView2_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
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