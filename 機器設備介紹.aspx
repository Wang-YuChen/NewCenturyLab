<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="機器設備介紹.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">檢驗所設備</h1>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [機器名稱], [圖片] FROM [機器設備]"></asp:SqlDataSource>
    
    <p>
    </p>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="">機器名稱:
            <asp:Label ID="機器名稱Label" runat="server" Text='<%# Eval("機器名稱") %>' />
            <br />
            圖片:
            <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/image/"+Eval("圖片") %>' Width="350px" />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">機器名稱:
            <asp:TextBox ID="機器名稱TextBox" runat="server" Text='<%# Bind("機器名稱") %>' />
            <br />
            圖片:
            <asp:TextBox ID="圖片TextBox" runat="server" Text='<%# Bind("圖片") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>未傳回資料。</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">機器名稱:
            <asp:TextBox ID="機器名稱TextBox" runat="server" Text='<%# Bind("機器名稱") %>' />
            <br />圖片:
            <asp:TextBox ID="圖片TextBox" runat="server" Text='<%# Bind("圖片") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">機器名稱:
            <asp:Label ID="機器名稱Label" runat="server" Text='<%# Eval("機器名稱") %>' />
            <br />
            圖片:
            <asp:Image ID="Image4" runat="server" ImageUrl='<%# "~/image/"+Eval("圖片") %>' Width="350px" />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">機器名稱:
            <asp:Label ID="機器名稱Label" runat="server" Text='<%# Eval("機器名稱") %>' />
            <br />
            圖片:
            <asp:Label ID="圖片Label" runat="server" Text='<%# Eval("圖片") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
</asp:ListView>
</asp:Content>

