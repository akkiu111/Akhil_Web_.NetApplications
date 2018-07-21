<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JQueryAjaxCalling.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1">
        <div>

            <input id="txtname" type="text" placeholder="Name" /> <br />
            <input id="txtage" type="text" placeholder="Age" /><br />
        <%--    <input id="rdgender1" name="gender" class="gender" type="radio" value="male"/>male<br />
            <input id="rdgender2" name="gender" class="gender" type="radio" value="female"/>female<br />
            <input id="rdgender3" name="gender" class="gender" type="radio" value="other" checked="checked"/>other<br />--%>

            <input id="btn" type="button" value="submit" onclick="insertion()" />

        </div>
    </form>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.map"></script>--%>
    <script src="ajaxcalling.js"></script>

</body>
</html>
