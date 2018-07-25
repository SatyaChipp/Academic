using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class blog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Roles.IsUserInRole(User.Identity.Name, "Admin"))
        //{
        //    GridView1.AutoGenerateEditButton = true;
        //}
        //if (Roles.IsUserInRole(User.Identity.Name, "User"))
        //{
        //    InsertButton.Visible = true;
        //}
    }
    //protected void EditButton_Click(object sender, EventArgs e)
    //{
    //    ListView1.ItemTemplate = ListView1.EditItemTemplate;
    //}

    //protected void InsertButton_Click(object sender, EventArgs e)
    //{
    //    ListView1.ItemTemplate = ListView1.InsertItemTemplate;
    //}
}