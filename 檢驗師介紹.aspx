<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="檢驗師介紹.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">檢驗師介紹</h1>

    <div>
        <video src="檢驗師.mp4" controls="controls" autoplay="autoplay" style="width: 600px" ></video>   
    </div>
    
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            照片:
            <asp:TextBox ID="照片TextBox" runat="server" Text='<%# Bind("照片") %>' />
            <br />
            職稱:
            <asp:TextBox ID="職稱TextBox" runat="server" Text='<%# Bind("職稱") %>' />
            <br />
            姓名:
            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
            <br />
            簡介:
            <asp:TextBox ID="簡介TextBox" runat="server" Text='<%# Bind("簡介") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            照片:
            <asp:TextBox ID="照片TextBox" runat="server" Text='<%# Bind("照片") %>' />
            <br />
            職稱:
            <asp:TextBox ID="職稱TextBox" runat="server" Text='<%# Bind("職稱") %>' />
            <br />
            姓名:
            <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
            <br />
            簡介:
            <asp:TextBox ID="簡介TextBox" runat="server" Text='<%# Bind("簡介") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/image/"+Eval("照片") %>' Width="250px" />
            <br />
            <br />
            &nbsp;<asp:Label ID="職稱Label" runat="server" Font-Names="微軟正黑體" Font-Size="18pt" Text='<%# Bind("職稱") %>' Font-Bold="True" ForeColor="Maroon" />
            <br />
            <br />
            &nbsp;<asp:Label ID="姓名Label" runat="server" Font-Names="微軟正黑體" Font-Size="22pt" Text='<%# Bind("姓名") %>' Font-Bold="True" ForeColor="#003366" />
            <br />
            <br />
            <br />
            &nbsp;<asp:Label ID="簡介Label" runat="server" Font-Names="微軟正黑體" Font-Size="16pt" Text='<%# Bind("簡介") %>' Font-Bold="True" ForeColor="#003399" />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <br /><br />
    <asp:Image ID="Image4" runat="server" ImageUrl="~/image/獎牌01.jpg" Width="500px" />
    
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [照片], [職稱], [姓名], [簡介] FROM [檢驗師]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

