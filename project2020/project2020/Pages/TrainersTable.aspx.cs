using System;
using System.Data;

namespace project2020
{
    public partial class TrainersTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet trainers = new DataSet();
            trainers.ReadXml(Server.MapPath("~/TrainerData.xml"));
            grdTrainers.DataSource = trainers;
            grdTrainers.DataBind();
        }
    }
}