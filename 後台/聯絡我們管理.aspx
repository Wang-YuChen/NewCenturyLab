<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/後台/MasterPage.master" AutoEventWireup="true" CodeFile="聯絡我們管理.aspx.cs" Inherits="後台_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        #pcenter {text-align:center; font-family:"微軟正黑體";font-size:larger}
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p id="pcenter">《聯絡我們管理》</p>
    <div>
        <p>＊Q&A管理</p>
        
        <p>
            以 
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>編號</asp:ListItem>
                <asp:ListItem>留言時間</asp:ListItem>
                <asp:ListItem>回覆內容</asp:ListItem>
            </asp:DropDownList>
&nbsp;查詢：
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="至" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查詢" OnClick="Button1_Click" />
        </p>
        <p>
            <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnDataBound="GridView3_DataBound" Width="888px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [QandA] WHERE [編號] = @編號" InsertCommand="INSERT INTO [QandA] ([姓名], [問題標題], [問題內容], [留言時間], [回覆內容], [回覆時間]) VALUES (@姓名, @問題標題, @問題內容, @留言時間, @回覆內容, @回覆時間)" SelectCommand="SELECT * FROM [QandA] WHERE ([留言時間] &gt;= @留言時間1 AND [留言時間] &lt;= @留言時間2)" UpdateCommand="UPDATE [QandA] SET [姓名] = @姓名, [問題標題] = @問題標題, [問題內容] = @問題內容, [留言時間] = @留言時間, [回覆內容] = @回覆內容, [回覆時間] = @回覆時間 WHERE [編號] = @編號">
                <DeleteParameters>
                    <asp:Parameter Name="編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="問題標題" Type="String" />
                    <asp:Parameter Name="問題內容" Type="String" />
                    <asp:Parameter Name="留言時間" Type="DateTime" />
                    <asp:Parameter Name="回覆內容" Type="String" />
                    <asp:Parameter Name="回覆時間" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox6" Name="留言時間1" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="TextBox8" Name="留言時間2" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="問題標題" Type="String" />
                    <asp:Parameter Name="問題內容" Type="String" />
                    <asp:Parameter Name="留言時間" Type="DateTime" />
                    <asp:Parameter Name="回覆內容" Type="String" />
                    <asp:Parameter Name="回覆時間" Type="DateTime" />
                    <asp:Parameter Name="編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="編號" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" OnDataBound="GridView4_DataBound" Visible="False" Width="885px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="問題標題" HeaderText="問題標題" SortExpression="問題標題" />
                    <asp:BoundField DataField="問題內容" HeaderText="問題內容" SortExpression="問題內容" />
                    <asp:BoundField DataField="留言時間" HeaderText="留言時間" SortExpression="留言時間" />
                    <asp:BoundField DataField="回覆內容" HeaderText="回覆內容" SortExpression="回覆內容" />
                    <asp:BoundField DataField="回覆時間" HeaderText="回覆時間" SortExpression="回覆時間" />
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
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [QandA] WHERE [編號] = @編號" InsertCommand="INSERT INTO [QandA] ([姓名], [問題標題], [問題內容], [留言時間], [回覆內容], [回覆時間]) VALUES (@姓名, @問題標題, @問題內容, @留言時間, @回覆內容, @回覆時間)" SelectCommand="SELECT * FROM [QandA] WHERE ([回覆內容] LIKE '%' + @回覆內容 + '%')" UpdateCommand="UPDATE [QandA] SET [姓名] = @姓名, [問題標題] = @問題標題, [問題內容] = @問題內容, [留言時間] = @留言時間, [回覆內容] = @回覆內容, [回覆時間] = @回覆時間 WHERE [編號] = @編號">
                <DeleteParameters>
                    <asp:Parameter Name="編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="問題標題" Type="String" />
                    <asp:Parameter Name="問題內容" Type="String" />
                    <asp:Parameter Name="留言時間" Type="DateTime" />
                    <asp:Parameter Name="回覆內容" Type="String" />
                    <asp:Parameter Name="回覆時間" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox7" Name="回覆內容" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="問題標題" Type="String" />
                    <asp:Parameter Name="問題內容" Type="String" />
                    <asp:Parameter Name="留言時間" Type="DateTime" />
                    <asp:Parameter Name="回覆內容" Type="String" />
                    <asp:Parameter Name="回覆時間" Type="DateTime" />
                    <asp:Parameter Name="編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="編號" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Vertical" OnDataBound="GridView5_DataBound" Visible="False" Width="880px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="問題標題" HeaderText="問題標題" SortExpression="問題標題" />
                    <asp:BoundField DataField="問題內容" HeaderText="問題內容" SortExpression="問題內容" />
                    <asp:BoundField DataField="留言時間" HeaderText="留言時間" SortExpression="留言時間" />
                    <asp:BoundField DataField="回覆內容" HeaderText="回覆內容" SortExpression="回覆內容" />
                    <asp:BoundField DataField="回覆時間" HeaderText="回覆時間" SortExpression="回覆時間" />
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
        <p>＊填寫回覆：</p>
        <p>留言編號 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
        <p>回覆內容</p>
        <p>&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="48px" TextMode="MultiLine" Width="184px"></asp:TextBox></p>
        <p>
            <asp:Button ID="Button7" runat="server" Text="新增回覆" OnClick="Button7_Click" />
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [QandA] WHERE [編號] = @編號" InsertCommand="INSERT INTO [QandA] ([姓名], [問題標題], [問題內容], [留言時間], [回覆內容], [回覆時間]) VALUES (@姓名, @問題標題, @問題內容, @留言時間, @回覆內容, @回覆時間)" SelectCommand="SELECT [編號], [姓名], [問題標題], [問題內容], [留言時間], [回覆內容], [回覆時間] FROM [QandA] WHERE (編號 = @編號)" UpdateCommand="UPDATE [QandA] SET [回覆內容] = @回覆內容, [回覆時間] = GETDATE() WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="問題標題" Type="String" />
                <asp:Parameter Name="問題內容" Type="String" />
                <asp:Parameter Name="留言時間" Type="DateTime" />
                <asp:Parameter Name="回覆內容" Type="String" />
                <asp:Parameter Name="回覆時間" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="編號" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="問題標題" Type="String" />
                <asp:Parameter Name="問題內容" Type="String" />
                <asp:Parameter Name="留言時間" Type="DateTime" />
                <asp:ControlParameter ControlID="TextBox3" Name="回覆內容" PropertyName="Text" Type="String" />
                <asp:Parameter Name="回覆時間" Type="DateTime" />
                <asp:ControlParameter ControlID="TextBox2" Name="編號" PropertyName="Text" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [QandA] ORDER BY [編號] DESC"></asp:SqlDataSource>
        <br />
        <p>＊留言總覽：</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="編號" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="問題標題" HeaderText="問題標題" SortExpression="問題標題" />
                <asp:BoundField DataField="問題內容" HeaderText="問題內容" SortExpression="問題內容" />
                <asp:BoundField DataField="留言時間" HeaderText="留言時間" SortExpression="留言時間" />
                <asp:BoundField DataField="回覆內容" HeaderText="回覆內容" SortExpression="回覆內容" />
                <asp:BoundField DataField="回覆時間" HeaderText="回覆時間" SortExpression="回覆時間" />
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
    <div>
        <p>＊常見問題管理</p>
        <p>標題：<asp:TextBox ID="TextBox4" runat="server" Width="216px"></asp:TextBox>
        </p>
        <p>內容：<asp:TextBox ID="TextBox5" runat="server" Height="71px" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="新增" />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [常見問題] WHERE [編號] = @編號" InsertCommand="INSERT INTO [常見問題] ([標題], [內容]) VALUES (@標題, @內容)" SelectCommand="SELECT * FROM [常見問題]" UpdateCommand="UPDATE [常見問題] SET [標題] = @標題, [內容] = @內容 WHERE [編號] = @編號">
                <DeleteParameters>
                    <asp:Parameter Name="編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="標題" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="內容" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="標題" Type="String" />
                    <asp:Parameter Name="內容" Type="String" />
                    <asp:Parameter Name="編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="標題" HeaderText="標題" SortExpression="標題" />
                <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [常見問題] WHERE [編號] = @編號" InsertCommand="INSERT INTO [常見問題] ([標題], [內容]) VALUES (@標題, @內容)" SelectCommand="SELECT * FROM [常見問題]" UpdateCommand="UPDATE [常見問題] SET [標題] = @標題, [內容] = @內容 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="內容" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="標題" Type="String" />
                <asp:Parameter Name="內容" Type="String" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

