<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinalPage.aspx.cs" Inherits="FinalPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
                &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Your Email: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="Label4" runat="server" ></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
