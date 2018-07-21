using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPage : System.Web.UI.Page
{
 



    protected void Page_Load(object sender, EventArgs e)
    {
     
        if (!IsPostBack)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;

          
        }
        



    }

   



    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["uname"] != null && Session["pwd"] != null)
        {

            if ((TextBox1.Text == Session["uname"].ToString()) && (TextBox2.Text == Session["pwd"].ToString()))
            {

                Response.Redirect("FinalPage.aspx");
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "User doesn't exist. Please Register by clicking on New User";
                TextBox1.Text = "";
                TextBox2.Text = "";

            }
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "User doesn't exist. Please Register by clicking on New User";
            TextBox1.Text = "";
            TextBox2.Text = "";

        }



    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label2.Visible = false;
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {

        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Session["uname"] = TextBox3.Text.ToLower();
        Session["pwd"] = TextBox4.Text;
        Session["mail"] = TextBox6.Text.ToLower();
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        ClearInputs(Page.Controls);
    }
    void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
            {
                ((TextBox)ctrl).Text = string.Empty;
            }
            ClearInputs(ctrl.Controls);
        }

    }


    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        ValidationSummary1.Visible = true;

    }

    protected void Button9_Click(object sender, EventArgs e)
    {

        if (Session["uname"] != null)
        {

            if (TextBox7.Text.ToLower() == Session["uname"].ToString())
            {
                Label1.Visible = true;
                Label1.Text = "Your password is: " + Session["pwd"].ToString();
                ValidationSummary1.Visible = false;
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "User doesn't exist. ";
                TextBox7.Text = "";
                ValidationSummary1.Visible = false;



            }
        }
        else
        {
            Label3.Visible = true;
            Label3.Text = "User doesn't exist.";
            TextBox7.Text = "";
            ValidationSummary1.Visible = false;




        }
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }







    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        if (DropDownList1.SelectedValue.Equals("USA"))
        {

            CountryUs();
        }

        else if (DropDownList1.SelectedValue.Equals("India"))
        {
            CountryInd();
        }

    }

    protected  List<string> CountryUs()
    {
        List<string> US = new List<string>();

        US.Add("Alaska");
        US.Add("Arizona");
        US.Add("Arkansas");
        US.Add("California");
        US.Add("Colorado");
        US.Add("Connecticut");
        US.Add("Delaware");
        US.Add("District Of Columbia");
        US.Add("Florida");
        US.Add("Georgia");
        US.Add("Hawaii");
        US.Add("Idaho");
        US.Add("Illinois");
        US.Add("Indiana");
        US.Add("Iowa");
        US.Add("Kansas");
        US.Add("Kentucky");
        US.Add("Louisiana");
        US.Add("Maine");
        US.Add("Maryland");
        US.Add("Massachusetts");
        US.Add("Michigan");
        US.Add("Minnesota");
        US.Add("Mississippi");
        US.Add("Missouri");
        US.Add("Montana");
        US.Add("Nebraska");
        US.Add("Nevada");
        US.Add("New Hampshire");
        US.Add("New Jersey");
        US.Add("New Mexico");
        US.Add("New York");
        US.Add("North Carolina");
        US.Add("North Dakota");
        US.Add("Ohio");
        US.Add("Oklahoma");
        US.Add("Oregon");
        US.Add("Pennsylvania");
        US.Add("Rhode Island");
        US.Add("South Carolina");
        US.Add("South Dakota");
        US.Add("Tennessee");
        US.Add("Texas");
        US.Add("Utah");
        US.Add("Vermont");
        US.Add("Virginia");
        US.Add("Washington");
        US.Add("West Virginia");
        US.Add("Wisconsin");
        US.Add("Wyoming");
        DropDownList1.DataSource = US;
        DropDownList2.DataBind();
        return US;


    }

    protected List<string> CountryInd()
    {
        List<string> IND = new List<string>();



        IND.Add("Andhra Pradesh");
        IND.Add("Arunachal Pradesh");
        IND.Add("Assam");
        IND.Add("Bihar");
        IND.Add("Chhattisgarh");
        IND.Add("Goa");
        IND.Add("Gujarat");
        IND.Add("Haryana");
        IND.Add("Himachal Pradesh");
        IND.Add("Jammu & Kashmir");
        IND.Add("Jharkhand");
        IND.Add("Karnataka");
        IND.Add("Kerala");
        IND.Add("Madhya Pradesh");
        IND.Add("Maharashtra");
        IND.Add("Manipur");
        IND.Add("Meghalaya");
        IND.Add("Mizoram");
        IND.Add("Nagaland");
        IND.Add("Orissa");
        IND.Add("Punjab");
        IND.Add("Rajasthan");
        IND.Add("Sikkim");
        IND.Add("Tamil Nadu");
        IND.Add("Telangana");
        IND.Add("Tripura");
        IND.Add("Uttarakhand");
        IND.Add("Uttar Pradesh");
        IND.Add("West Bengal");
        DropDownList1.DataSource = IND;
        DropDownList2.DataBind();
        return IND;
    }
}