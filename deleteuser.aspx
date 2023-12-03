<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="deleteuser.aspx.cs" Inherits="deleteuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:1100px">
        <tr>
        <td style="text-align:center">
            <asp:DropDownList ID="userlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username"></asp:DropDownList>
        </td>
         </tr>
        <tr>
            <td style="text-align:center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT [username] FROM [login] WHERE ([type] = @type)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="userlist" DefaultValue="user" Name="type" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:Button ID="duser" runat="server" Text="Delete User" OnClick="duser_Click" />
            </td>
        </tr>
        

    </table>
</asp:Content>

