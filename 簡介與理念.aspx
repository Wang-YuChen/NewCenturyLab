<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="簡介與理念.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">簡介與理念</h1>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [簡介] FROM [簡介與理念]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowHeader="False" Width="425px" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="簡介" SortExpression="簡介">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("簡介") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Font-Names="微軟正黑體" Font-Size="16pt" ForeColor="#003366" Text='<%# Bind("簡介") %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [理念] FROM [簡介與理念]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="424px" GridLines="None" ShowHeader="False">
        <Columns>
            <asp:TemplateField HeaderText="理念" SortExpression="理念">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("理念") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Font-Names="微軟正黑體" Font-Size="16pt" ForeColor="Maroon" Text='<%# Bind("理念") %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [公益] FROM [簡介與理念]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="423px" GridLines="None" ShowHeader="False">
        <Columns>
            <asp:TemplateField HeaderText="公益" SortExpression="公益">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("公益") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Font-Names="微軟正黑體" Font-Size="16pt" ForeColor="#003366" Text='<%# Bind("公益") %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [榮耀] FROM [簡介與理念]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" GridLines="None" ShowHeader="False" Width="421px">
        <Columns>
            <asp:TemplateField HeaderText="榮耀" SortExpression="榮耀">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("榮耀") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Font-Names="微軟正黑體" Font-Size="16pt" ForeColor="Maroon" Text='<%# Bind("榮耀") %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/image/獎狀02.JPG" Width="400px" />
    <br />
    <br />
    <asp:Image ID="Image4" runat="server" ImageUrl="~/image/獎狀01.JPG" Width="400px" />
</asp:Content>

