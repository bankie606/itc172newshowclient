using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addshow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        AddShow();
    }

    protected void AddShow()
    {
        ShowTrackerServiceReference1.ShowTrackerServiceClient lsc =
        new ShowTrackerServiceReference1.ShowTrackerServiceClient();

        ShowTrackerServiceReference1.Show ns = new ShowTrackerServiceReference1.Show();
        ns.ShowName = ShowNameTextBox.Text;
        ns.ShowTicketInfo = TicketPriceTextBox.Text;

        ShowTrackerServiceReference1.ShowDetail sd = new ShowTrackerServiceReference1.ShowDetail();
        sd.ShowDetailAdditional = ShowDetailTextBox.Text;

        bool result = lsc.AddShow(ns, sd);

        if (result)
        {
            Response.Redirect("success.aspx");
        }
        else
        {
            ErrorLabel.Text = "Show Add Failed";
        }
    }

    protected void ArtistList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}