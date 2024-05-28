using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string x = "";
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        x = "";
        Literal1.Text = DateTime.Now.ToLongDateString() + " " + DateTime.Now.ToShortTimeString();
        Random r = new Random();
        x += r.Next(0, 2) + "a";
        x += r.Next(0, 2) + "a";
        x += r.Next(0, 2) + "a";
        x += r.Next(0, 2) + "a";
        x += r.Next(0, 2) + "a";
        x += r.Next(0, 2);
        PZoneTable pt = new PZoneTable();
        string data = x;
        string[] ndata = data.Split('a');
        pt.updateInt("Id", "1", "Status", int.Parse(ndata[0]));
        pt.updateInt("Id", "2", "Status", int.Parse(ndata[1]));
        pt.updateInt("Id", "3", "Status", int.Parse(ndata[2]));
        pt.updateInt("Id", "4", "Status", int.Parse(ndata[3]));
        pt.updateInt("Id", "5", "Status", int.Parse(ndata[4]));
        pt.updateInt("Id", "6", "Status", int.Parse(ndata[5]));
    }
}