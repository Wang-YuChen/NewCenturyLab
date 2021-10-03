<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/後台/MasterPage.master" AutoEventWireup="true" CodeFile="關於我們管理.aspx.cs" Inherits="後台_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                      
        #pcenter {text-align:center; font-family:"微軟正黑體";font-size:larger}
                
        .新增樣式1 {
            width: 190px;
            height: 140px;
            float: left;
        }
                
        .新增樣式2 {
            margin-right: 10px;
        }
        .新增樣式3 {
            margin-right: 10px;
            width: 140px;
            height: 190px;
            float: left;
        }
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p id="pcenter">《關於我們管理》</p>
    <div>
        <p>＊檢驗所資訊管理</p>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [相關資訊] WHERE [編號] = @編號" InsertCommand="INSERT INTO [相關資訊] ([相關資訊]) VALUES (@相關資訊)" SelectCommand="SELECT * FROM [相關資訊]" UpdateCommand="UPDATE [相關資訊] SET [相關資訊] = @相關資訊 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="相關資訊" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="相關資訊" Type="String" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView5" runat="server" DataSourceID="SqlDataSource1" Width="618px">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <div>
        <p>＊簡介管理</p>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [簡介與理念] WHERE [編號] = @編號" InsertCommand="INSERT INTO [簡介與理念] ([簡介], [理念], [公益], [榮耀]) VALUES (@簡介, @理念, @公益, @榮耀)" SelectCommand="SELECT * FROM [簡介與理念]" UpdateCommand="UPDATE [簡介與理念] SET [簡介] = @簡介, [理念] = @理念, [公益] = @公益, [榮耀] = @榮耀 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="簡介" Type="String" />
                <asp:Parameter Name="理念" Type="String" />
                <asp:Parameter Name="公益" Type="String" />
                <asp:Parameter Name="榮耀" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="簡介" Type="String" />
                <asp:Parameter Name="理念" Type="String" />
                <asp:Parameter Name="公益" Type="String" />
                <asp:Parameter Name="榮耀" Type="String" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView6" runat="server" DataSourceID="SqlDataSource2" Width="853px">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <div>
        <p>＊檢驗所設備管理</p>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [機器設備]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [機器設備] WHERE [編號] = @編號" InsertCommand="INSERT INTO [機器設備] ([機器名稱], [圖片]) VALUES (@機器名稱, @圖片)" SelectCommand="SELECT * FROM [機器設備] WHERE ([編號] = @編號)" UpdateCommand="UPDATE [機器設備] SET [機器名稱] = @機器名稱, [圖片] = @圖片 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="機器名稱" Type="String" />
                <asp:ControlParameter Name="圖片" Type="String" ControlID = "FormView1$FileUpload2" PropertyName = "FileName" />

            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView3" Name="編號" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="機器名稱" Type="String" />
                <asp:ControlParameter Name="圖片" Type="String" ControlID="FormView1$FileUpload1" PropertyName = "FileName" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:BoundField DataField="機器名稱" HeaderText="機器名稱" SortExpression="機器名稱" />
            </Columns>
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="編號" DataSourceID="SqlDataSource4" Width="400px" OnDataBound="FormView1_DataBound" OnItemInserting="FormView1_ItemInserting" OnItemUpdating="FormView1_ItemUpdating">
            <EditItemTemplate>
                編號:
                <asp:Label ID="編號Label1" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                機器名稱:
                <asp:TextBox ID="機器名稱TextBox" runat="server" Text='<%# Bind("機器名稱") %>' />
                <br />
                圖片:<asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/image/"+Eval("圖片") %>' Width="250px" />
                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                機器名稱:
                <asp:TextBox ID="機器名稱TextBox" runat="server" Text='<%# Bind("機器名稱") %>' />
                <br />
                圖片:
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/image/"+Eval("圖片") %>' Width="190px" />
                <br />
                編號:
                <asp:Label ID="編號Label" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                機器名稱:
                <asp:Label ID="機器名稱Label" runat="server" Text='<%# Bind("機器名稱") %>' />
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
            </ItemTemplate>
        </asp:FormView>
    </div>
    
    
    <div>
        <p>＊檢驗師管理</p>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [檢驗師] WHERE [編號] = @編號" InsertCommand="INSERT INTO [檢驗師] ([職稱], [姓名], [簡介]) VALUES (@職稱, @姓名, @簡介)" SelectCommand="SELECT [編號], [職稱], [姓名], [簡介] FROM [檢驗師]" UpdateCommand="UPDATE [檢驗師] SET [職稱] = @職稱, [姓名] = @姓名, [簡介] = @簡介 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="職稱" Type="String" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="簡介" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="職稱" Type="String" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="簡介" Type="String" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [檢驗師] WHERE [編號] = @編號" InsertCommand="INSERT INTO [檢驗師] ([照片]) VALUES (@照片)" SelectCommand="SELECT [編號], [照片] FROM [檢驗師]" UpdateCommand="UPDATE [檢驗師] SET [照片] = @照片 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="照片" Type="String" ControlID="FormView3$FileUpload4" PropertyName = "FileName" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter Name="照片" Type="String" ControlID="FormView3$FileUpload3" PropertyName = "FileName" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView3" runat="server" DataKeyNames="編號" DataSourceID="SqlDataSource6" OnItemInserting="FormView3_ItemInserting" OnItemUpdating="FormView3_ItemUpdating">
            <EditItemTemplate>
                編號:
                <asp:Label ID="編號Label1" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                <asp:Image ID="Image4" runat="server" ImageUrl='<%# "~/image/"+Eval("照片") %>' Width="300px" />
                <br />
                <asp:FileUpload ID="FileUpload3" runat="server" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:FileUpload ID="FileUpload4" runat="server" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                編號:
                <asp:Label ID="編號Label" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/image/"+Eval("照片") %>' Width="300px" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
            </ItemTemplate>
        </asp:FormView>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="編號" DataSourceID="SqlDataSource5">
            <EditItemTemplate>
                編號:
                <asp:Label ID="編號Label1" runat="server" Text='<%# Eval("編號") %>' />
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
                編號:
                <asp:Label ID="編號Label" runat="server" Text='<%# Eval("編號") %>' />
                <br />
                職稱:
                <asp:Label ID="職稱Label" runat="server" Text='<%# Bind("職稱") %>' />
                <br />
                姓名:
                <asp:Label ID="姓名Label" runat="server" Text='<%# Bind("姓名") %>' />
                <br />
                簡介:
                <asp:Label ID="簡介Label" runat="server" Text='<%# Bind("簡介") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

