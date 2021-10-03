<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/會員專區/MasterPage.master" AutoEventWireup="true" CodeFile="線上預約.aspx.cs" Inherits="會員專區_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        h1 {text-align:center; font-family:"微軟正黑體"}
              
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>《線上預約》</h1>
    <h2 align="center">預約表單</h2>
    <div align="center">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [會員編號], [姓名], [身分證字號], [連絡電話], [行動電話] FROM [會員] WHERE ([身分證字號] = @身分證字號)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label7" Name="身分證字號" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="會員編號" DataSourceID="SqlDataSource1" Visible="False" Width="610px">
            <Columns>
                <asp:BoundField DataField="會員編號" HeaderText="會員編號" InsertVisible="False" ReadOnly="True" SortExpression="會員編號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="身分證字號" HeaderText="身分證字號" SortExpression="身分證字號" />
                <asp:BoundField DataField="連絡電話" HeaderText="連絡電話" SortExpression="連絡電話" HtmlEncode="False" />
                <asp:BoundField DataField="行動電話" HeaderText="行動電話" SortExpression="行動電話" HtmlEncode="False" />
            </Columns>
        </asp:GridView>

    </div>
    <div style="margin-left:11.5cm">
    <p>
        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*為必填項目"></asp:Label>
    </p>
    <p>
        會員編號：<asp:Label ID="Label9" runat="server"></asp:Label>
    </p>
    <p>
        身分證字號：<asp:Label ID="Label10" runat="server"></asp:Label>
    </p>
    <p>
        姓名：<asp:Label ID="Label11" runat="server"></asp:Label>
    </p>
    <p>
        連絡電話：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="請輸入電話!" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        預約日期：<asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="請輸入預約日期!" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    </p>
    <p>
        預約時段：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="18px" Width="112px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="-1">請選擇</asp:ListItem>
            <asp:ListItem>8:30~10:00</asp:ListItem>
            <asp:ListItem>10:00~12:00</asp:ListItem>
            <asp:ListItem>13:00~16:00</asp:ListItem>
            <asp:ListItem>16:00~19:00</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="請選擇預約時段!" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
    </p>
    <p>
        預約項目：<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="套餐名稱" DataValueField="套餐名稱">
        </asp:DropDownList>
        <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList2" ErrorMessage="請選擇預約項目!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [套餐名稱] FROM [檢驗套餐]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button5" runat="server" Text="送出" OnClick="Button5_Click" />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [預約編號], [會員編號], [姓名], [連絡電話], [預約日期], [預約時段], [預約項目] FROM [預約表單]" InsertCommand="INSERT INTO 預約表單(會員編號, 姓名, 連絡電話, 預約日期, 預約時段, 預約項目) VALUES (@會員編號, @姓名, @連絡電話, convert(datetime, @預約日期, 111), @預約時段, @預約項目)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Label9" Name="會員編號" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label11" Name="姓名" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="連絡電話" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="預約日期" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="預約時段" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="預約項目" PropertyName="SelectedValue" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        《您已預約》</p>
<p>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [預約日期], [預約時段], [預約項目] FROM [預約表單] WHERE ([姓名] = @姓名) ORDER BY [預約日期], [預約時段] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label8" Name="姓名" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" Width="464px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="預約日期" DataFormatString="{0:d}" HeaderText="預約日期" SortExpression="預約日期" />
                <asp:BoundField DataField="預約時段" HeaderText="預約時段" SortExpression="預約時段" />
                <asp:BoundField DataField="預約項目" HeaderText="預約項目" SortExpression="預約項目" />
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
    <p>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [預約編號], [預約日期], [預約時段] FROM [預約表單] ORDER BY [預約日期], [預約時段] DESC"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="預約編號" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" Visible="False">
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

