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

    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text;
    }

    protected void DetailsView2_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }


    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        FileUpload fup1 = (FileUpload)FormView1.FindControl("FileUpload1");
        if (fup1.HasFile)
            fup1.SaveAs(Server.MapPath("~/檢驗報告/") + fup1.FileName);
        else
        {
            Image img2 = (Image)FormView1.FindControl("Image2");
            String filename = img2.ImageUrl.ToString();
            Char delimiter = '/';
            String[] substrings = filename.Split(delimiter);
            SqlDataSource5.UpdateParameters["檢驗報告"].DefaultValue = substrings[1];
        }
    }

    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        FileUpload fup2 = (FileUpload)FormView1.FindControl("FileUpload2");
        if (fup2.HasFile)
            fup2.SaveAs(Server.MapPath("~/檢驗報告/") + fup2.FileName);
        else
            e.Cancel = true;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "xxx", "alert('更新成功!')", true);
    }

    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        GridView2.DataBind();
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile)
        {
            String fileName = FileUpload3.FileName;
            FileUpload3.SaveAs(Server.MapPath("~/檢驗報告/") + FileUpload3.FileName);
        }

        SqlDataSource4.Insert();
        GridView2.DataBind();

        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";

        if (DropDownList1.SelectedValue == "會員編號")
        {
            TextBox1.Visible = true;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            DetailsView2.Visible = true;
            DetailsView3.Visible = false;
            DetailsView4.Visible = false;
            DetailsView5.Visible = false;
            DetailsView6.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "姓名")
        {
            TextBox1.Visible = false;
            TextBox5.Visible = true;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            DetailsView2.Visible = false;
            DetailsView3.Visible = true;
            DetailsView4.Visible = false;
            DetailsView5.Visible = false;
            DetailsView6.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "身份證字號")
        {
            TextBox1.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = true;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            DetailsView2.Visible = false;
            DetailsView3.Visible = false;
            DetailsView4.Visible = true;
            DetailsView5.Visible = false;
            DetailsView6.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "性別")
        {
            TextBox1.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = true;
            TextBox8.Visible = false;
            DetailsView2.Visible = false;
            DetailsView3.Visible = false;
            DetailsView4.Visible = false;
            DetailsView5.Visible = true;
            DetailsView6.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "生日")
        {
            TextBox1.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = true;
            DetailsView2.Visible = false;
            DetailsView3.Visible = false;
            DetailsView4.Visible = false;
            DetailsView5.Visible = false;
            DetailsView6.Visible = true;
        }
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        if (TextBox9.Text != null)
        {
            TextBox9.Text = TextBox9.Text;
        }
    }

    protected void DetailsView3_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void DetailsView4_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void DetailsView5_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void DetailsView6_DataBound(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}