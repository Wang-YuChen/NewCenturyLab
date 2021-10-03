using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 會員專區_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["id"].ToString();
        if (GridView1.Rows.Count == 0)
            Label2.Text = "尚無檢驗資料";


    }
}