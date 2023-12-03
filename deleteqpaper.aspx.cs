using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class deleteqpaper : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string qry;
    HttpCookie ad;

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
    protected void dqpaper_Click(object sender, EventArgs e)
    {
        con.Close();

        con.Open();
        qry = "delete from question where settype='" + testlist.SelectedValue + "'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("deleteqpaper.aspx");

    }
}