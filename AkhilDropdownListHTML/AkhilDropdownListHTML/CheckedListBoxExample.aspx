<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckedListBoxExample.aspx.cs" Inherits="AkhilDropdownListHTML.CheckedListBoxExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; font-size: xx-large">
            CheckBoxList Example
        </div>
        <br />
        <div style="font-size: large">
            <table >
                <tr>
                    <td>Select Your Movie:
            <br />
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                            <asp:ListItem>The Dark Knight Rises</asp:ListItem>
                            <asp:ListItem>Matrix</asp:ListItem>
                            <asp:ListItem>Interstellar</asp:ListItem>
                            <asp:ListItem>Predestination</asp:ListItem>
                            <asp:ListItem>LionKing</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>       
                    <td>Your Selected Movie : 
            <br />
                        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                    </td>
               </tr>
            </table>
        </div>
    </form>
</body>
</html>
