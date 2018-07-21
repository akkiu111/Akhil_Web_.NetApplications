<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="StudentPortal.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="~/Scripts/Script1.js"></script>
</head>
<body>
    <h1 class="text-success text-center">Login Page</h1><br/>
    <div class="container">


     <div class="col-lg-8 m-auto d-block">
    <form id="form1" runat="server">
        

				
				  <div class="form-group">
                      <asp:TextBox ID="emailid"  type="text" name="emailid" placeholder="Email (example: a@a.com)" class="form-control" autocomplete="off" runat="server" ></asp:TextBox>
                    <span id="semailid" class="text-danger font-weight-bold"> </span>

                </div>

                <div class="form-group">
                    <asp:TextBox ID="passwords" type="password" name="passwords" placeholder="Password" class="form-control" autocomplete="off" runat="server"></asp:TextBox>
                    <span id="spassword" class="text-danger font-weight-bold"> </span>

                </div>     
        <asp:Button ID="Button1" runat="server" type="submit" name="submit"  class="btn btn-success"   Text="Log In" OnClientClick="return javaScriptValidation()" />
        <asp:Button ID="Button2" runat="server" type="button"  name="cancel" class="btn btn-danger"   Text="Cancel" OnClientClick="alert()" />

    </form>
         </div>
        </div>
    
</body>
</html>
