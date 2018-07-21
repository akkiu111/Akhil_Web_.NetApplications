<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="float: left; width: 35%; height: 640px">
            <asp:Panel ID="Panel1" runat="server">
                <h2>Login Page</h2>
                <hr />
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="#FF3300" Display="static" InitialValue="" ValidationGroup="panel1vg" ErrorMessage="Username is required">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Username length should be minimum of 7 and maximum of 25 with letters, numbers, special characters" ControlToValidate="TextBox1" ValidationExpression="^(?=.*[a-zA-Z\d].*)[a-zA-Z\d!@#$%&*]{7,25}$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="#FF3300" InitialValue="" ErrorMessage="Password is required" ValidationGroup="panel1vg" Display="static">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Password should be between 6-15 character in length with at least one number, one letter" ControlToValidate="TextBox2" ValidationExpression="^(?=.*\d).{6,15}$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="New User" OnClick="Button1_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="LogIn" OnClick="Button2_Click" CausesValidation="true" ValidationGroup="panel1vg" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Text="Forgot Password" OnClick="Button4_Click" />
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server">
                <h2>Registration Page</h2>
                <hr />
                <br />
                <br />
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Username"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="#FF3300" ControlToValidate="TextBox3" InitialValue="" ValidationGroup="allvg" ErrorMessage="Username is required" Display="static">*</asp:RequiredFieldValidator>
                <br />

                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Username length should be minimum of 7 and maximum of 25" ControlToValidate="TextBox3" ValidationGroup="allvg" ValidationExpression="^(?=.*[a-zA-Z\d].*)[a-zA-Z\d!@#$%&*]{7,25}$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>


                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ForeColor="#FF3300" InitialValue="" ValidationGroup="allvg" ErrorMessage="Password is required" Display="static">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationGroup="allvg" ErrorMessage="Password should be between 6-15 character in length with at least one number, one letter" ControlToValidate="TextBox4" ValidationExpression="^(?=.*\d).{6,15}$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Re-enter Password" TextMode="Password"></asp:TextBox>


                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ForeColor="#FF3300" InitialValue="" ValidationGroup="allvg" ErrorMessage="Re-enter the Password" Display="static">*</asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox5" ValidationGroup="allvg" ErrorMessage="Passwords doesn't match" ControlToCompare="TextBox4" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <asp:TextBox ID="TextBox6" runat="server" placeholder="Email"></asp:TextBox>


                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ForeColor="#FF3300" InitialValue="" ValidationGroup="allvg" ErrorMessage="Email is required" Display="static">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ValidationGroup="allvg" ErrorMessage="Please enter correct email format. For example: 'akhil@imcs.com' or ' akhil12@imcs.co' or 'akhil.k@imcs.edu'" ControlToValidate="TextBox6" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />


                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack ="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                  <asp:ListItem>Country</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />

                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>State</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <br />

                <asp:Button ID="Button5" runat="server" Text="Back" OnClick="Button5_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Text="Submit" OnClick="Button6_Click" CausesValidation="true" ValidationGroup="allvg" />
                &nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" Text="Clear" OnClick="Button7_Click" />
                &nbsp;&nbsp;
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server">
                <h2>Password Recovery Page</h2>
                <hr />
                <br />
                <br />
                <asp:TextBox ID="TextBox7" runat="server" placeholder="Username"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ForeColor="#FF3300" InitialValue="" ValidationGroup="allvg" ErrorMessage="Username is required" Display="static">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Username length should be minimum of 7 and maximum of 25" ControlToValidate="TextBox7" ValidationExpression="^(?=.*[a-zA-Z\d].*)[a-zA-Z\d!@#$%&*]{7,25}$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button8" runat="server" Text="Back" OnClick="Button8_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" Text="Submit" OnClick="Button9_Click" CausesValidation="true" ValidationGroup="allvg" />
            </asp:Panel>
            <br />
        </div>
        <div style="float: right; width: 65%; height: 640px">
            <asp:Panel ID="Panel4" runat="server">
                <br />
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="allvg" ForeColor="Red" />
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="panel1vg" ForeColor="Red" />
            </asp:Panel>

        </div>
    </form>
</body>
</html>
