<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="reports.aspx.cs" Inherits="reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width:1100px">
        <tr>
            <td> </td>
            </tr>
         <tr>
            <td> </td>
            </tr>

         <tr>
             <td bgcolor="#0066FF"> 
                 <table align="center" style="width:100%">
                     <tr>
                         <td style="text-align:center;width:200px">User</td>
                         <td style="text-align:center;width:200px">Date</td>
                         <td style="text-align:center;width:254px">Test Name</td>
                         <td style="text-align:center;width:167px">Marks</td>
                         <td style="text-align:center">Total Marks</td>
                     </tr>
                     <%
                         while (dr.Read())
                         {
                          %>
                     <tr>
                         <td bgcolor="#FFFFCC" style="text-align:center;width:200px"> 
                             <%=dr.GetValue(0) %>
                         </td>
                         <td bgcolor="#FFFFCC" style="text-align:center;width:200px"> 
                             <%=dr.GetValue(1) %>
                         </td>
                         <td bgcolor="#FFFFCC" style="text-align:center;width:254px"> 
                             <%=dr.GetValue(2) %>
                         </td>
                         <td bgcolor="#FFFFCC" style="text-align:center;width:167px"> 
                             <%=dr.GetValue(3) %>
                         </td>
                         <td bgcolor="#FFFFCC" style="text-align:center"> 
                             <%=dr.GetValue(4) %>
                         </td>
                     </tr>
                     <%
                     }
                         con.Close(); 
                          %>

                 </table>
             </td>
         </tr>
         <tr>
             <td></td>
         </tr>

         </table>
</asp:Content>

