using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Users user = new Users();
        try
        {
            if (TextBox4.Text.Equals(TextBox5.Text))
            {
                if (!user.checkValue("MobileNo", TextBox3.Text))
                {
                    user.Insert("-1", TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
                    Literal1.Text = "Registered Successfully";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                }
                else
                {
                    Literal1.Text = "Mobile No. Already Registered";
                }
            }
            else
            {
                Literal1.Text = "Password Mismatch";
            }
        }
        catch { }
    }
}