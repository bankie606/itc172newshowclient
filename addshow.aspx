<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addshow.aspx.cs" Inherits="addshow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Show</title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <div class="animateme2">
    <h1 class="animateme">Add Show</h1>
       <table>
    <tr>
        <td>Show Name</td>
        <td>
            <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Show Name is Required" ControlToValidate="ShowNameTextBox" Font-Bold="True"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>Ticket Price</td>
        <td>
            <asp:TextBox ID="TicketPriceTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ticket Price is Required" ControlToValidate="TicketPriceTextBox" Font-Bold="True"></asp:RequiredFieldValidator></td>
    </tr>
           <tr>
        <td>Additional Show Details</td>
        <td>
            <asp:TextBox ID="ShowDetailTextBox" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ticket Price is Required" ControlToValidate="ShowDetailTextBox" Font-Bold="True"></asp:RequiredFieldValidator></td>
    </tr>

         <tr>
             <td>
                 <asp:DropDownList ID="ArtistList1" runat="server" OnSelectedIndexChanged="ArtistList1_SelectedIndexChanged" DataSourceID="sdsArtists" DataTextField="ArtistName" DataValueField="ArtistKey"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsArtists" runat="server" SelectCommand="SELECT ArtistKey,ArtistName FROM Artist.dbo.Artists"></asp:SqlDataSource>
                 
                  </td>
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
