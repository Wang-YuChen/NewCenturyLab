<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="線上預約.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style  type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left" >預約表單</h1>
    <p>
        <asp:Label ID="Label1" runat="server" Text="*為必填項目" ForeColor="Red"></asp:Label></p>
    <div>
        <p >《非會員版》</p>
        <p>姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="請輸入姓名!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>性別：<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Value="M">男</asp:ListItem>
            <asp:ListItem Value="F">女</asp:ListItem>
            </asp:RadioButtonList></p>
        <p>生日：<asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
               

        </p>
        <p>連絡電話：<asp:TextBox ID="TextBox3" runat="server" style="margin-bottom: 0px"></asp:TextBox>
               

            <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="請輸入電話!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="電話格式錯誤!" ForeColor="Red" ValidationExpression="([0-9]){10}"></asp:RegularExpressionValidator>
               

        </p>
        <p>預約日期：<asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
               

            <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="請選擇預約日期!" ForeColor="Red"></asp:RequiredFieldValidator>
               

        </p>
        <p>預約時段：<asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" Height="22px" style="margin-left: 0px" Width="106px" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
            <asp:ListItem Value="-1">請選擇</asp:ListItem>
            <asp:ListItem>8:30~10:00</asp:ListItem>
            <asp:ListItem>10:00~12:00</asp:ListItem>
            <asp:ListItem>13:00~16:00</asp:ListItem>
            <asp:ListItem>16:00~19:00</asp:ListItem>
            </asp:DropDownList>
               

            <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList8" ErrorMessage="請選擇預約時段!" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
               

        </p>
        <p>預約項目：<asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="套餐名稱" DataValueField="套餐名稱">
            </asp:DropDownList>
            <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList9" ErrorMessage="請選擇預約項目!" ForeColor="Red"></asp:RequiredFieldValidator>
               

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [套餐名稱] FROM [檢驗套餐]"></asp:SqlDataSource>
               

        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="送出" OnClick="Button2_Click" />
               

        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [預約編號], [預約日期], [預約時段] FROM [預約表單] ORDER BY [預約日期], [預約時段] DESC"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO 預約表單(姓名, 性別, 生日, 連絡電話, 預約日期, 預約時段, 預約項目) VALUES (@姓名, @性別, convert(datetime, @生日, 111), @連絡電話, convert(datetime, @預約日期, 111), @預約時段, @預約項目)" SelectCommand="SELECT [姓名], [性別], [生日], [連絡電話], [預約日期], [預約時段], [預約項目] FROM [預約表單] ">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="姓名" PropertyName="Text" />
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="性別" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="TextBox2" Name="生日" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="連絡電話" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="預約日期" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList8" Name="預約時段" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList9" Name="預約項目" PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        
        <p>《已預約一覽》</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="預約編號" DataSourceID="SqlDataSource2">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="預約編號" HeaderText="預約編號" InsertVisible="False" ReadOnly="True" SortExpression="預約編號" />
                    <asp:BoundField DataField="預約日期" DataFormatString="{0:d}" HeaderText="預約日期" SortExpression="預約日期" />
                    <asp:BoundField DataField="預約時段" HeaderText="預約時段" SortExpression="預約時段" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </p>
    </div>
    
</asp:Content>

