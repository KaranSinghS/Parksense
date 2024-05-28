using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Systems.Utility;
public partial class setvalue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PZoneTable pt = new PZoneTable();
        string data = Request.QueryString["p"];
        DataFile.WriteToFile(Server.MapPath("~/data.txt"),data);
        string[] ndata = data.Split('a');
        pt.updateInt("Id", "1", "Status", int.Parse(ndata[0]));
        pt.updateInt("Id", "2", "Status", int.Parse(ndata[1]));
        pt.updateInt("Id", "3", "Status", int.Parse(ndata[2]));
        pt.updateInt("Id", "4", "Status", int.Parse(ndata[3]));
        pt.updateInt("Id", "5", "Status", int.Parse(ndata[4]));
        pt.updateInt("Id", "6", "Status", int.Parse(ndata[5]));
    }
}