<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testselection.aspx.cs" Inherits="testselection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>testselection</title>
    <style type="text/css">
        .style1
         {
            width:1024px;
        }
        .style2
         {
            font-family:"Monotype Corsiva";
            font-size:xx-large;
            font-weight:bold;
            color:#3399FF;
            text-align:center;
            padding:0;
        }
        .style3
         {
            font-family:"Monotype Corsiva";
            font-size:large;
            font-weight:bold;
            color:#FFFFFF;
        }
         .style9
         {
            width:100%;
        }
          .style10
         {
            width:280px;

        }
           .style11
         {
            width:448px;
        }
            .style12
         {
            color:#FFFFFF;
            font-weight:bold;
            padding:0;
        }
             .style13
         {
            font-size:large;
            color:#FFFFFF;
            font-weight:bold;
            padding:0;
        }
    </style>
     <script type = "text/javascript" >
         function preventBack() { window.history.forward(); }
         setTimeout("preventBack()", 0);
         window.onunload = function () { null };
</script>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <div>
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                Online Exam
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td bgcolor="#3399FF">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:center">
                            <b><a href="logout.aspx">Logout</a></b>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:center">
                            <table align="center" class="style9">
                                <tr>
                                    <td class="style10">&nbsp;</td>
                                    <td bgcolor="#66CCFF" class="style11">
                                        <table align="center" class="style9">
                                            <tr>
                                                <td class="style12">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                  Select Test
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:DropDownList ID="testlist" runat="server" Height="22px" Width="200px" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype"></asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT DISTINCT [settype] FROM [question]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="submit" runat="server" Text="Submit" Width="200px" onclick="Button1_Click" style="font-weight:700" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>

                                        </table>

                                    </td>
                                    <td>&nbsp;</td>
                                </tr>

                            </table>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td bgcolor="#3399FF">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="background-color:black;text-align:center;color:#FFF" >All Right Reserved</td>
        </tr>

    </table>
    </div>
    </form>
</body>
</html>
