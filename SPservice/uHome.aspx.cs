using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Systems.Utility;
public partial class uHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string da = DataFile.ReadFile(Server.MapPath ("~/loc.txt"));
        if (da.Length > 2)
        {
            string[] data = da.Split('a');
            lat = data[0];
            log = data[1];
        }
        AreaTable at = new AreaTable();
        DataTable dt = at.GetTable("AreaTable");
        Area1[] area = new Area1[dt.Rows.Count];
        for (int i = 0; i < area.Length; i++)
        {
            area[i] = new Area1();
            area[i].PlaceName = dt.Rows[i][1].ToString();
            area[i].KM = GFG.distance(double.Parse(lat), double.Parse(log), double.Parse(dt.Rows[i][2].ToString()), double.Parse(dt.Rows[i][3].ToString()));
        }
        Area1.Sort(area);
        Literal1.Text = "Nearest parking place from your location";
        for (int i = 0; i < area.Length; i++)
        {
            //Literal1.Text += area[i].PlaceName + " " + area[i].KM + " KM<br>";
            TableCell c1 = new TableCell();
            c1.Text = area[i].PlaceName;
            TableCell c2 = new TableCell();
            c2.Text = area[i].KM+" KM";
            TableRow r = new TableRow();
            r.Cells.Add(c1);
            r.Cells.Add(c2);
            Table1.Rows.Add(r);
        }
    }
    string lat = "21.1085557";
    string log = "79.0027327";
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Literal5.Text = DateTime.Now.ToString();
        PZoneTable pzt = new PZoneTable();
        DataTable data =pzt.GetTable ("PZoneTable");
        if (data.Rows[0][3].ToString ().Equals("1"))
        {
            Label1.Text = "Not Available";
            Label1.ForeColor = System.Drawing.Color.Red ;
        }
        else
        {
            Label1.Text = "Available";
            Label1.ForeColor = System.Drawing.Color.Green ;
        }
        if (data.Rows[1][3].ToString().Equals("1"))
        {
            Label2.Text = "Not Available";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label2.Text = "Available";
            Label2.ForeColor = System.Drawing.Color.Green;
        }
        if (data.Rows[2][3].ToString().Equals("1"))
        {
            Label3.Text = "Not Available";
            Label3.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label3.Text = "Available";
            Label3.ForeColor = System.Drawing.Color.Green;
        }
        if (data.Rows[3][3].ToString().Equals("1"))
        {
            Label4.Text = "Not Available";
            Label4.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label4.Text = "Available";
            Label4.ForeColor = System.Drawing.Color.Green;
        }
        if (data.Rows[4][3].ToString().Equals("1"))
        {
            Label5.Text = "Not Available";
            Label5.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label5.Text = "Available";
            Label5.ForeColor = System.Drawing.Color.Green;
        }
        if (data.Rows[5][3].ToString().Equals("1"))
        {
            Label6.Text = "Not Available";
            Label6.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label6.Text = "Available";
            Label6.ForeColor = System.Drawing.Color.Green;
        }
    }
}