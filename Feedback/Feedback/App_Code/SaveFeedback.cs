using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;


/// Summary description for SaveFeedback

public class SaveFeedback
{
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

    }
}