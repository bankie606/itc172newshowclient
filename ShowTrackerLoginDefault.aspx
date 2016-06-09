<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTrackerLoginDefault.aspx.cs" Inherits="ShowTrackerLoginDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Show Tracker Client Assignment</title>
   <link rel="stylesheet" href="css/StyleSheet.css" />
</head>
<body class="animateme">
    <form id="form1" runat="server">
    <div>
        <h1>LOGIN OR REGISTER</h1>
        <table class="animateme2">
            <tr>
            <td>USER NAME:</td>
            <td>
        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            </td>
                </tr>
            <tr>
        <td>PASSWORD:</td>
                <td>
                    <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                </td>
        </tr>
            <tr>
            <td>
                <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />

           </td>
        <td>
            <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>

        </td>
           
                </tr> </table>
        <asp:LinkButton ID="RegisterLink" runat="server" PostBackUrl="register.aspx">Click Here to Register</asp:LinkButton>
    </div>
    </form>
</body>
</html>
