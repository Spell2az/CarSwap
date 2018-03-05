using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Area_Default : System.Web.UI.Page
{
    private string _userId;
    protected void Page_Load(object sender, EventArgs e)
    {

        _userId = Session["user_id"].ToString();
        Repeater1.DataSource = GetUserCarCollection(_userId);
        Repeater1.DataBind();
    }

    private DataTable GetUserCarCollection(string userId)
    {
        var dc = new DataConnection();
        dc.AddParameter("@user_id", userId);
        dc.Execute("sproc_getUserCarCollection");

        return dc.DataTable;
    }

    protected void DeleteCarHandler(object sender, EventArgs e)
    {
        LinkButton lb = sender as LinkButton;
        int carId = Convert.ToInt32(lb.CommandArgument);
        DeleteCar(carId);
        Repeater1.DataSource = GetUserCarCollection(_userId);
        Repeater1.DataBind();
    }

    private void DeleteCar(int carId)
    {
        var dc = new DataConnection();
        dc.AddParameter("@car_id", carId);
        dc.Execute("sproc_DeleteCar");
    }

    protected void EditCarHandler(object sender, EventArgs e)
    {
        LinkButton lb = sender as LinkButton;
        int carId = Convert.ToInt32(lb.CommandArgument);
        Response.Redirect("EditCar.aspx?carId="+carId);
    }
}