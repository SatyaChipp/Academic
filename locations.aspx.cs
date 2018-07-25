using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Web.Security;

public partial class locations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Roles.IsUserInRole(User.Identity.Name, "Admin"))
        {
            AddClick.Visible = true;
        }
        else
        { AddClick.Visible = false; }
     
    }

    protected void Add_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        DetailsView1.Visible = true;
        DetailsView1.DefaultMode = DetailsViewMode.Insert;

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        DetailsView1.Visible = true;
        DetailsView1.DefaultMode = DetailsViewMode.ReadOnly;
          
        if (Roles.IsUserInRole(User.Identity.Name, "Admin"))
        {
            DetailsView1.DefaultMode = DetailsViewMode.Edit;
            
            
            DetailsView1.DataBind();
            
        }
    }
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {

        GridView1.DataBind();
        GridView1.Visible = true;
        DetailsView1.Visible = false;
    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.Visible = true;
        DetailsView1.Visible = false;
    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "Cancel")
        {
            GridView1.Visible = true;
            DetailsView1.Visible = false;
        }
    }
   

}