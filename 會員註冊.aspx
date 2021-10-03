<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="會員註冊.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">會員註冊</h1>
    <p>
        <asp:Label ID="Label1" runat="server" Text="*為必填項目" ForeColor="Red"></asp:Label></p>
    <p>
        身分證字號(帳號)：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="請輸入身分證字號!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="身分證字號格式錯誤!" ForeColor="Red" ValidationExpression="[A-Z][12]\d{8}"></asp:RegularExpressionValidator>
    </p>
    <p>
        密碼：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red"></asp:Label>
        (8-12碼，可包含英數字)<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="請輸入密碼!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密碼格式不符!" ForeColor="Red" ValidationExpression="([a-zA-Z]|[0-9]){8,12}"></asp:RegularExpressionValidator>
    </p>
    <p>
        確認密碼：<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="請輸入密碼!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox9" ErrorMessage="密碼不一致!" ForeColor="Red"></asp:CompareValidator>
    </p>
    <p>
        姓名：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="請輸入姓名!" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        性別：<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Value="M">男</asp:ListItem>
            <asp:ListItem Value="F">女</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        生日：<asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
    </p>
    <p>
        連絡電話：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </p>
    <p>
        行動電話：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </p>
    <p>
        住址：<asp:TextBox ID="TextBox7" runat="server" Width="366px"></asp:TextBox>
    </p>
    <p>
        Email：<asp:TextBox ID="TextBox8" runat="server" Width="337px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" Text="送出" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="清除資料" Visible="False" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO 會員([姓名], [身分證字號], [密碼], [性別], [生日], [連絡電話], [行動電話], [住址], [Email]) VALUES (@姓名, @身分證字號, @密碼, @性別, @生日, @連絡電話, @行動電話, @住址, @Email)" SelectCommand="SELECT * FROM [會員]">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="姓名" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="身分證字號" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="密碼" PropertyName="Text" />
                <asp:ControlParameter ControlID="RadioButtonList1" Name="性別" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox4" Name="生日" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="連絡電話" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox6" Name="行動電話" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox7" Name="住址" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox8" Name="Email" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

