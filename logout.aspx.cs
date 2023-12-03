using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    HttpCookie ck;
    protected void Page_Load(object sender, EventArgs e)
    {
        ck = Request.Cookies["cook"];
        ck.Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("login.aspx");


    }
}