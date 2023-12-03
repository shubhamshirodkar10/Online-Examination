using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class deleteuser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    HttpCookie ad;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);
        con.Open();
    }
    protected void duser_Click(object sender, EventArgs e)
    {
        qry = "delete from login where username='" + userlist.Text + "'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();       
        Response.Redirect("deleteuser.aspx");
        
    }
}