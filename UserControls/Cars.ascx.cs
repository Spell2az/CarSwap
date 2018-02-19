using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Cars : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var dc = new DataConnection();
        
        dc.Execute("getCars");
        foreach (DataRow row in dc.DataTable.Rows)
        {
            row["Image"] ="~/App_Assets/img/db_img/"+ row["Image"];
        }

        
        GridView1.DataSource = dc.DataTable;
        GridView1.DataBind();
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
    }
}