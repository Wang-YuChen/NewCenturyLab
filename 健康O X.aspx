<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="健康O X.aspx.cs" Inherits="_Default"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">健康O或X</h1> 
    <p>
        <asp:Label ID="Label1" runat="server" Text="1. 晚上吃辛辣食物會阻礙睡眠嗎？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label3" runat="server" Text="2. 吃甜點會比咖啡因更能提神嗎？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label5" runat="server" Text="3. 忍住噴嚏是有禮貌且對身體健康沒有影響？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label7" runat="server" Text="4. 雙氧水是治療傷割傷及擦傷的最佳藥品嗎？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label9" runat="server" Text="5. 喝酒能對抗寒冬，暖和身體嗎？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label11" runat="server" Text="6. 流鼻血時，應該將頭往後仰嗎？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList6_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label13" runat="server" Text="7. 每天梳頭100下有益健康？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList7_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label15" runat="server" Text="8. 過酸的食物會造成胃穿孔？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList8_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label17" runat="server" Text="9. 汗是臭的？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList9_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label19" runat="server" Text="10. 健康的尿液是淡黃澄澈透亮的？" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label><br />
        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#990000"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="14pt" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList10_SelectedIndexChanged">
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
    </p>
</asp:Content>

