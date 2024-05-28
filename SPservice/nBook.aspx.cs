using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
    }
    int tt = 0;
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedIndex == 0)
        {
            Label1.Text = "Parking1 Reserved for <br>ambulance vehicle";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            Label1.Text = "Parking2 Reserved for <br>VIP vehicle";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            DateTime dt1 = Convert.ToDateTime(TextBox1.Text);
            DateTime dt2 = Convert.ToDateTime(DateTime.Now.ToShortDateString());
            if (dt1 >= dt2)
            {
                dt1 = Convert.ToDateTime(TextBox2.Text);
                dt2 = Convert.ToDateTime(TextBox3.Text);
                TimeSpan d = dt2 - dt1;
                if (d.Minutes < 60 && d.Hours < 1)
                {
                    Label1.Text = "Invalid Time Booking. <br>Minimum booking time is 1 hour.";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    BTable bt = new BTable();
                    string pid = DropDownList1.SelectedValue;
                    tt = d.Minutes + d.Hours * 60;
                    bt.Insert("-1", Session["id"].ToString(), TextBox1.Text, TextBox2.Text, TextBox3.Text, tt.ToString(), "1", pid);
                    Label2.Text = "Booked Successfully";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
            }
            else
            {
                Label1.Text = "Invalid Date";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //BTable bt = new BTable();
        if (DropDownList1.SelectedIndex == 0)
        {
            Label2.Text = "Parking1 Reserved for <br>ambulance vehicle";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            Label2.Text = "Parking2 Reserved for <br>VIP vehicle";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
    }
}