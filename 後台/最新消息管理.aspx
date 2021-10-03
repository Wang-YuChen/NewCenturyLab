<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/後台/MasterPage.master" AutoEventWireup="true" CodeFile="最新消息管理.aspx.cs" Inherits="後台_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        p {text-align:center; font-family:"微軟正黑體"}
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>最新消息管理<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [最新消息]" InsertCommand="INSERT INTO [最新消息] ([標題], [內容], [時間]) VALUES (@標題, @內容, GETDATE())">
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="標題" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="內容" PropertyName="Text" />
        </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <div>

        以 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>編號</asp:ListItem>
            <asp:ListItem>標題關鍵字</asp:ListItem>
            <asp:ListItem>時間</asp:ListItem>
        </asp:DropDownList> &nbsp;查詢：

        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="至" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="查詢" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [最新消息] WHERE [編號] = @編號" InsertCommand="INSERT INTO [最新消息] ([標題], [內容], [時間]) VALUES (@標題, @內容, @時間)" SelectCommand=" SELECT * FROM [最新消息] WHERE([編號]=@編號)" UpdateCommand="UPDATE [最新消息] SET [標題] = @標題, [內容] = @內容, [時間] = @時間 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="內容" Type="String" />
                <asp:Parameter Name="時間" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="編號" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="內容" Type="String" />
                <asp:Parameter Name="時間" Type="DateTime" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource2" OnDataBound="GridView2_DataBound" Width="686px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="標題" HeaderText="標題" SortExpression="標題" />
                <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
                <asp:BoundField DataField="時間" HeaderText="時間" SortExpression="時間" />
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

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [最新消息] WHERE [編號] = @編號" InsertCommand="INSERT INTO [最新消息] ([標題], [內容], [時間]) VALUES (@標題, @內容, @時間)" SelectCommand="SELECT * FROM [最新消息] WHERE ([標題] LIKE '%' + @標題 + '%')" UpdateCommand="UPDATE [最新消息] SET [標題] = @標題, [內容] = @內容, [時間] = @時間 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="內容" Type="String" />
                <asp:Parameter Name="時間" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox6" Name="標題" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="內容" Type="String" />
                <asp:Parameter Name="時間" Type="DateTime" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource4" OnDataBound="GridView4_DataBound" Width="680px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="標題" HeaderText="標題" SortExpression="標題" />
                <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
                <asp:BoundField DataField="時間" HeaderText="時間" SortExpression="時間" />
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
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [最新消息] WHERE [編號] = @編號" InsertCommand="INSERT INTO [最新消息] ([標題], [內容], [時間]) VALUES (@標題, @內容, @時間)" SelectCommand="SELECT * FROM [最新消息] WHERE ([時間] &gt;= @時間1 AND [時間] &lt;= @時間2)" UpdateCommand="UPDATE [最新消息] SET [標題] = @標題, [內容] = @內容, [時間] = @時間 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="內容" Type="String" />
                <asp:Parameter Name="時間" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox7" Name="時間1" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="TextBox8" Name="時間2" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="內容" Type="String" />
                <asp:Parameter Name="時間" Type="DateTime" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource5" OnDataBound="GridView5_DataBound" Width="676px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="標題" HeaderText="標題" SortExpression="標題" />
                <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
                <asp:BoundField DataField="時間" HeaderText="時間" SortExpression="時間" />
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

    </div>
    <div>＊最新消息總覽</div>
    <p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [新聞] WHERE [編號] = @編號" InsertCommand="INSERT INTO [新聞] ([標題], [連結]) VALUES (@標題, @連結)" SelectCommand="SELECT * FROM [新聞]" UpdateCommand="UPDATE [新聞] SET [標題] = @標題, [連結] = @連結 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="標題" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="連結" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="連結" Type="String" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource1" Width="744px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="標題" HeaderText="標題" SortExpression="標題" />
                <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
                <asp:BoundField DataField="時間" HeaderText="時間" SortExpression="時間" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </p>
    <div>＊新聞連結總覽</div>
    <p>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="標題" HeaderText="標題" SortExpression="標題" />
                <asp:BoundField DataField="連結" HeaderText="連結" SortExpression="連結" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </p>
    <h5>新增最新消息</h5>
    <asp:Label ID="Label1" runat="server" Text="標題："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="內容："></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Height="48px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button9" runat="server" Text="新增" OnClick="Button9_Click" />
    <br />
    <br />
    <h5>新增新聞連結</h5>
    <br />
    <asp:Label ID="Label6" runat="server" Text="標題："></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="連結："></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button11" runat="server" Text="新增" OnClick="Button11_Click" />
    </asp:Content>

