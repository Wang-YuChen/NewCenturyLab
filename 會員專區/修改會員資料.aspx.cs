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
        if (Session["id"] != null)
        { Label2.Text = Session["id"].ToString(); }

        

            

    }







    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}