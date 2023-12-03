using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogout : System.Web.UI.Page
{
    HttpCookie ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        ad.Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("login.aspx");

    }
}