<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="忘記密碼修改頁.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">修改密碼</h1>
    <p>

        <asp:Label ID="Label6" runat="server"></asp:Label>

    &nbsp;<asp:Label ID="Label7" runat="server" ForeColor="Blue" Text="，請填入新的密碼。"></asp:Label>

    </p>
    <p>新密碼：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;(8-12碼，可包含英數字)
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="請輸入密碼!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="密碼格式不符!" ForeColor="Red" ValidationExpression="([a-zA-Z]|[0-9]){8,12}"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="修改密碼" />
    </p>
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([身分證字號], [姓名], [密碼]) VALUES (@身分證字號, @姓名, @密碼)" SelectCommand="SELECT [會員編號], [身分證字號], [姓名], [密碼] FROM [會員] WHERE ([姓名] = @姓名)" UpdateCommand="UPDATE [會員] SET [密碼] = @密碼 WHERE [姓名] = @姓名">
            <DeleteParameters>
                <asp:Parameter Name="會員編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="身分證字號" Type="String" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label6" Name="姓名" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="密碼" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label6" Name="姓名" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="會員編號" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="會員編號" HeaderText="會員編號" InsertVisible="False" ReadOnly="True" SortExpression="會員編號" />
                <asp:BoundField DataField="身分證字號" HeaderText="身分證字號" SortExpression="身分證字號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>

