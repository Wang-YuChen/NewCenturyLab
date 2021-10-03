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
    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        GridView3.DataBind();
    }

    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        FileUpload fup2 = (FileUpload)FormView1.FindControl("FileUpload2");
        if (fup2.HasFile)
            fup2.SaveAs(Server.MapPath("~/image/") + fup2.FileName);
        else
            e.Cancel = true;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "xxx", "alert('更新成功!')", true);
    }

    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        FileUpload fup1 = (FileUpload)FormView1.FindControl("FileUpload1");
        if (fup1.HasFile)
            fup1.SaveAs(Server.MapPath("~/image/") + fup1.FileName);
        else
        {
            Image img2 = (Image)FormView1.FindControl("Image2");
            String filename = img2.ImageUrl.ToString();
            Char delimiter = '/';
            String[] substrings = filename.Split(delimiter);
            SqlDataSource4.UpdateParameters["圖片"].DefaultValue = substrings[1];
        }
    }

    protected void FormView3_ItemInserting(object sender, FormViewInsertEventArgs e)
    {

        FileUpload fup4 = (FileUpload)FormView3.FindControl("FileUpload4");
        if (fup4.HasFile)
            fup4.SaveAs(Server.MapPath("~/image/") + fup4.FileName);
        else
            e.Cancel = true;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "xxx", "alert('更新成功!')", true);
    }

    protected void FormView3_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        FileUpload fup3 = (FileUpload)FormView3.FindControl("FileUpload3");
        if (fup3.HasFile)
            fup3.SaveAs(Server.MapPath("~/image/") + fup3.FileName);
        else
        {
            Image img4 = (Image)FormView1.FindControl("Image4");
            String filename = img4.ImageUrl.ToString();
            Char delimiter = '/';
            String[] substrings = filename.Split(delimiter);
            SqlDataSource6.UpdateParameters["圖片"].DefaultValue = substrings[1];
        }
    }
}