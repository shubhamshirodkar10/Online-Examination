<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="setqpaper.aspx.cs" Inherits="setqpaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:1100px">
    <tr>
        <td>
            <asp:DropDownList ID="testlist" runat="server" Height="20px" Width="150px" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" AutoPostBack="true"></asp:DropDownList>
            <asp:TextBox ID="testname" runat="server" Visible="False"></asp:TextBox>
            <asp:Button ID="ntest" runat="server" Text="New Test" Font-Bold="true" Width="88px" OnClick="ntest_Click"/>
            <asp:Label ID="msg1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="height:50px">
            <asp:TextBox ID="question" runat="server" Height="31px" Width="693px" Font-Bold="true"></asp:TextBox>
            <asp:Label ID="msg2" runat="server" ForeColor="#CC3300"></asp:Label>
        </td>
        
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="opt1" runat="server" Width="693px" Font-Bold="true"></asp:TextBox>
            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="opt" />
            <asp:Label ID="msg3" runat="server" ForeColor="#CC3300"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:TextBox ID="opt2" runat="server" Width="693px" Font-Bold="true"></asp:TextBox>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt" />
            <asp:Label ID="msg4" runat="server" ForeColor="#CC3300"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            &nbsp;
        </td>
    </tr>
     <tr>
        <td>
            <asp:TextBox ID="opt3" runat="server" Width="693px" Font-Bold="true"></asp:TextBox>
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt" />
            <asp:Label ID="msg5" runat="server" ForeColor="#CC3300"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            &nbsp;
        </td>
    </tr>
     <tr>
        <td>
            <asp:TextBox ID="opt4" runat="server" Width="693px" Font-Bold="true"></asp:TextBox>
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
            <asp:Label ID="msg6" runat="server" ForeColor="#CC3300"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="msg7" runat="server" ForeColor="#009900"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="submit" runat="server" Text="Add Question" Width="92px" Font-Bold="true" OnClick="Button2_Click"/>
        </td>    
    </tr>
    <tr>
        <td>
            
              
        
        </td>
    </tr>

</table>
</asp:Content>

