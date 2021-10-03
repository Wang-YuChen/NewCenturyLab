<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="檢驗所資訊.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
       <h1 style="text-align:left">檢驗所資訊</h1>
   </div>
        
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [相關資訊] FROM [相關資訊]"></asp:SqlDataSource>
    <br />
    <br />
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" ShowHeader="False" Width="399px">
            <Columns>
                <asp:TemplateField HeaderText="相關資訊" SortExpression="相關資訊">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("相關資訊") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="16pt" ForeColor="#003366" Text='<%# Bind("相關資訊") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3621.4929352146423!2d120.95622841380958!3d24.812810853279153!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x346835bbd0f5ea65%3A0xe9e2c3361a1c50d2!2zMzAw5paw56u55biC5YyX5Y2A56u55YWJ6LevMTQ26Jmf!5e0!3m2!1szh-TW!2stw!4v1507019713071" width="450" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
        <br />

    </div>

</asp:Content>

