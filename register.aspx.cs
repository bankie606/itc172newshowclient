using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class css_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        RegisterVenue();
    }

    protected void RegisterVenue()
    {
        ShowTrackerServiceReference1.ShowTrackerServiceClient lsc =
            new ShowTrackerServiceReference1.ShowTrackerServiceClient();
       
        ShowTrackerServiceReference1.Venue rv = new ShowTrackerServiceReference1.Venue();
        rv.VenueName = VenueNameTextBox.Text;
        rv.VenueAddress = VenueAddressTextBox.Text;
        rv.VenueCity = VenueCityTextBox.Text;
        rv.VenueState = VenueStateTextBox.Text;
        rv.VenueZipCode = VenueZipcodeTextBox.Text;
        //convert age restriction string to int
        int numVal;
        Int32.TryParse(VenueAgeRestrictionTextBox.Text, out numVal);
        rv.VenueAgeRestriction = numVal;

        rv.VenueEmail = EmailTextBox.Text;
        rv.VenuePhone = VenuePhoneNumberTextBox.Text;
        rv.VenueWebPage = VenueWebPageTextBox.Text;
        ShowTrackerServiceReference1.VenueLogin vl = new ShowTrackerServiceReference1.VenueLogin();
        vl.VenueLoginUserName = VenueUsernameTextBox.Text;
        vl.VenueLoginPasswordPlain = PasswordTextBox.Text;
        

        bool result = lsc.RegisterVenue(rv, vl);

        if (result)
        {
            Response.Redirect("addshow.aspx");

}
        else
        {
            ErrorLabel.Text = "Registration Failed";
        }
    }

}