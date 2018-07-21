using Imcs_Protal_Asp;
using System.Web.Mvc;

namespace AkMvcWithJQuery.Controllers
{
    public class LoginController : Controller
    {



        public int ValidateUser_Click(UsersInfo usersInfo)
        {
            UsersInfo uif = new UsersInfo();
            uif.Email = usersInfo.Email;
            uif.Password = usersInfo.Password;
            UserBLL objuserBLL = new UserBLL();
            int outresult = objuserBLL.ValidateUser(uif);
            return outresult;

        }

        public ActionResult Admin()
        {
            return View();
        }
        public ActionResult Trainer()
        {
            return View();
        }
        public ActionResult Student()
        {
            return View();
        }
        public ActionResult ManageUsers()
        {
            return View();
        }
    }
}