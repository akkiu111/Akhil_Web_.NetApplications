using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkhilDropdownListHTML
{
    public partial class CheckBoxExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        double BillAmount;
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            BillAmount = double.Parse(TextBox1.Text);
            if(CheckBox1.Checked == true)
            {
                BillAmount = BillAmount + 1000;
            }
            else
            {
                BillAmount = BillAmount - 1000;
            }
            TextBox1.Text = BillAmount.ToString();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            BillAmount = double.Parse(TextBox1.Text);
            if (CheckBox2.Checked == true)
            {
                BillAmount = BillAmount + 2000;
            }
            else
            {
                BillAmount = BillAmount - 2000;
            }
            TextBox1.Text = BillAmount.ToString();

        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            BillAmount = double.Parse(TextBox1.Text);
            if (CheckBox3.Checked == true)
            {
                BillAmount = BillAmount + 3000;
            }
            else
            {
                BillAmount = BillAmount - 3000;
            }
            TextBox1.Text = BillAmount.ToString();

        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            BillAmount = double.Parse(TextBox1.Text);
            if (CheckBox4.Checked == true)
            {
                BillAmount = BillAmount + 4000;
            }
            else
            {
                BillAmount = BillAmount - 4000;
            }
            TextBox1.Text = BillAmount.ToString();

        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            BillAmount = double.Parse(TextBox1.Text);
            if (CheckBox5.Checked == true)
            {
                BillAmount = BillAmount + 5000;
            }
            else
            {
                BillAmount = BillAmount - 5000;
            }
            TextBox1.Text = BillAmount.ToString();

        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            BillAmount = double.Parse(TextBox1.Text);
            if (CheckBox6.Checked == true)
            {
                BillAmount = BillAmount + 500;
            }
            else
            {
                BillAmount = BillAmount - 500;
            }
            TextBox1.Text = BillAmount.ToString();

        }
    }
}