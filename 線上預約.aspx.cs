using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
        if (!IsPostBack)
        {
            GridView1.DataBind();
        }



    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource3.Insert();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        RadioButtonList1.SelectedIndex = -1;
        DropDownList8.SelectedIndex = -1;
        DropDownList9.SelectedIndex = -1;

        GridView1.DataBind();
    }







    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {

        DateTime date = Convert.ToDateTime(TextBox4.Text);
        string daTe = date.Year + "/" + date.Month + "/" + date.Day; //組出日期

        foreach (TableRow R in GridView1.Rows)
        {
            if (daTe == R.Cells[1].Text && DropDownList8.SelectedValue == R.Cells[2].Text)
            {
                Response.Write("<script language=javascript>alert('您填入的預約時間已有人預約，請重新輸入!')</script>");
                //Label11.Text = "您填入的預約時間已有人預約，請重新輸入!";
                //Label11.ForeColor = System.Drawing.Color.Red;
                //Button2.Visible = false;
                TextBox4.Text = "";
                DropDownList8.SelectedIndex = -1;

                break;
            }
            else
            {
                continue;
            }
        }

    }
}