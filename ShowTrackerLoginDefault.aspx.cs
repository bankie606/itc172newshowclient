using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowTrackerLoginDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Login();
    }

    protected void Login()
    {
        ShowTrackerServiceReference1.ShowTrackerServiceClient rs =
            new ShowTrackerServiceReference1.ShowTrackerServiceClient();
        int key = rs.VenueLogin(Username.Text, Password.Text);
        if (key != 0)
        {
            ErrorLabel.Text = "Welcome";
            Session["UserKey"] = key;
            Response.Redirect("addshow.aspx");
        }
        else
        {
            ErrorLabel.Text = "Invalid Login";
        }

    }
}