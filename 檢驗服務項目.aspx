<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="檢驗服務項目.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">檢驗項目</h1>
    <asp:Label ID="Label1" runat="server" Text="本所提供專業細心的檢驗品質，您可依照個人需求選擇檢驗項目。" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label>
    <br /><br />
    <asp:Label ID="Label2" runat="server" Text="檢驗項目列表如下：" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="15pt" ForeColor="Maroon"></asp:Label>
    <br /><br />
    <div style="text-align:center">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [檢驗項目分類], [檢驗項目] FROM [檢驗項目]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="414px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="檢驗項目分類" HeaderText="檢驗項目分類" SortExpression="檢驗項目分類" />
                <asp:BoundField DataField="檢驗項目" HeaderText="檢驗項目" SortExpression="檢驗項目" />
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
        <br />
        
        <asp:Image ID="Image3" runat="server" ImageUrl="~/image/自費檢驗申請單.jpg" Width="700px" />
        <br />

    </div>
</asp:Content>

