<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="註冊後頁面.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         p {text-align:center; font-family:"微軟正黑體" }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>註冊成功!<br />
        請重新登入!<br /></p>
    <p>
        <asp:Button ID="Button3" runat="server" Text="回到登入畫面" OnClick="Button3_Click" />
    </p>
</asp:Content>

