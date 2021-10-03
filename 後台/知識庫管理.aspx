<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/後台/MasterPage.master" AutoEventWireup="true" CodeFile="知識庫管理.aspx.cs" Inherits="後台_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        #pcenter {text-align:center; font-family:"微軟正黑體";font-size:larger}
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p id="pcenter">《知識庫管理》</p>
    <div>
        <p>＊健康OX管理</p>
        <asp:Label ID="Label1" runat="server" Text="題目："></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="80px" TextMode="MultiLine" Width="216px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="答案："></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="解析："></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="96px" TextMode="MultiLine" Width="271px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="新增" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [知識庫] WHERE [編號] = @編號" InsertCommand="INSERT INTO [知識庫] ([問題], [答案], [解析]) VALUES (@問題, @答案, @解析)" SelectCommand="SELECT * FROM [知識庫]" UpdateCommand="UPDATE [知識庫] SET [問題] = @問題, [答案] = @答案, [解析] = @解析 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="問題" Type="String" />
                <asp:Parameter Name="答案" Type="String" />
                <asp:Parameter Name="解析" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="問題" Type="String" />
                <asp:Parameter Name="答案" Type="String" />
                <asp:Parameter Name="解析" Type="String" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource1" Width="377px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="問題" HeaderText="問題" SortExpression="問題" />
                <asp:BoundField DataField="答案" HeaderText="答案" SortExpression="答案" />
                <asp:BoundField DataField="解析" HeaderText="解析" SortExpression="解析" />
            </Columns>
        </asp:GridView>
         <br />
       
       
        <br />
       

    </div>
</asp:Content>

