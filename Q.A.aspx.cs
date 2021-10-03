using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        FormView2.Visible = false;

        Label6.Text = "[↑請選擇欲觀看的留言]";

        if (FormView1.Visible == true)
        {
            FormView2.Visible = true;
        }
    }

    

    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource2.Insert();
        GridView1.DataBind();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Label8.Text = "新增成功!";
        
    }
}