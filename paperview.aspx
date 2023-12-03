<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="paperview.aspx.cs" Inherits="paperview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:1100px">
     <tr>
         <td> &nbsp;</td>
     </tr>
        <tr>
            <td><font color="red" size="4">Select a Question paper to Preview</font></td>
        </tr>
        <tr>
         <td> &nbsp;</td>
       </tr>
        <tr>
            <td style="text-align:center">
                <asp:DropDownList ID="testlist" runat="server" AutoPostBack="True" Height="24px" Width="170px" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" OnSelectedIndexChanged="testlist_SelectedIndexChanged"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>

        <tr>
            <td>
                <table align="center" style="width:100px">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td bgcolor="#0066FF">
                          <table align="center" style="width:100px">
                              <tr>
                                  <td style="width:36px">QID</td>
                                  <td style="width:623px">Question</td>
                                  <td style="width:214px">Choices</td>
                                  <td>&nbsp;</td>
                              </tr>
                              <%
                                  while (dr.Read())
                                  { %><%ans=Convert.ToInt16(dr.GetValue(7)); %>
                              <% if (ans==1) 
                                 {
                                     CheckBox1.Checked=true;
                                     CheckBox2.Checked=false;
                                     CheckBox3.Checked=false;
                                     CheckBox4.Checked=false;
                                 }%>

                              <%
                                   if (ans==2) 
                                 {
                                     CheckBox1.Checked=false;
                                     CheckBox2.Checked=true;
                                     CheckBox3.Checked=false;
                                     CheckBox4.Checked=false;
                                 }
                                   %>

                              <%
                                   if (ans==3) 
                                 {
                                     CheckBox1.Checked=false;
                                     CheckBox2.Checked=false;
                                     CheckBox3.Checked=true;
                                     CheckBox4.Checked=false;
                                 }
                                   %>

                                <%
                                   if (ans==4) 
                                 {
                                     CheckBox1.Checked=false;
                                     CheckBox2.Checked=false;
                                     CheckBox3.Checked=false;
                                     CheckBox4.Checked=true;
                                 }
                                   %>
                              <tr>
                                  <td bgcolor="white" style="width:36px">
                                      <%=dr.GetValue(0) %></td>
                                  <td bgcolor="white" style="width:623px">
                                      <%=dr.GetValue(1) %></td>
                                  <td bgcolor="white" style="width:214px">
                                      <table align="center" style="width:100px">
                                          <tr>
                                              <td style="width:173px">
                                                  <%=dr.GetValue(3) %></td>
                                              <td>
                                                  <asp:CheckBox ID="CheckBox1" runat="server" />
                                              </td>
                                          </tr>
                                          <tr>
                                                <td style="width:173px">
                                                  <%=dr.GetValue(4) %></td>
                                              <td>
                                                  <asp:CheckBox ID="CheckBox2" runat="server" />
                                              </td>
                                          </tr>
                                          <tr>
                                                <td style="width:173px">
                                                  <%=dr.GetValue(5) %></td>
                                              <td>
                                                  <asp:CheckBox ID="CheckBox3" runat="server" />
                                              </td>
                                          </tr>
                                          <tr>
                                                <td style="width:173px">
                                                  <%=dr.GetValue(6) %></td>
                                              <td>
                                                  <asp:CheckBox ID="CheckBox4" runat="server" />
                                              </td>
                                          </tr>
                                      </table>
                                  </td>
                                  <td bgcolor="white"><a href="editqpaper.aspx?settype=<%Response.Write(dr.GetValue(2));%>&qid=<%Response.Write(dr.GetValue(0));%>"><b>Delete</b> </a>

                                  </td>
                              </tr><%
                                   } %>
                              <tr>
                                  <td bgcolor="white" colspan="4">
                                      <table align="center" style="width:100px">
                                          <tr>
                                              <td style="width:61px">&nbsp;</td>
                                              <td>
                                                  <asp:Button ID="Button1" runat="server" Font-Bold="true" Text="Add Question" Width="200px" OnClick="Button1_Click"/>
                                              </td>
                                          </tr>
                                      </table>
                                  </td>
                              </tr>
                          </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </td>
        </tr>


    </table>
</asp:Content>

