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
        { Label7.Text = Session["id"].ToString(); }

        if (Session["name"] != null)
        { Label8.Text = Session["name"].ToString(); }

        Label9.Text = GridView1.Rows[0].Cells[0].Text;
        Label10.Text = GridView1.Rows[0].Cells[2].Text;
        Label11.Text = GridView1.Rows[0].Cells[1].Text;

        if (GridView1.Rows[0].Cells[3].Text != "" || GridView1.Rows[0].Cells[4].Text != "") //|| GridView1.Rows[0].Cells[3].Text== "&nbsp;" || GridView1.Rows[0].Cells[4].Text == "&nbsp;"
        {
            if (GridView1.Rows[0].Cells[4].Text != "") //|| GridView1.Rows[0].Cells[4].Text!= "&nbsp;"
                TextBox1.Text = GridView1.Rows[0].Cells[4].Text;
            else
                TextBox1.Text = GridView1.Rows[0].Cells[3].Text;
        }else
        {
            TextBox1.Text = "";
        }


        if(TextBox1.Text== "&nbsp;")
            TextBox1.Text = "";

        GridView1.DataBind();
        GridView2.DataBind();
        if (!IsPostBack)
        {
            GridView3.DataBind();
        }
        

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        

        SqlDataSource3.Insert();
        GridView3.DataBind();
        GridView2.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (TextBox2.Text != "")
        {
            DateTime date = Convert.ToDateTime(TextBox2.Text);
            string daTe = date.Year + "/" + date.Month + "/" + date.Day; //組出日期

            foreach (TableRow R in GridView2.Rows)
            {
                if (daTe == R.Cells[1].Text && DropDownList1.SelectedValue == R.Cells[2].Text)
                {
                    Response.Write("<script language=javascript>alert('您填入的預約時間已有人預約，請重新輸入!')</script>");

                    TextBox2.Text = "";
                    DropDownList1.SelectedIndex = -1;

                    break;
                }
                else
                {
                    continue;
                }
            }
        }
    }
}