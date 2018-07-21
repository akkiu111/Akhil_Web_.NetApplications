<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxExample.aspx.cs" Inherits="AkhilDropdownListHTML.CheckBoxExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; font-size:xx-large">
            <asp:Label ID="Label1" runat="server"   Text="">CheckBox Example</asp:Label>
<br />
            <br />
            </div>
            <div style="font-size:large">
<table style="width:50%;
    margin-left: auto;
    margin-right: auto">
<tr>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="MOUSE" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="KEYBOARD" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="SPEAKERS" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" />
                    </td>
                </tr>
<tr>
                    <td>
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="RAM" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox5" runat="server" Text="DESKTOP" AutoPostBack="True" OnCheckedChanged="CheckBox5_CheckedChanged" />
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox6" runat="server" Text="USB" AutoPostBack="True" OnCheckedChanged="CheckBox6_CheckedChanged" />
                    </td>
                </tr>
            </table>
                </div>
<br />
                <br />
                            <div style="text-align:center; font-size:larger">

            <asp:Label ID="Label2" runat="server" Text="Your Bill Amount: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Text="0"></asp:TextBox>
        </div>
    </form>
</body>
</html>
