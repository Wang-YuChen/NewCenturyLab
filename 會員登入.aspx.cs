using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("會員註冊.aspx");
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        foreach (TableRow R in GridView1.Rows)
        {
            if (Login1.UserName == R.Cells[0].Text && Login1.Password == R.Cells[1].Text)
            {
                    
                    if (R.Cells[3].Text == "管理員")
                    {
                        Session["role"] = R.Cells[3].Text;//記住身分
                        Session["name"] = R.Cells[2].Text;//記住姓名
                        Response.Redirect("~/後台/後台首頁.aspx");

                    }
                    else
                    {
                        Session["role"] = R.Cells[3].Text;//記住身分
                        Session["name"] = R.Cells[2].Text;//記住姓名
                        Session["id"] = R.Cells[0].Text;//記住帳號
                        Response.Redirect("~/會員專區/線上預約.aspx");

                    }

                
            }
            else if (R.Cells != null)
            {
                continue;
            }
            else
            {
                Login1.FailureText = "帳號或密碼輸入錯誤，請重新輸入";

            }

            

        }
        

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("忘記密碼驗證頁.aspx");
    }


}