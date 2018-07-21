using System;
using System.Web.Services;
using UserLogin;

namespace JQueryAjaxCalling
{
    public partial class Home : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static int insertData(DataInfo datainfo)
        {
            BAL bal = new BAL();
            DataInfo dif = new DataInfo();
            dif.Name = datainfo.Name;
            dif.Age = datainfo.Age;

            //int outresult = ;
            //switch (outresult)
            //{



            //}
            return bal.insertData(dif);
        }
    }
}