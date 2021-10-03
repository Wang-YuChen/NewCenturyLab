using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = "您的答案為：" + RadioButtonList1.SelectedItem.Text + "<BR/>" + "正確答案是O，接近睡眠時間之前，體溫會稍微下降，提醒你應該上床睡覺；且辛辣食物會讓你反應變得遲緩，體溫上升，讓你更難入眠或無法一覺到天亮；辛辣食物對消化系統會造成負擔，像酒精一樣造成睡眠中斷等等。";
        if (RadioButtonList1.SelectedItem.Text == "O")
            total = total + 5;
    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label4.Text = "您的答案為：" + RadioButtonList2.SelectedItem.Text + "<BR/>" + "正確答案是X，糖分只能短暫補充精力，糖分過高反而會讓你注意力降低，反應時間變慢，最後又會感到昏昏欲睡。少量、有規律的攝取咖啡因才是上策，例如每小時喝四分之一杯的咖啡，絕對能讓你整天注意力集中，減少「當機」的機率。至於糖分而言，節制一點為上策。";
        if (RadioButtonList2.SelectedItem.Text == "X")
            total = total + 5;
    }

    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label6.Text = "您的答案為：" + RadioButtonList3.SelectedItem.Text + "<BR/>" + "正確答案是X，打噴嚏，是我們抵抗感染的第一道防線，忍住噴嚏對身體沒有益處，因為噴嚏的壓力會對血管產生壓力或讓耳朵、鼻竇受到傷害。";
        if (RadioButtonList3.SelectedItem.Text == "X")
            total = total + 5;
    }

    protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label8.Text = "您的答案為：" + RadioButtonList4.SelectedItem.Text + "<BR/>" + "正確答案是X，雙氧水只有輕微的殺菌功效，只會讓傷口周圍健康的細胞產生紅腫，延遲復原時間，抗生素藥膏最快讓傷口復原，雙氧水則無法抑制細菌生長。";
        if (RadioButtonList4.SelectedItem.Text == "X")
            total = total + 5;
    }

    protected void RadioButtonList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label10.Text = "您的答案為：" + RadioButtonList5.SelectedItem.Text + "<BR/>" + "正確答案是X，適量適當的酒精飲料會讓你在冬天感到溫暖，但它無法讓身體維持長久的暖和，不久後，體內溫度還是會急速下降，產生失溫現象。喝酒會增加流到皮膚的血液(身體覺得緩和)，讓身體內在溫度瞬間下降。酒精讓身體失溫情況急速惡化的主因在於人體失去增加溫度的機制—「打顫」。";
        if (RadioButtonList5.SelectedItem.Text == "X")
            total = total + 5;
    }

    protected void RadioButtonList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label12.Text = "您的答案為：" + RadioButtonList6.SelectedItem.Text + "<BR/>" + "正確答案是X，這動作可能會引起血液嗆入肺中，甚至窒息，甚至讓血液迴流到胃部，對胃部產生刺激。最正確的緊急處理方式為坐下來，頭往前傾，讓頭保持在心臟上方，減少血流暈。頭往前傾可清空食道，讓鼻腔的血液流出。";
        if (RadioButtonList6.SelectedItem.Text == "X")
            total = total + 5;
    }

    protected void RadioButtonList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label14.Text = "您的答案為：" + RadioButtonList7.SelectedItem.Text + "<BR/>" + "正確答案是X，太常梳頭會刺激頭皮上的皮脂腺，如果本來就是油性髮質的人，那麼就應該要盡量避免梳頭，而屬於乾性的頭髮則會更滑亮、更堅韌。每天梳頭100下對於長頭髮的人特別值得推薦，而且要梳到髮尾，不過只能用天然鬃毛製成的梳子來梳頭，否則，太頻繁的梳理帶給頭髮的傷害會比好處還要多。";
        if (RadioButtonList7.SelectedItem.Text == "X")
            total = total + 5;
    }

    protected void RadioButtonList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label16.Text = "您的答案為：" + RadioButtonList8.SelectedItem.Text + "<BR/>" + "正確答案是X，人類的胃裡本來就含有消化食物的胃酸，因此我們的胃並不會因為酸性物質而受到傷害。";
        if (RadioButtonList8.SelectedItem.Text == "X")
            total = total + 5;
    }

    protected void RadioButtonList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label18.Text = "您的答案為：" + RadioButtonList9.SelectedItem.Text + "<BR/>" + "正確答案是X，汗水原來是沒有味道的，否則洗三溫暖的時候，每個人都要在鼻子上夾一個曬衣夾了。不過汗水中含有很多有機物質，這些物質對細菌而言都是養分；當細菌開始分解汗液時，才會產生氣味難聞的排泄物，而這些排泄物就是汗臭味的來源。";
        if (RadioButtonList9.SelectedItem.Text == "X")
            total = total + 5;
    }

    protected void RadioButtonList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label20.Text = "您的答案為：" + RadioButtonList10.SelectedItem.Text + "<BR/>" + "正確答案是O，淡黃澄澈透亮無疑是健康小便的重要標準。但尿液渾濁也不必過於擔心。尤其天氣涼時，尿液放置一會兒後容易變得渾濁，甚至放久後，尿盆底部還會出現白色沉渣，這往往是尿液析出了鹽類結晶，它與腎臟病無關。";
        if (RadioButtonList10.SelectedItem.Text == "X")
            total = total + 5;
    }
    //if (RadioButtonList1.SelectedItem != null && RadioButtonList2.SelectedItem != null && RadioButtonList3.SelectedItem != null && RadioButtonList4.SelectedItem != null && RadioButtonList5.SelectedItem != null && RadioButtonList6.SelectedItem != null && RadioButtonList7.SelectedItem != null && RadioButtonList8.SelectedItem != null && RadioButtonList9.SelectedItem != null && RadioButtonList10.SelectedItem != null)
    //{
    //    Label21.Text = "您的總分為： " + total;
    //}
    
}