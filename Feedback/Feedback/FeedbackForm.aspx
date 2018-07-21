<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 86%;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            font-weight: normal;
        }
        .auto-style7 {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF9900;
        }
        .auto-style8 {
            font-size: small;
            font-family: "Times New Roman", Times, serif;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #FF9900;
        }
        .auto-style11 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FF9933;
        }
        .auto-style12 {
            font-size: small;
            font-family: "Times New Roman", Times, serif;
            color: #000000;
        }
        .auto-style13 {
            text-align: left;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FF9933;
        }
        .auto-style14 {
            text-align: right;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FF9933;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style16 {
            font-weight: normal;
            color: #3399FF;
        }
    </style>
</head>
<body>
    <asp:Panel ID="Panel1" runat="server">
    <form id="form1" runat="server">       
        <div>
            <h2>
                <div class="auto-style3" style="color: #3399FF">
                    Feedback
                </div>
                <table align="center" class="auto-style2">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text="Trainer:"></asp:Label>
                            <asp:DropDownList ID="DDLtrainer" runat="server" CssClass="auto-style15" OnSelectedIndexChanged="DDLtrainer_SelectedIndexChanged">
                                <asp:ListItem Value="0">-Select-</asp:ListItem>
                                <asp:ListItem Value="1">Trainer1</asp:ListItem>
                                <asp:ListItem Value="2">Trainer2</asp:ListItem>
                                <asp:ListItem Value="3">Trainer3</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <div class="auto-style9">
                                <strong><span class="auto-style7">1. </span>
                                <asp:Label ID="Lblquestion1" runat="server" CssClass="auto-style10" Text="The Trainer thoroughly covered the material in the course"></asp:Label>
                                <asp:HiddenField ID="HFQ1" runat="server" Value="1" />
                                <br />
                                <asp:RadioButtonList ID="RBL1" runat="server" CssClass="auto-style8">
                                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                                    <asp:ListItem Value="4">Good</asp:ListItem>
                                    <asp:ListItem Value="3">Average</asp:ListItem>
                                    <asp:ListItem Value="2">Bad</asp:ListItem>
                                    <asp:ListItem Value="1">Very Bad</asp:ListItem>
                                </asp:RadioButtonList>
                                </strong>
                            </div>
                            </strong></td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><span class="auto-style11"><strong>2.</strong></span><strong><span class="auto-style11"> </span></strong><span class="auto-style11"><strong>The Trainer was knowledgeable on the course content<asp:HiddenField ID="HFQ2" runat="server" Value="2" />
                            <asp:RadioButtonList ID="RBL2" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </strong></span></td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>3. The Trainer spoke clearly - not too slow, not too fast<span class="auto-style11"><asp:HiddenField ID="HFQ3" runat="server" Value="3" />
                            </span></strong><span class="auto-style11"><strong><asp:RadioButtonList ID="RBL3" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </strong></span></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>4. The session started and ended on time<span class="auto-style11"><asp:HiddenField ID="HFQ4" runat="server" Value="4" />
                            <asp:RadioButtonList ID="RBL4" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>5. The session was interactive<span class="auto-style11"><asp:HiddenField ID="HFQ5" runat="server" Value="5" />
                            <asp:RadioButtonList ID="RBL5" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>6. The session content that was presented was what I expected based on the course description<span class="auto-style11"><asp:HiddenField ID="HFQ6" runat="server" Value="6" />
                            <asp:RadioButtonList ID="RBL6" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>7. The Trainer provided opportunities for the participants to ask questions<span class="auto-style11"><asp:HiddenField ID="HFQ7" runat="server" Value="7" />
                            <asp:RadioButtonList ID="RBL7" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>8. I would recommend this course to other employees<span class="auto-style11"><asp:HiddenField ID="HFQ8" runat="server" Value="8" />
                            <asp:RadioButtonList ID="RBL8" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>9. I would take another course from this Trainer<span class="auto-style11"><asp:HiddenField ID="HFQ9" runat="server" Value="9" />
                            <asp:RadioButtonList ID="RBL9" runat="server" CssClass="auto-style12">
                            <asp:ListItem Value="5">Excellent</asp:ListItem>
                            <asp:ListItem Value="4">Good</asp:ListItem>
                            <asp:ListItem Value="3">Average</asp:ListItem>
                            <asp:ListItem Value="2">Bad</asp:ListItem>
                            <asp:ListItem Value="1">Very Bad</asp:ListItem>
                            </asp:RadioButtonList>
                            </span></strong></td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                </table>
                <h2></h2>
                <h2></h2>
                <h2></h2>
                <h2></h2>
                <h2></h2>
            </h2>

        </div>
        <asp:Panel ID="Panel2" runat="server" Visible="False">

            <h3 class="auto-style16"><em><strong>To Get Feedback Select Trainer and Question number..</strong></em></h3>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Trainer:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">Trainer1</asp:ListItem>
                <asp:ListItem Value="2">Trainer2</asp:ListItem>
                <asp:ListItem Value="3">Trainer3</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Question Num:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="Btnget" runat="server" OnClick="Btnget_Click" Text="Get " />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </asp:Panel>
    </form>
    </asp:Panel>
</body>
</html>
