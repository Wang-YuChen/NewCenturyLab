<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/會員專區/MasterPage.master" AutoEventWireup="true" CodeFile="修改會員資料.aspx.cs" Inherits="會員專區_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        h1 {text-align:center; font-family:"微軟正黑體"}
        div {
            text-align: center;
        }
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>《會員資料修改》</h1>
    <div>
        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([姓名], [身分證字號], [密碼], [性別], [生日], [連絡電話], [行動電話], [住址], [Email]) VALUES (@姓名, @身分證字號, @密碼, @性別, @生日, @連絡電話, @行動電話, @住址, @Email)" SelectCommand="SELECT [會員編號], [姓名], [身分證字號], [密碼], [性別], [生日], [連絡電話], [行動電話], [住址], [Email] FROM [會員] WHERE ([身分證字號] = @身分證字號)" UpdateCommand="UPDATE [會員] SET [姓名] = @姓名, [身分證字號] = @身分證字號, [密碼] = @密碼, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [行動電話] = @行動電話, [住址] = @住址, [Email] = @Email WHERE [會員編號] = @會員編號">
            <DeleteParameters>
                <asp:Parameter Name="會員編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="身分證字號" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />
                <asp:Parameter Name="性別" Type="String" />
                <asp:Parameter DbType="Date" Name="生日" />
                <asp:Parameter Name="連絡電話" Type="String" />
                <asp:Parameter Name="行動電話" Type="String" />
                <asp:Parameter Name="住址" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="身分證字號" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="身分證字號" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />
                <asp:Parameter Name="性別" Type="String" />
                <asp:Parameter DbType="Date" Name="生日" />
                <asp:Parameter Name="連絡電話" Type="String" />
                <asp:Parameter Name="行動電話" Type="String" />
                <asp:Parameter Name="住址" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="會員編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="會員編號" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" Width="889px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="會員編號" HeaderText="會員編號" InsertVisible="False" ReadOnly="True" SortExpression="會員編號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="身分證字號" HeaderText="身分證字號" SortExpression="身分證字號" />
                <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
                <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                <asp:BoundField DataField="生日" DataFormatString="{0:d}" HeaderText="生日" SortExpression="生日" />
                <asp:BoundField DataField="連絡電話" HeaderText="連絡電話" SortExpression="連絡電話" />
                <asp:BoundField DataField="行動電話" HeaderText="行動電話" SortExpression="行動電話" />
                <asp:BoundField DataField="住址" HeaderText="住址" SortExpression="住址" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([姓名], [密碼], [生日], [連絡電話], [行動電話], [住址], [Email]) VALUES (@姓名, @密碼, @生日, @連絡電話, @行動電話, @住址, @Email)" SelectCommand="SELECT [會員編號], [姓名], [密碼], [生日], [連絡電話], [行動電話], [住址], [Email] FROM [會員] WHERE ([身分證字號] = @身分證字號)" UpdateCommand="UPDATE [會員] SET [姓名] = @姓名, [密碼] = @密碼, [生日] = @生日, [連絡電話] = @連絡電話, [行動電話] = @行動電話, [住址] = @住址, [Email] = @Email WHERE [會員編號] = @會員編號">
            <DeleteParameters>
                <asp:Parameter Name="會員編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />
                <asp:Parameter DbType="Date" Name="生日" />
                <asp:Parameter Name="連絡電話" Type="String" />
                <asp:Parameter Name="行動電話" Type="String" />
                <asp:Parameter Name="住址" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="身分證字號" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="密碼" Type="String" />
                <asp:Parameter DbType="Date" Name="生日" />
                <asp:Parameter Name="連絡電話" Type="String" />
                <asp:Parameter Name="行動電話" Type="String" />
                <asp:Parameter Name="住址" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="會員編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="會員編號" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" OnDataBound="FormView1_DataBound" Width="427px">
            <EditItemTemplate>
                會員編號:
                <asp:Label ID="會員編號Label1" runat="server" Text='<%# Eval("會員編號") %>' />
                <br />
                姓名:
                <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                密碼:
                <asp:TextBox ID="密碼TextBox" runat="server" Text='<%# Bind("密碼") %>' />
                <br />
                生日:
                <asp:TextBox ID="生日TextBox" runat="server" Text='<%# Bind("生日", "{0:d}") %>' />
                <br />
                連絡電話:
                <asp:TextBox ID="連絡電話TextBox" runat="server" Text='<%# Bind("連絡電話") %>' />
                <br />
                行動電話:
                <asp:TextBox ID="行動電話TextBox" runat="server" Text='<%# Bind("行動電話") %>' />
                <br />
                住址:
                <asp:TextBox ID="住址TextBox" runat="server" Text='<%# Bind("住址") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
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
                密碼:
                <asp:TextBox ID="密碼TextBox" runat="server" Text='<%# Bind("密碼") %>' />
                <br />
                生日:
                <asp:TextBox ID="生日TextBox" runat="server" Text='<%# Bind("生日") %>' />
                <br />
                連絡電話:
                <asp:TextBox ID="連絡電話TextBox" runat="server" Text='<%# Bind("連絡電話") %>' />
                <br />
                行動電話:
                <asp:TextBox ID="行動電話TextBox" runat="server" Text='<%# Bind("行動電話") %>' />
                <br />
                住址:
                <asp:TextBox ID="住址TextBox" runat="server" Text='<%# Bind("住址") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                會員編號:
                <asp:Label ID="會員編號Label" runat="server" Text='<%# Eval("會員編號") %>' />
                <br />
                姓名:
                <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                密碼:
                <asp:Label ID="密碼Label" runat="server" Text='<%# Bind("密碼") %>' />
                <br />
                生日:
                <asp:Label ID="生日Label" runat="server" Text='<%# Bind("生日", "{0:d}") %>' />
                <br />
                連絡電話:
                <asp:Label ID="連絡電話Label" runat="server" Text='<%# Bind("連絡電話") %>' />
                <br />
                行動電話:
                <asp:Label ID="行動電話Label" runat="server" Text='<%# Bind("行動電話") %>' />
                <br />
                住址:
                <asp:Label ID="住址Label" runat="server" Text='<%# Bind("住址") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;&nbsp;
            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
        <br />
        <br />
        <br />
    </div>
</asp:Content>

