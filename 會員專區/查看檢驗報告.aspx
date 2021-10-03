<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/會員專區/MasterPage.master" AutoEventWireup="true" CodeFile="查看檢驗報告.aspx.cs" Inherits="會員專區_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        h1 {text-align:center; font-family:"微軟正黑體"}
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>《檢驗報告查詢》</h1>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label></p>
    <p align="center">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label></p>
    <div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [檢驗報告] WHERE ([身分證字號] = @身分證字號)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="身分證字號" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="編號" DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" Width="192px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:BoundField DataField="檢驗日" DataFormatString="{0:d}" HeaderText="檢驗日" SortExpression="檢驗日" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [檢驗報告] WHERE ([編號] = @編號)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="編號" DataSourceID="SqlDataSource2" GridLines="Both" HorizontalAlign="Center">
            <EditItemTemplate>
                編號:
                <asp:Label ID="編號Label1" runat="server" Text='<%# Eval("編號") %>' />
                <br />
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
                <asp:TextBox ID="檢驗報告TextBox" runat="server" Text='<%# Bind("檢驗報告") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
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
                <asp:TextBox ID="檢驗報告TextBox" runat="server" Text='<%# Bind("檢驗報告") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                編號:
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

            </ItemTemplate>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>


    </div>
</asp:Content>

