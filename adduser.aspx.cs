using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class adduser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string qry;
    string cqry;
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
    protected void submit_Click(object sender, EventArgs e)
    {
      cqry="select * from login where username='" + name.Text + "'";
      cmd = new SqlCommand(cqry, con);
      dr = cmd.ExecuteReader();
      if (dr.HasRows)
      {
          msg.Text = "Username Already Exist";
      }
      else
      {
          con.Close();
          con.Open();
          qry = "insert into login values('" + name.Text + "','" + pass.Text + "','user')";
          cmd = new SqlCommand(qry, con);
          cmd.ExecuteNonQuery();
          msg.Text = "User Added Successfully";
          name.Text = "";
          pass.Text = "";

      }

    }
}