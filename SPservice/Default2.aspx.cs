using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt1 = Convert.ToDateTime("12:00 AM");
        DateTime dt2 = Convert.ToDateTime("09:00 AM");
        DateTime dt3 = Convert.ToDateTime(TextBox2.Text );
        TimeSpan d = dt2 - dt1;
        //Literal1.Text = d.Hours + "h " + d.Minutes + " m" +" total minutes : "+((d.Hours *60)+d.Minutes );
        int t = ((d.Hours * 60) + d.Minutes);
        TimeSpan d1 = dt3 - dt1;
        int t1 = ((d1.Hours * 60) + d1.Minutes);
        Literal1.Text = t + " " + t1;
    }
}