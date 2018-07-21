using System;
using System.Data;

namespace project2020
{
    public partial class StudentsTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet students = new DataSet();
            students.ReadXml(Server.MapPath("~/StudentData.xml"));
            grdStudents.DataSource = students;
            grdStudents.DataBind();
        }
    }
}