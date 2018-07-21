<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBoxExample.aspx.cs" Inherits="AkhilDropdownListHTML.ListBoxExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; font-size:xx-large">
            <asp:Label ID="Label1" runat="server" Text="Label">List Box Example</asp:Label>       
            </div>
        <br />
        <br />
        <div style="text-align:center; font-size:large">
            Select Any Course
            <br />
            <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>JAVA</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>C#</asp:ListItem>
                <asp:ListItem>ORACLE</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            Your Selected Course : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>       
        </div>
    </form>
</body>
</html>
