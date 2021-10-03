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

    }

    

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        foreach (TableRow R in GridView1.Rows)
        {
            if (Login1.UserName == R.Cells[0].Text && Login1.Password == R.Cells[1].Text)
            {
                Session["reID"] = R.Cells[0].Text;
                Session["reName"] = R.Cells[1].Text;
                Response.Write("<script language=javascript>alert('驗證成功，請修改您的密碼!')</script>");
                Response.Write("<script language=javascript>window.location.href='忘記密碼修改頁.aspx'</script>");


            }
            else if (R.Cells != null)
            {
                continue;
            }

        }
    }
}