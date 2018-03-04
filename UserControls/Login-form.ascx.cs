using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Login_form : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var security = new Security();
        var email = txtEmail.Text;
        var password = txtPassword.Text;
        if (security.Login(email, password))
        {
            FormsAuthentication.RedirectFromLoginPage(email, false);
        }
        else
        {
            lblLoginMessage.Text = "Invalid credentials. Please try again.";
        }
    }
}