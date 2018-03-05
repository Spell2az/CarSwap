using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Area_MasterPageUserArea : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var ln = new LoginName();
        lblUserName.Text = $"Hello {Session["user_name"].ToString()}";
    }

    protected void btnSignOut_OnClick(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/");
    }


    protected void lbtnMyCars_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("MyCars.aspx");
    }
}
