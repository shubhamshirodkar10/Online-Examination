<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="deleteqpaper.aspx.cs" Inherits="deleteqpaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:1100px">
        <tr>
            <td style="text-align:center">
                <asp:DropDownList ID="testlist" Height="24px" Width="170px" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype"></asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>

            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:Button ID="dqpaper" Height="24px" Width="170px" runat="server" Text="Delete Test" Font-Bold="false" OnClick="dqpaper_Click" />

            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:Label ID="msg" Width="170px" runat="server"></asp:Label>

            </td>
        </tr>
        </table>
</asp:Content>

