using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Area_EditCar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var carId = Request.QueryString["carId"];
    }




}