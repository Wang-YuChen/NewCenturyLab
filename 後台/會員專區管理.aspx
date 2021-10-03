<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/後台/MasterPage.master" AutoEventWireup="true" CodeFile="會員專區管理.aspx.cs" Inherits="後台_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        #pcenter {text-align:center; font-family:"微軟正黑體";font-size:larger}
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p id="pcenter">《會員管理》</p>
    <div>
        <p>
            以 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>會員編號</asp:ListItem>
                <asp:ListItem>姓名</asp:ListItem>
                <asp:ListItem>身份證字號</asp:ListItem>
                <asp:ListItem>性別</asp:ListItem>
                <asp:ListItem>生日</asp:ListItem>
            </asp:DropDownList>&nbsp;查詢：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
            <asp:Button ID="Button8" runat="server" Text="查詢" OnClick="Button8_Click" />
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="會員編號" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" Height="50px" Width="470px" OnDataBound="DetailsView2_DataBound">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
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
                    <asp:BoundField DataField="身分" HeaderText="身分" SortExpression="身分" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([姓名], [身分證字號], [密碼], [性別], [生日], [連絡電話], [行動電話], [住址], [Email], [身分]) VALUES (@姓名, @身分證字號, @密碼, @性別, @生日, @連絡電話, @行動電話, @住址, @Email, @身分)" SelectCommand="SELECT * FROM 會員 WHERE (會員編號=@會員編號) " UpdateCommand="UPDATE [會員] SET [姓名] = @姓名, [身分證字號] = @身分證字號, [密碼] = @密碼, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [行動電話] = @行動電話, [住址] = @住址, [Email] = @Email, [身分] = @身分 WHERE [會員編號] = @會員編號">
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
                    <asp:Parameter Name="身分" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="會員編號" PropertyName="Text" />
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
                    <asp:Parameter Name="身分" Type="String" />
                    <asp:Parameter Name="會員編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([姓名], [身分證字號], [密碼], [性別], [生日], [連絡電話], [行動電話], [住址], [Email], [身分]) VALUES (@姓名, @身分證字號, @密碼, @性別, @生日, @連絡電話, @行動電話, @住址, @Email, @身分)" SelectCommand="SELECT * FROM [會員] WHERE ([姓名] = @姓名)" UpdateCommand="UPDATE [會員] SET [姓名] = @姓名, [身分證字號] = @身分證字號, [密碼] = @密碼, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [行動電話] = @行動電話, [住址] = @住址, [Email] = @Email, [身分] = @身分 WHERE [會員編號] = @會員編號">
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
                    <asp:Parameter Name="身分" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox5" Name="姓名" PropertyName="Text" Type="String" />
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
                    <asp:Parameter Name="身分" Type="String" />
                    <asp:Parameter Name="會員編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="會員編號" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Vertical" Height="50px" OnDataBound="DetailsView3_DataBound" style="margin-right: 0px" Visible="False" Width="465px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
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
                    <asp:BoundField DataField="身分" HeaderText="身分" SortExpression="身分" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([姓名], [身分證字號], [密碼], [性別], [生日], [連絡電話], [行動電話], [住址], [Email], [身分]) VALUES (@姓名, @身分證字號, @密碼, @性別, @生日, @連絡電話, @行動電話, @住址, @Email, @身分)" SelectCommand="SELECT * FROM [會員] WHERE ([身分證字號] = @身分證字號)" UpdateCommand="UPDATE [會員] SET [姓名] = @姓名, [身分證字號] = @身分證字號, [密碼] = @密碼, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [行動電話] = @行動電話, [住址] = @住址, [Email] = @Email, [身分] = @身分 WHERE [會員編號] = @會員編號">
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
                    <asp:Parameter Name="身分" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox6" Name="身分證字號" PropertyName="Text" Type="String" />
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
                    <asp:Parameter Name="身分" Type="String" />
                    <asp:Parameter Name="會員編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="會員編號" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Vertical" Height="50px" OnDataBound="DetailsView4_DataBound" Visible="False" Width="461px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
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
                    <asp:BoundField DataField="身分" HeaderText="身分" SortExpression="身分" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([姓名], [身分證字號], [密碼], [性別], [生日], [連絡電話], [行動電話], [住址], [Email], [身分]) VALUES (@姓名, @身分證字號, @密碼, @性別, @生日, @連絡電話, @行動電話, @住址, @Email, @身分)" SelectCommand="SELECT * FROM [會員] WHERE ([性別] = @性別)" UpdateCommand="UPDATE [會員] SET [姓名] = @姓名, [身分證字號] = @身分證字號, [密碼] = @密碼, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [行動電話] = @行動電話, [住址] = @住址, [Email] = @Email, [身分] = @身分 WHERE [會員編號] = @會員編號">
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
                    <asp:Parameter Name="身分" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox7" Name="性別" PropertyName="Text" Type="String" />
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
                    <asp:Parameter Name="身分" Type="String" />
                    <asp:Parameter Name="會員編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="會員編號" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Vertical" Height="50px" OnDataBound="DetailsView5_DataBound" Visible="False" Width="459px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
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
                    <asp:BoundField DataField="身分" HeaderText="身分" SortExpression="身分" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [會員] WHERE [會員編號] = @會員編號" InsertCommand="INSERT INTO [會員] ([姓名], [身分證字號], [密碼], [性別], [生日], [連絡電話], [行動電話], [住址], [Email], [身分]) VALUES (@姓名, @身分證字號, @密碼, @性別, @生日, @連絡電話, @行動電話, @住址, @Email, @身分)" SelectCommand="SELECT * FROM [會員] WHERE ([生日] = @生日)" UpdateCommand="UPDATE [會員] SET [姓名] = @姓名, [身分證字號] = @身分證字號, [密碼] = @密碼, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [行動電話] = @行動電話, [住址] = @住址, [Email] = @Email, [身分] = @身分 WHERE [會員編號] = @會員編號">
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
                    <asp:Parameter Name="身分" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox8" DbType="Date" Name="生日" PropertyName="Text" />
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
                    <asp:Parameter Name="身分" Type="String" />
                    <asp:Parameter Name="會員編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView6" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="會員編號" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Vertical" Height="50px" OnDataBound="DetailsView6_DataBound" Visible="False" Width="455px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
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
                    <asp:BoundField DataField="身分" HeaderText="身分" SortExpression="身分" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            # 輸入身分證字號查詢檢驗報告：<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="查詢" />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [檢驗報告] WHERE ([身分證字號] = @身分證字號)" InsertCommand="INSERT INTO 檢驗報告(身分證字號, 姓名, 檢驗日, 檢驗報告) VALUES (@身分證字號,@姓名,@檢驗日,@檢驗報告)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="身分證字號" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="姓名" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="檢驗日" PropertyName="Text" />
                    <asp:ControlParameter Name="檢驗報告" Type="String" ControlID="FileUpload3" PropertyName = "FileName" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox9" Name="身分證字號" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource4" PageSize="5" Width="222px">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="檢驗日" HeaderText="檢驗日" SortExpression="檢驗日" DataFormatString="{0:d}" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [檢驗報告] WHERE [編號] = @編號" InsertCommand="INSERT INTO [檢驗報告] ([身分證字號], [姓名], [檢驗日], [檢驗報告]) VALUES (@身分證字號, @姓名, @檢驗日, @檢驗報告)" SelectCommand="SELECT * FROM [檢驗報告] WHERE ([編號] = @編號)" UpdateCommand="UPDATE [檢驗報告] SET [身分證字號] = @身分證字號, [姓名] = @姓名, [檢驗日] = @檢驗日, [檢驗報告] = @檢驗報告 WHERE [編號] = @編號">
                <DeleteParameters>
                    <asp:Parameter Name="編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="身分證字號" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter DbType="Date" Name="檢驗日" />
                    <asp:ControlParameter Name="檢驗報告" Type="String" ControlID = "FormView1$FileUpload2" PropertyName = "FileName" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="編號" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="身分證字號" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter DbType="Date" Name="檢驗日" />
                    <asp:ControlParameter Name="檢驗報告" Type="String" ControlID="FormView1$FileUpload1" PropertyName = "FileName" />
                    <asp:Parameter Name="編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="編號" DataSourceID="SqlDataSource5" OnItemUpdating="FormView1_ItemUpdating" OnDataBound="FormView1_DataBound" OnItemInserting="FormView1_ItemInserting">
                <EditItemTemplate>
                    編號:
                    <asp:Label ID="編號Label1" runat="server" Text='<%# Eval("編號") %>' />
                    <br />
                    身分證字號:
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("身分證字號") %>'></asp:Label>
                    <br />
                    姓名:
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("姓名") %>'></asp:Label>
                    <br />
                    檢驗日:
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("檢驗日", "{0:d}") %>'></asp:Label>
                    <br />
                    檢驗報告:<asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/檢驗報告/"+Eval("檢驗報告") %>' Width="500px" />
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    身分證字號:
                    <asp:TextBox ID="身分證字號TextBox" runat="server" Text='<%# Bind("身分證字號") %>' />
                    <br />
                    姓名:
                    <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                    <br />
                    檢驗日:
                    <asp:TextBox ID="檢驗日TextBox" runat="server" Text='<%# Bind("檢驗日") %>' />
                    <br />
                    檢驗報告:
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    檢驗報告編號:
                    <asp:Label ID="編號Label" runat="server" Text='<%# Eval("編號") %>' />
                    <br />
                    身分證字號:
                    <asp:Label ID="身分證字號Label" runat="server" Text='<%# Bind("身分證字號") %>' />
                    <br />
                    姓名:
                    <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                    <br />
                    檢驗日:
                    <asp:Label ID="檢驗日Label" runat="server" Text='<%# Bind("檢驗日", "{0:d}") %>' />
                    <br />
                    檢驗報告:
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/檢驗報告/"+Eval("檢驗報告") %>' Width="800px" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                    &nbsp;&nbsp;
                </ItemTemplate>
            </asp:FormView>
        </p>
        <p>
            # 新增檢驗報告</p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="身分證字號："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label10" runat="server" Text="姓名："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label11" runat="server" Text="檢驗日："></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label12" runat="server" Text="檢驗報告："></asp:Label>
            <asp:FileUpload ID="FileUpload3" runat="server" />
        </p>
        <p>
            <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="新增" />
        </p>
        <p>《會員總覽》</p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [會員]"></asp:SqlDataSource>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="會員編號" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="會員編號" HeaderText="會員編號" InsertVisible="False" ReadOnly="True" SortExpression="會員編號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="身分證字號" HeaderText="身分證字號" SortExpression="身分證字號" />
                    <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
                    <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                    <asp:BoundField DataField="生日" HeaderText="生日" SortExpression="生日" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="連絡電話" HeaderText="連絡電話" SortExpression="連絡電話" />
                    <asp:BoundField DataField="行動電話" HeaderText="行動電話" SortExpression="行動電話" />
                    <asp:BoundField DataField="住址" HeaderText="住址" SortExpression="住址" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="身分" HeaderText="身分" SortExpression="身分" />
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
        <p>
            《檢驗報告總覽》</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [檢驗報告]"></asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="編號" DataSourceID="SqlDataSource10" Width="798px">
                <Columns>
                    <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                    <asp:BoundField DataField="身分證字號" HeaderText="身分證字號" SortExpression="身分證字號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="檢驗日" DataFormatString="{0:d}" HeaderText="檢驗日" SortExpression="檢驗日" />
                    <asp:BoundField DataField="檢驗報告" HeaderText="檢驗報告" SortExpression="檢驗報告" />
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
    </div>
</asp:Content>

