<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>start exam</title>
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
         .style4
          {
             text-align:center;
         }
         .style5
          {
             width:650px;
         }
         .style6
          {
             width:30px;
         }
         .style7
          {
             width:585px;
         }
         .style8
          {
             width:100%;
         }
         .style9
          {
             width:134px;
         }
         .style10
          {
             width:161px;
         }
         </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <div>
    <table align="center" class="style1">

        <tr>
            <td class="style2">Online Exam</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
                        <td bgcolor="#999999">
                            <b><a href="logout.aspx">Logout</a></b>
                        </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="time" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="msg" runat="server" Font-Bold="true" Font-size="Large" ForeColor="#00CC00"></asp:Label><br />
                <asp:Button ID="finish" runat="server" Height="20px" Width="100px" Text="Finish" OnClick="finish_Click" ForeColor="Red" />
            </td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center">
                <table align="center" bgcolor="#3399FF" class="style5">
                    <tr>
                        <td class="style6">&nbsp;</td>
                        <td bgcolor="#FFFFCC" class="style7">
                          <%con.Open();
                            rqry = "select * from question where settype='" + testtype + "' order by qid";
                            rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
                            rdr = rcmd.ExecuteReader();
                            c = 1;
                            while (rdr.Read())
                            {
                                if (c != count)
                                {
                                    c = c + 1;
                                }
                                else if (c == count)
                                {
                                  %><%int q=Convert.ToInt16(rdr.GetValue(0)) ;
                                      qid=q;%> 
                            <table align="center" class="style8">
                                <tr>
                                    <td>&nbsp</td>
                                </tr>
                                <tr>
                                    <td><font color="red">Q:-<%=count %></font>&nbsp;&nbsp;<%=rdr.GetValue(1) %></td>
                                </tr>
                                <tr>
                                    <td>&nbsp</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="opt" Checked="true" />
                                        <%=rdr.GetValue(3) %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt"/>
                                        <%=rdr.GetValue(4) %>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>&nbsp</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt"/>
                                        <%=rdr.GetValue(5) %>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>&nbsp</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt"/>
                                        <%=rdr.GetValue(6) %>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>&nbsp</td>
                                </tr>
                                 <tr>
                                    <td>&nbsp</td>
                                </tr>
                                <tr>
                                    <td>
                                        <table align="center" class="style8">
                                            <tr>
                                                <td class="style9">
                                                    <asp:Button ID="back" runat="server" Height="20px" Width="100px" Text="Back" OnClick="back_Click" />
                                                </td>
                                                <td class="style10">
                                                    <asp:Button ID="next" runat="server" Height="20px" Width="100px" Text="Next" OnClick="next_Click" />
                                                </td>
                                                
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table> 
                            <%if(count!=n)
                                  c=c+1;
                                  }
                            } con.Close(); %>
                              
                               
                        </td>
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

    </table>
    </div>
    </form>
</body>
</html>
