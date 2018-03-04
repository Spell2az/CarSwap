using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Area_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       SearchCars("", "", "");
    }

    protected void btnSeachCars_Click(object sender, EventArgs e)
    {
        SearchCars(txtMake.Text, txtModel.Text, txtColor.Text);

    }

    private void SearchCars(string  make, string model, string color)
    {
        var dc = new DataConnection();
        dc.AddParameter("@make", make);
        dc.AddParameter("@model", model);
        dc.AddParameter("@color", color);
        dc.Execute("sproc_CarFilter");
        foreach (DataRow row in dc.DataTable.Rows)
        {
            row["Image"] = "~/App_Assets/img/db_img/" + row["Image"];
        }


        GridView1.DataSource = dc.DataTable;
        GridView1.DataBind();
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    protected void btnClearSearch_OnClick(object sender, EventArgs e)
    {
        txtModel.Text = "";
        txtMake.Text = "";
        txtColor.Text = "";
        SearchCars("", "", "");
    }
}