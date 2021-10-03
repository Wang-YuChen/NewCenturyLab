<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="檢驗套餐.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">檢驗套餐</h1>
    <asp:Label ID="Label1" runat="server" Text="本所考量各式族群需求，提供專業客製化服務，您可依照個人需求選擇檢驗套餐。" Font-Names="微軟正黑體" Font-Size="14pt" ForeColor="#003366"></asp:Label>
    <br /><br />
    <asp:Label ID="Label2" runat="server" Text="檢驗套餐列表如下：" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="15pt" ForeColor="Maroon"></asp:Label>
    <br /><br />
    
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [套餐名稱] FROM [檢驗套餐]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="245px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="套餐名稱" HeaderText="套餐名稱" SortExpression="套餐名稱" />
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
        <asp:Image ID="Image3" runat="server" ImageUrl="~/image/套餐.jpg" Width="700px" />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

