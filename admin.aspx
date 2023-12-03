<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:1100px">
        <tr>
            <td style="width:400px;text-align:right">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="87px" ImageUrl="~/images/adduser.png" Width="102px" OnClick="ImageButton1_Click" />

            </td>
            <td style="width:700px;font-family:Algerian"><h2>Add User</h2></td>
        </tr>
        <tr>
            <td style="width:400px;text-align:right"">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="87px" ImageUrl="~/images/deleteuser.png" Width="97px" OnClick="ImageButton2_Click" />

            </td>
            <td style="width:700px;font-family:Algerian"><h2>Delete User</h2></td> 
        </tr>
        <tr>
            <td style="width:400px;text-align:right"">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="87px" ImageUrl="~/images/setqpaper.jpg" Width="96px" OnClick="ImageButton3_Click" />

            </td>
            <td style="width:700px;font-family:Algerian"><h2>Set Question Paper</h2></td> 
        </tr>
        <tr>
            <td style="width:400px;text-align:right"">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="87px" ImageUrl="~/images/previewqpaper.jpg" Width="103px" OnClick="ImageButton4_Click" />

            </td>
            <td style="width:700px;font-family:Algerian"><h2>Preview Question Paper</h2></td> 
        </tr>
        <tr>
            <td style="width:400px;text-align:right"">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="87px" ImageUrl="~/images/deleteqpaper.jpg" Width="96px" OnClick="ImageButton5_Click" />

            </td>
            <td style="width:700px;font-family:Algerian"><h2>Delete Question Paper</h2></td> 
        </tr>
        <tr>
             <td style="width:400px;text-align:right"">
                 <asp:ImageButton ID="ImageButton6" runat="server" Height="87px" ImageUrl="~/images/report.png" Width="99px" OnClick="ImageButton6_Click" />

             </td>
            <td style="width:700px;font-family:Algerian"><h2>Report</h2></td>
        </tr>
        <tr>
            <td style="width:400px;text-align:right"">
                <asp:ImageButton ID="ImageButton7" runat="server" Height="87px" ImageUrl="~/images/logout.jpg" Width="92px" OnClick="ImageButton7_Click" />

            </td>
            <td style="width:700px;font-family:Algerian"><h2>Logout</h2></td>
        </tr>
    </table>
</asp:Content>

