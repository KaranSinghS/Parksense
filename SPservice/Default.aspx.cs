using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
            Users user = new Users();
            if (user.checkValue("MobileNo", TextBox1.Text))
            {
                string[] data = user.GetValues("MobileNo", TextBox1.Text, 5);
                if (data[4].Equals(TextBox2.Text))
                {
                    Session["id"] = data[0];
                    Session["nm"] = data[1];
                    Response.Redirect("uHome.aspx");
                }
                else
                {
                    Literal1.Text = "Invalid Mobile no. or password";
                }
            }
            else
            {
                Literal1.Text = "Invalid Mobile no. or password";
            }
        
    }
}