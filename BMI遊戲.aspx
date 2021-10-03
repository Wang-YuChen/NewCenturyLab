<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BMI遊戲.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:left">BMI檢測</h1>
    
     &nbsp;<asp:Label ID="Label1" runat="server" Text="BMI值計算公式:   <br />  &nbsp; &nbsp; &nbsp;BMI = 體重(公斤) / 身高*身高
        (公尺)
<br/> &nbsp; &nbsp; 
  例如：一個52公斤的人，身高是155公分
        <br /> &nbsp; &nbsp;
        則BMI為 :

  52(公斤)/1.552 ( 公尺2 )= 21.6

  體重正常範圍為  BMI=18.5～24 " Font-Bold="True" ForeColor="#006699"></asp:Label>
    <br />
    <br />
    <br />
    <table border="1" align="center">
        <tr >
            <th width="200" height="25">BMI值</th>
            <th width="200" height="25">分級</th>
        </tr>  
        <tr align="center" height="30">
            <td>< 18.5</td>
            <td>體重過輕</td>
        </tr>
        <tr align="center" height="30">
            <td>18.5 ≦ BMI < 24</td>
            <td>正常範圍 </td>
        </tr>
        <tr align="center" height="30">
            <td>24 ≦ BMI < 27</td>
            <td>稍重 </td>
        </tr>
         <tr align="center" height="30">
            <td>27 ≦ BMI < 30</td>
            <td>輕度肥胖 </td>
        </tr>
         <tr align="center" height="30">
            <td>30 ≦ BMI < 35</td>
            <td>中度肥胖 </td>
        </tr>
         <tr align="center" height="30">
            <td> BMI ≧ 35</td>
            <td>重度肥胖 </td>
        </tr>

    </table>
    <br />
    
     &nbsp;<asp:Label ID="Label6" runat="server" Text="請輸入身高:" Font-Bold="True" ForeColor="#003366"></asp:Label>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>   
    &nbsp;<asp:Label ID="Label2" runat="server" Text="公分" Font-Size="Small"></asp:Label> 
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="請輸入身高!!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
      &nbsp;<asp:Label ID="Label7" runat="server" Text="請輸入體重:" Font-Bold="True" ForeColor="#003366"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
     &nbsp;<asp:Label ID="Label3" runat="server" Text="公斤" Font-Size="Small"></asp:Label>
     &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="請輸入體重!!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    &nbsp; <asp:Button ID="Button2" runat="server" Text="計算" OnClick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="重新輸入" OnClick="Button3_Click" />
    <br />
<br />
     &nbsp; &nbsp; &nbsp;<asp:Label ID="Label8" runat="server" ForeColor="#003399" Font-Size="X-Large" ></asp:Label>
    <br />
    

</asp:Content>

