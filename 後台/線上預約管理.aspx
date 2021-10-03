<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/後台/MasterPage.master" AutoEventWireup="true" CodeFile="線上預約管理.aspx.cs" Inherits="後台_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        #pcenter {text-align:center; font-family:"微軟正黑體";font-size:larger}
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p id="pcenter">《線上預約管理》</p>
    <div>
        <p>以 
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>預約編號</asp:ListItem>
                <asp:ListItem Value="會員編號"></asp:ListItem>
                <asp:ListItem>姓名</asp:ListItem>
                <asp:ListItem>預約日期</asp:ListItem>
            </asp:DropDownList>
&nbsp;查詢： <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="至" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查詢" /></p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [預約表單] WHERE [預約編號] = @預約編號" InsertCommand="INSERT INTO [預約表單] ([會員編號], [姓名], [性別], [生日], [連絡電話], [預約日期], [預約時段], [預約項目]) VALUES (@會員編號, @姓名, @性別, @生日, @連絡電話, @預約日期, @預約時段, @預約項目)" SelectCommand="SELECT * FROM [預約表單] WHERE ([預約編號] = @預約編號)" UpdateCommand="UPDATE [預約表單] SET [會員編號] = @會員編號, [姓名] = @姓名, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [預約日期] = @預約日期, [預約時段] = @預約時段, [預約項目] = @預約項目 WHERE [預約編號] = @預約編號">
                <DeleteParameters>
                    <asp:Parameter Name="預約編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter DbType="Date" Name="生日" />
                    <asp:Parameter Name="連絡電話" Type="String" />
                    <asp:Parameter DbType="Date" Name="預約日期" />
                    <asp:Parameter Name="預約時段" Type="String" />
                    <asp:Parameter Name="預約項目" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="預約編號" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter Name="生日" DbType="Date" />
                    <asp:Parameter Name="連絡電話" Type="String" />
                    <asp:Parameter Name="預約日期" DbType="Date" />
                    <asp:Parameter Name="預約時段" Type="String" />
                    <asp:Parameter Name="預約項目" Type="String" />
                    <asp:Parameter Name="預約編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="預約編號" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnDataBound="GridView2_DataBound" Width="897px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="預約編號" HeaderText="預約編號" InsertVisible="False" ReadOnly="True" SortExpression="預約編號" />
                    <asp:BoundField DataField="會員編號" HeaderText="會員編號" SortExpression="會員編號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                    <asp:BoundField DataField="生日" DataFormatString="{0:d}" HeaderText="生日" SortExpression="生日" />
                    <asp:BoundField DataField="連絡電話" HeaderText="連絡電話" SortExpression="連絡電話" />
                    <asp:BoundField DataField="預約日期" DataFormatString="{0:d}" HeaderText="預約日期" SortExpression="預約日期" />
                    <asp:TemplateField HeaderText="預約時段" SortExpression="預約時段">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("預約時段") %>'>
                                <asp:ListItem>8:30~10:00</asp:ListItem>
                                <asp:ListItem>10:00~12:00</asp:ListItem>
                                <asp:ListItem>13:00~16:00</asp:ListItem>
                                <asp:ListItem>16:00~19:00</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("預約時段") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="預約項目" SortExpression="預約項目">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="套餐名稱" DataValueField="套餐名稱" SelectedValue='<%# Bind("預約項目") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("預約項目") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [預約表單] WHERE [預約編號] = @預約編號" InsertCommand="INSERT INTO [預約表單] ([會員編號], [姓名], [性別], [生日], [連絡電話], [預約日期], [預約時段], [預約項目]) VALUES (@會員編號, @姓名, @性別, @生日, @連絡電話, @預約日期, @預約時段, @預約項目)" SelectCommand="SELECT * FROM [預約表單] WHERE ([會員編號] = @會員編號)" UpdateCommand="UPDATE [預約表單] SET [會員編號] = @會員編號, [姓名] = @姓名, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [預約日期] = @預約日期, [預約時段] = @預約時段, [預約項目] = @預約項目 WHERE [預約編號] = @預約編號">
                <DeleteParameters>
                    <asp:Parameter Name="預約編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter DbType="Date" Name="生日" />
                    <asp:Parameter Name="連絡電話" Type="String" />
                    <asp:Parameter DbType="Date" Name="預約日期" />
                    <asp:Parameter Name="預約時段" Type="String" />
                    <asp:Parameter Name="預約項目" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="會員編號" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter DbType="Date" Name="生日" />
                    <asp:Parameter Name="連絡電話" Type="String" />
                    <asp:Parameter DbType="Date" Name="預約日期" />
                    <asp:Parameter Name="預約時段" Type="String" />
                    <asp:Parameter Name="預約項目" Type="String" />
                    <asp:Parameter Name="預約編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="預約編號" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" OnDataBound="GridView3_DataBound" Visible="False" Width="891px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="預約編號" HeaderText="預約編號" InsertVisible="False" ReadOnly="True" SortExpression="預約編號" />
                    <asp:BoundField DataField="會員編號" HeaderText="會員編號" SortExpression="會員編號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                    <asp:BoundField DataField="生日" DataFormatString="{0:d}" HeaderText="生日" SortExpression="生日" />
                    <asp:BoundField DataField="連絡電話" HeaderText="連絡電話" SortExpression="連絡電話" />
                    <asp:BoundField DataField="預約日期" DataFormatString="{0:d}" HeaderText="預約日期" SortExpression="預約日期" />
                    <asp:TemplateField HeaderText="預約時段" SortExpression="預約時段">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("預約時段") %>'>
                                <asp:ListItem>8:30~10:00</asp:ListItem>
                                <asp:ListItem>10:00~12:00</asp:ListItem>
                                <asp:ListItem>13:00~16:00</asp:ListItem>
                                <asp:ListItem>16:00~19:00</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("預約時段") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="預約項目" SortExpression="預約項目">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="套餐名稱" DataValueField="套餐名稱" SelectedValue='<%# Bind("預約項目") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("預約項目") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [預約表單] WHERE [預約編號] = @預約編號" InsertCommand="INSERT INTO [預約表單] ([會員編號], [姓名], [性別], [生日], [連絡電話], [預約日期], [預約時段], [預約項目]) VALUES (@會員編號, @姓名, @性別, @生日, @連絡電話, @預約日期, @預約時段, @預約項目)" SelectCommand="SELECT * FROM [預約表單] WHERE ([姓名] = @姓名)" UpdateCommand="UPDATE [預約表單] SET [會員編號] = @會員編號, [姓名] = @姓名, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [預約日期] = @預約日期, [預約時段] = @預約時段, [預約項目] = @預約項目 WHERE [預約編號] = @預約編號">
                <DeleteParameters>
                    <asp:Parameter Name="預約編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter DbType="Date" Name="生日" />
                    <asp:Parameter Name="連絡電話" Type="String" />
                    <asp:Parameter DbType="Date" Name="預約日期" />
                    <asp:Parameter Name="預約時段" Type="String" />
                    <asp:Parameter Name="預約項目" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="姓名" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter DbType="Date" Name="生日" />
                    <asp:Parameter Name="連絡電話" Type="String" />
                    <asp:Parameter DbType="Date" Name="預約日期" />
                    <asp:Parameter Name="預約時段" Type="String" />
                    <asp:Parameter Name="預約項目" Type="String" />
                    <asp:Parameter Name="預約編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="預約編號" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" OnDataBound="GridView4_DataBound" Visible="False" Width="886px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="預約編號" HeaderText="預約編號" InsertVisible="False" ReadOnly="True" SortExpression="預約編號" />
                    <asp:BoundField DataField="會員編號" HeaderText="會員編號" SortExpression="會員編號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                    <asp:BoundField DataField="生日" DataFormatString="{0:d}" HeaderText="生日" SortExpression="生日" />
                    <asp:BoundField DataField="連絡電話" HeaderText="連絡電話" SortExpression="連絡電話" />
                    <asp:BoundField DataField="預約日期" DataFormatString="{0:d}" HeaderText="預約日期" SortExpression="預約日期" />
                    <asp:TemplateField HeaderText="預約時段" SortExpression="預約時段">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("預約時段") %>'>
                                <asp:ListItem>8:30~10:00</asp:ListItem>
                                <asp:ListItem>10:00~12:00</asp:ListItem>
                                <asp:ListItem>13:00~16:00</asp:ListItem>
                                <asp:ListItem>16:00~19:00</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("預約時段") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="預約項目" SortExpression="預約項目">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="套餐名稱" DataValueField="套餐名稱" SelectedValue='<%# Bind("預約項目") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("預約項目") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [預約表單] WHERE [預約編號] = @預約編號" InsertCommand="INSERT INTO [預約表單] ([會員編號], [姓名], [性別], [生日], [連絡電話], [預約日期], [預約時段], [預約項目]) VALUES (@會員編號, @姓名, @性別, @生日, @連絡電話, @預約日期, @預約時段, @預約項目)" SelectCommand="SELECT * FROM [預約表單] WHERE ([預約日期] &gt;= @預約日期1 AND [預約日期] &lt;= @預約日期2)" UpdateCommand="UPDATE [預約表單] SET [會員編號] = @會員編號, [姓名] = @姓名, [性別] = @性別, [生日] = @生日, [連絡電話] = @連絡電話, [預約日期] = @預約日期, [預約時段] = @預約時段, [預約項目] = @預約項目 WHERE [預約編號] = @預約編號">
                <DeleteParameters>
                    <asp:Parameter Name="預約編號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter DbType="Date" Name="生日" />
                    <asp:Parameter Name="連絡電話" Type="String" />
                    <asp:Parameter DbType="Date" Name="預約日期" />
                    <asp:Parameter Name="預約時段" Type="String" />
                    <asp:Parameter Name="預約項目" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox4" DbType="Date" Name="預約日期1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox5" Name="預約日期2" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="會員編號" Type="Int32" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter DbType="Date" Name="生日" />
                    <asp:Parameter Name="連絡電話" Type="String" />
                    <asp:Parameter DbType="Date" Name="預約日期" />
                    <asp:Parameter Name="預約時段" Type="String" />
                    <asp:Parameter Name="預約項目" Type="String" />
                    <asp:Parameter Name="預約編號" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="預約編號" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" OnDataBound="GridView5_DataBound" style="margin-right: 0px" Visible="False" Width="882px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="預約編號" HeaderText="預約編號" InsertVisible="False" ReadOnly="True" SortExpression="預約編號" />
                    <asp:BoundField DataField="會員編號" HeaderText="會員編號" SortExpression="會員編號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                    <asp:BoundField DataField="生日" DataFormatString="{0:d}" HeaderText="生日" SortExpression="生日" />
                    <asp:BoundField DataField="連絡電話" HeaderText="連絡電話" SortExpression="連絡電話" />
                    <asp:BoundField DataField="預約日期" DataFormatString="{0:d}" HeaderText="預約日期" SortExpression="預約日期" />
                    <asp:TemplateField HeaderText="預約時段" SortExpression="預約時段">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("預約時段") %>'>
                                <asp:ListItem>8:30~10:00</asp:ListItem>
                                <asp:ListItem>10:00~12:00</asp:ListItem>
                                <asp:ListItem>13:00~16:00</asp:ListItem>
                                <asp:ListItem>16:00~19:00</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("預約時段") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="預約項目" SortExpression="預約項目">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="套餐名稱" DataValueField="套餐名稱" SelectedValue='<%# Bind("預約項目") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("預約項目") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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

            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [套餐名稱] FROM [檢驗套餐]"></asp:SqlDataSource>

        </p>
        <p>《預約單總覽》</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [預約表單]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="預約編號,會員編號" DataSourceID="SqlDataSource2" Width="1016px" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="預約編號" HeaderText="預約編號" InsertVisible="False" ReadOnly="True" SortExpression="預約編號" />
                    <asp:BoundField DataField="會員編號" HeaderText="會員編號" ReadOnly="True" SortExpression="會員編號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                    <asp:BoundField DataField="生日" HeaderText="生日" SortExpression="生日" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="連絡電話" HeaderText="連絡電話" SortExpression="連絡電話" />
                    <asp:BoundField DataField="預約日期" HeaderText="預約日期" SortExpression="預約日期" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="預約時段" HeaderText="預約時段" SortExpression="預約時段" />
                    <asp:BoundField DataField="預約項目" HeaderText="預約項目" SortExpression="預約項目" />
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

