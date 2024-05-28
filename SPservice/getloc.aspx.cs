using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Systems.Utility;
public partial class getloc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["lt"].Length>2)
        {
            DataFile.WriteToFile(Server.MapPath("~/loc.txt"), Request.QueryString["lt"]+"a"+ Request.QueryString["lg"]);
        }
    }
}