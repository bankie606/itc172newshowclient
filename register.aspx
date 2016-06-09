<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="css_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION PAGE</title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
        <td>Venue Name</td>
        <td>
            <asp:TextBox ID="VenueNameTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Venue Name is Required" ControlToValidate="VenueNameTextBox" Font-Bold="True"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>Address</td>
        <td>
            <asp:TextBox ID="VenueAddressTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Venue Address is Required" ControlToValidate="VenueAddressTextBox" Font-Bold="True"></asp:RequiredFieldValidator></td>
    </tr>
                 <tr>
        <td>City</td>
        <td>
            <asp:TextBox ID="VenueCityTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="City is Required" Font-Bold="true" ControlToValidate="VenueCityTextbox"></asp:RequiredFieldValidator></td>
    </tr>
                <tr>
        <td>State</td>
        <td>
            <asp:TextBox ID="VenueStateTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="State is Required" Font-Bold="true" ControlToValidate="VenueStateTextBox"></asp:RequiredFieldValidator></td>
    </tr>
                <tr>
        <td>Zip Code</td>
        <td>
            <asp:TextBox ID="VenueZipcodeTextBox" runat="server" ></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Zipcode is Required" Font-Bold="true" ControlToValidate="VenueZipcodeTextBox"></asp:RequiredFieldValidator></td>
    </tr>
             <tr>
        <td>Venue Web Page</td>
        <td>
            <asp:TextBox ID="VenueWebPageTextBox" runat="server" ></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Web Page is Required" Font-Bold="true" ControlToValidate="VenueWebPageTextBox"></asp:RequiredFieldValidator></td>
    </tr>
             <tr>
        <td>Age Restriction</td>
        <td>
            <asp:TextBox ID="VenueAgeRestrictionTextBox" runat="server" ></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Age Restriction is Required" Font-Bold="true" ControlToValidate="VenueAgeRestrictionTextBox"></asp:RequiredFieldValidator></td>
    </tr>
          <tr>
        <td>Phone Number</td>
        <td>
            <asp:TextBox ID="VenuePhoneNumberTextBox" runat="server" TextMode="Phone"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Phone Number is Required" Font-Bold="true" ControlToValidate="VenuePhoneNumberTextBox"></asp:RequiredFieldValidator></td>
    </tr>
            <tr>
        <td>User Name</td>
        <td>
            <asp:TextBox ID="VenueUsernameTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="User Name is Required" Font-Bold="true" ControlToValidate="VenueUsernameTextBox"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>E-Mail</td>
        <td>
            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" Font-Bold="true" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not a valid Email" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td>Password</td>
        <td>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is Required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>Confirm Password</td>
        <td>
            <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confirm Password" ControlToValidate="ConfirmTextBox"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Don't Match" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmTextBox"></asp:CompareValidator></td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
        <td>
            <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
    </div>
    </form>
</body>
</html>
