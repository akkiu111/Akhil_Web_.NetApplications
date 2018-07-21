using System;

namespace StudentPortal
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Button1.Attributes.Add("onclick", "return javaScriptValidation();");
            //Button2.Attributes.Add("onclick", "cancellation();");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("#");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("#");

        }
    }
}