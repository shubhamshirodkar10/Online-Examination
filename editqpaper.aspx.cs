using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class editqpaper : System.Web.UI.Page
{
    HttpCookie ad;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string qry;

    public SqlCommand rcmd;
    public SqlDataReader rdr;
    public string rqry;

    Int16 ans;
    public string settype;
    int qid;

    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        settype = System.Convert.ToString(Request.QueryString["settype"]);
        qid = System.Convert.ToInt16(Request.QueryString["qid"]);


        con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);
        con.Open();

        rqry="select * from question where qid=" + qid;
        rcmd = new SqlCommand(rqry, con);
        rdr = rcmd.ExecuteReader();
        while (rdr.Read())
        {
            question.Text = Convert.ToString(rdr.GetValue(1));
            opt1.Text = Convert.ToString(rdr.GetValue(3));
            opt2.Text = Convert.ToString(rdr.GetValue(4));
            opt3.Text = Convert.ToString(rdr.GetValue(5));
            opt4.Text = Convert.ToString(rdr.GetValue(6));
            ans = Convert.ToInt16(rdr.GetValue(7));
            if (ans == 1)
            {
                RadioButton1.Checked = true;
                RadioButton1.Checked = false;
                RadioButton1.Checked = false;
                RadioButton1.Checked = false;

            }
            if (ans == 2)
            {
                RadioButton1.Checked = false;
                RadioButton1.Checked = true;
                RadioButton1.Checked = false;
                RadioButton1.Checked = false;

            }
            if (ans == 3)
            {
                RadioButton1.Checked = false;
                RadioButton1.Checked = false;
                RadioButton1.Checked = true;
                RadioButton1.Checked = false;

            }
            if (ans == 4)
            {
                RadioButton1.Checked = false;
                RadioButton1.Checked = false;
                RadioButton1.Checked = false;
                RadioButton1.Checked = true;

            }

        }
        con.Close();

    }
  /*  protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
            ans = 1;
        if (RadioButton2.Checked == true)
            ans = 2;
        if (RadioButton3.Checked == true)
            ans = 3;
        if (RadioButton4.Checked == true)
            ans = 4;
        con.Open();
        qry = "update question set choiced='" + opt4.Text + "' where qid=" + qid;
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();

        con.Close();

    }*/
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        qry = "delete from question where qid=" + qid;
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("paperview.aspx?settype=" + settype);
    }
}