using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

   


    protected void Button2_Click(object sender, EventArgs e)
    {

        
        double weight, length;
        length = Convert.ToDouble(TextBox1.Text);
        weight = Convert.ToDouble(TextBox2.Text);
        double bmi;
        bmi = weight / ((length / 100) * (length / 100));

       
        if (bmi >= 35)
            Label8.Text = "你輸入的數值<br><br>" + "身高:" + TextBox1.Text + "公分" + "<br><br>"
            + "體重:" + TextBox2.Text + "公斤" + "<br><br>" + "BMI值:" + bmi.ToString("f2")+"<br><br>" + "你是重度肥胖!! 該減肥囉!!!!";
        else if(bmi >= 30 )
            Label8.Text = "你輸入的數值<br><br>" + "身高:" + TextBox1.Text + "公分" + "<br><br>"
            + "體重:" + TextBox2.Text + "公斤" + "<br><br>" + "BMI值:" + bmi.ToString("f2") + "<br><br>" + "你是中度肥胖!! 起來動一動吧!!!";
        else if (bmi >= 27)
            Label8.Text = "你輸入的數值<br><br>" + "身高:" + TextBox1.Text + "公分" + "<br><br>"
            + "體重:" + TextBox2.Text + "公斤" + "<br><br>" + "BMI值:" + bmi.ToString("f2") + "<br><br>" + "你是輕度肥胖!! 跟著老師動次動!!!";
        else if (bmi >= 24)
            Label8.Text = "你輸入的數值<br><br>" + "身高:" + TextBox1.Text + "公分" + "<br><br>"
            + "體重:" + TextBox2.Text + "公斤" + "<br><br>" + "BMI值:" + bmi.ToString("f2") + "<br><br>" + "你是稍重!! 快離瘦子不遠了!!!";
        else if (bmi >= 18.5)
            Label8.Text = "你輸入的數值<br><br>" + "身高:" + TextBox1.Text + "公分" + "<br><br>"
            + "體重:" + TextBox2.Text + "公斤" + "<br><br>" + "BMI值:" + bmi.ToString("f2") + "<br><br>" + "你是適中!! 唉喲!!不錯喔!!!";
        else if (bmi<18.5)
            Label8.Text = "你輸入的數值<br><br>" + "身高:" + TextBox1.Text + "公分" + "<br><br>"
            + "體重:" + TextBox2.Text + "公斤" + "<br><br>" + "BMI值:" + bmi.ToString("f2") + "<br><br>" + "你是體重過輕!! 多吃點!!好嗎??!";
        
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label8.Text = "";
    }
}