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

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox2.Text;
    }

    protected void DetailsView1_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void DetailsView2_DataBound(object sender, EventArgs e)
    {
        GridView2.DataBind();
    }
}