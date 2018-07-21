using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;   

public partial class FeedbackForm : System.Web.UI.Page
{
    int Trainerid, gettrainerid;
    int Questionid, getquestionid;
    int Feedback;

    Dictionary<int, int> Answers = new Dictionary<int, int>();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void ConnectionDB()
    {
        string FdConnstring = WebConfigurationManager.ConnectionStrings["FeedbackDataConn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(FdConnstring))
        {
            con.Open();
            using (SqlCommand setcmd = new SqlCommand("sp_SetFeedback", con))
            {
                setcmd.CommandType = CommandType.StoredProcedure;
                setcmd.Parameters.AddWithValue("@trainerid", Trainerid);
                setcmd.Parameters.AddWithValue("@questionid", Questionid);
                setcmd.Parameters.AddWithValue("@feedback", Feedback);
                setcmd.ExecuteNonQuery();
            } 
        }
       
        //DataSet ds = new DataSet();
        //da.Fill(ds);

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Answers.Add(int.Parse(HFQ1.Value), int.Parse(RBL1.SelectedValue));
        Answers.Add(int.Parse(HFQ2.Value), int.Parse(RBL2.SelectedValue));
        Answers.Add(int.Parse(HFQ3.Value), int.Parse(RBL3.SelectedValue));
        Answers.Add(int.Parse(HFQ4.Value), int.Parse(RBL4.SelectedValue));
        Answers.Add(int.Parse(HFQ5.Value), int.Parse(RBL5.SelectedValue));
        Answers.Add(int.Parse(HFQ6.Value), int.Parse(RBL6.SelectedValue));
        Answers.Add(int.Parse(HFQ7.Value), int.Parse(RBL7.SelectedValue));
        Answers.Add(int.Parse(HFQ8.Value), int.Parse(RBL8.SelectedValue));
        Answers.Add(int.Parse(HFQ9.Value), int.Parse(RBL9.SelectedValue));
        foreach (KeyValuePair<int, int> pair in Answers)
        {
            Trainerid = int.Parse(DDLtrainer.SelectedItem.Value);
            Questionid = pair.Key;
            Feedback = pair.Value;
            ConnectionDB();
        }
        
    }





        
    protected void Btnget_Click(object sender, EventArgs e)
    {
        string FdConnstring = WebConfigurationManager.ConnectionStrings["FeedbackDataConn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(FdConnstring))
        {
            con.Open();
            using (SqlCommand getcmd = new SqlCommand("sp_GetFeedback", con))
            {
                getcmd.CommandType = CommandType.StoredProcedure;
                getcmd.Parameters.AddWithValue("@trainerid", gettrainerid);
                getcmd.Parameters.AddWithValue("@questionid", getquestionid);               
                getcmd.ExecuteNonQuery();
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    getcmd.Connection = con;
                    sda.SelectCommand = getcmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }

    protected void DDLtrainer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}