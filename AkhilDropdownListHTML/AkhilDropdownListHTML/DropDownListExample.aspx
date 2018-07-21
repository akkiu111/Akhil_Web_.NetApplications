<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownListExample.aspx.cs" Inherits="AkhilDropdownListHTML.DropDownListExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          Select Your Course Name  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>--Select Course--</asp:ListItem>
                 <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>Oracle</asp:ListItem>
                <asp:ListItem>Csharp</asp:ListItem>
                <asp:ListItem>PHP</asp:ListItem>
                <asp:ListItem>CSharp</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Your Selected Course : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
