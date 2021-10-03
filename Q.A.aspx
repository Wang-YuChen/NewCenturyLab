<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Q.A.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        p{color:black}
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">Q&A留言板</h1>
    
    <div style="height: 1027px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [問題標題], [編號] FROM [QandA] ORDER BY [編號] DESC" DeleteCommand="DELETE FROM [QandA] WHERE [編號] = @編號" InsertCommand="INSERT INTO [QandA] ([問題標題]) VALUES (@問題標題)" UpdateCommand="UPDATE [QandA] SET [問題標題] = @問題標題 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="問題標題" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="問題標題" Type="String" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="編號" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" PageSize="5" Height="186px" Width="352px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:BoundField DataField="問題標題" HeaderText="問題標題" SortExpression="問題標題" />
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
        <p><asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label></p>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [QandA] WHERE [編號] = @編號" InsertCommand="INSERT INTO [QandA] ([姓名], [問題標題], [問題內容], [留言時間]) VALUES (@姓名, @問題標題, @問題內容, GETDATE())" SelectCommand="SELECT [編號], [姓名], [問題標題], [問題內容], [留言時間] FROM [QandA] WHERE ([編號] = @編號)" UpdateCommand="UPDATE [QandA] SET [姓名] = @姓名, [問題標題] = @問題標題, [問題內容] = @問題內容, [留言時間] = @留言時間 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="姓名" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="問題標題" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="問題內容" PropertyName="Text" Type="String" />
                <asp:Parameter Name="留言時間" Type="DateTime" DefaultValue="" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="問題標題" Type="String" />
                <asp:Parameter Name="問題內容" Type="String" />
                <asp:Parameter Name="留言時間" Type="DateTime" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="編號" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="339px" OnDataBound="FormView1_DataBound">
            <EditItemTemplate>
                編號:
                <asp:Label ID="編號Label1" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                姓名:
                <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                問題標題:
                <asp:TextBox ID="問題標題TextBox" runat="server" Text='<%# Bind("問題標題") %>' />
                <br />
                問題內容:
                <asp:TextBox ID="問題內容TextBox" runat="server" Text='<%# Bind("問題內容") %>' />
                <br />
                留言時間:
                <asp:Label ID="Label9" runat="server" Text="[不需填寫]"></asp:Label>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                姓名:
                <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                問題標題:
                <asp:TextBox ID="問題標題TextBox" runat="server" Text='<%# Bind("問題標題") %>' />
                <br />
                問題內容:
                <asp:TextBox ID="問題內容TextBox" runat="server" Text='<%# Bind("問題內容") %>' />
                <br />
                留言時間:
                <asp:TextBox ID="留言時間TextBox" runat="server" Text='<%# Bind("留言時間") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                編號:
                <asp:Label ID="編號Label" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                姓名:
                <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                問題標題:
                <asp:Label ID="問題標題Label" runat="server" Text='<%# Bind("問題標題") %>' />
                <br />
                問題內容:
                <asp:Label ID="問題內容Label" runat="server" Text='<%# Bind("問題內容") %>' />
                <br />
                留言時間:
                <asp:Label ID="留言時間Label" runat="server" Text='<%# Bind("留言時間") %>' />
                <br />
                &nbsp;&nbsp;
            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [編號], [回覆內容], [回覆時間] FROM [QandA] WHERE ([編號] = @編號)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="編號" DataSourceID="SqlDataSource3" GridLines="Both" Width="337px">
            <EditItemTemplate>
                編號:
                <asp:Label ID="編號Label1" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                回覆內容:
                <asp:TextBox ID="回覆內容TextBox" runat="server" Text='<%# Bind("回覆內容") %>' />
                <br />
                回覆時間:
                <asp:TextBox ID="回覆時間TextBox" runat="server" Text='<%# Bind("回覆時間") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                回覆內容:
                <asp:TextBox ID="回覆內容TextBox" runat="server" Text='<%# Bind("回覆內容") %>' />
                <br />
                回覆時間:
                <asp:TextBox ID="回覆時間TextBox" runat="server" Text='<%# Bind("回覆時間") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                編號:
                <asp:Label ID="編號Label" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                回覆內容:
                <asp:Label ID="回覆內容Label" runat="server" Text='<%# Bind("回覆內容") %>' />
                <br />
                回覆時間:
                <asp:Label ID="回覆時間Label" runat="server" Text='<%# Bind("回覆時間") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <br />
        <br />
        <br />
        <p><asp:Label ID="Label7" runat="server" BackColor="#FFFFCC" BorderStyle="Double" 
            Font-Bold="True" ForeColor="Blue" Text="請填寫以下空格新增留言！"></asp:Label></p>
        <br />
        <p>姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>問題標題：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
        <p>問題內容：</p>
        <p><asp:TextBox ID="TextBox3" runat="server" Height="81px" TextMode="MultiLine" Width="183px"></asp:TextBox></p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="新增留言" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
        </p>
    </div>
</asp:Content>

