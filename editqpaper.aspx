<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="editqpaper.aspx.cs" Inherits="editqpaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:1100px">
    <tr>
        <td>
         </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="question" runat="server" Height="31px" Width="693px"></asp:TextBox>
            </td>
        </tr>

        <tr>
        <td>
         </td>
        </tr>

        <tr>
        <td>
            <asp:TextBox ID="opt1" runat="server" Width="693px"></asp:TextBox>
            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="opt" />  
        </td>
    </tr>

        <tr>
        <td>
         </td>
        </tr>

        <tr>
        <td>
            <asp:TextBox ID="opt2" runat="server" Width="693px"></asp:TextBox>
            <asp:RadioButton ID="RadioButton2" runat="server" Checked="True" GroupName="opt" />  
        </td>
    </tr>

        <tr>
        <td>
         </td>
        </tr>

        <tr>
        <td>
            <asp:TextBox ID="opt3" runat="server" Width="693px"></asp:TextBox>
            <asp:RadioButton ID="RadioButton3" runat="server" Checked="True" GroupName="opt" />  
        </td>
    </tr>

        <tr>
        <td>
         </td>
        </tr>

        <tr>
        <td>
            <asp:TextBox ID="opt4" runat="server" Width="693px"></asp:TextBox>
            <asp:RadioButton ID="RadioButton4" runat="server" Checked="True" GroupName="opt" />  
        </td>
    </tr>

        <tr>
        <td>
         </td>
        </tr>

        <tr>
        <td>
           <asp:Button ID="delete" runat="server" Text="Delete" Width="110px" Font-Bold="true" OnClick="Button2_Click"  />&nbsp;&nbsp;&nbsp;<asp:Button ID="viewpaper" runat="server" Text="View Paper" Width="110px" Font-Bold="true" OnClick="Button3_Click" />
         </td>
        </tr>


        </table>
</asp:Content>

