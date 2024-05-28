using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class getdata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BTable bt = new BTable();
        DataTable dt = bt.GetTable("BTable");
        DateTime now = Convert.ToDateTime(DateTime.Now);
        DateTime t1 = DateTime.Now;
        DateTime t2 = DateTime.Now;
        string x = "";
        int c = 0;
        foreach (DataRow dr in dt.Rows)
        {
            t1 = Convert.ToDateTime(dr[3].ToString());
            t2 = Convert.ToDateTime(dr[4].ToString());
            if ((t1.TimeOfDay< now.TimeOfDay)&& (now.TimeOfDay <= t2.TimeOfDay))
            {
                x += dr[7].ToString ()+dr[7]+dr[7]+"a";
                c++;
            } 
        }
        if(c==0)
        {
            x = "000a000a000a000";
        }
        else if(c==1)
        {
            x = x+"000a000a000";
        }
        else if (c == 2)
        {
            x = x + "000a000";
        }
        else if (c == 3)
        {
            x = x + "000";
        }
        else if (c == 2)
        {
            x = x.Substring(0, x.Length - 1);
        }
        Response.Write(x);
    }
}