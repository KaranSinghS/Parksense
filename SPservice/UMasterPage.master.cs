using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nm"] != null)
        {
            Literal1.Text = Session["nm"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
}
