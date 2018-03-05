using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Area_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SetUserSessionNameAndId(User.Identity.Name);
        //
    }

    private void SetUserSessionNameAndId(string loggedInUserEmail)
    {
        var dc = new DataConnection();
        dc.AddParameter("@user_email", loggedInUserEmail);
        dc.Execute("sproc_getUserNameByEmail");

        
        Session["user_name"] = dc.DataTable.Rows[0]["first_name"].ToString();
        Session["user_id"] = dc.DataTable.Rows[0]["user_id"].ToString();
    }
}