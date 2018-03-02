using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_OnClick(object sender, EventArgs e)
    {
        var security = new Security();
        security.SignUp(txtEmail.Text, txtPassword.Text, txtPassword.Text, txtFirstName.Text, txtLastName.Text);
    }
}