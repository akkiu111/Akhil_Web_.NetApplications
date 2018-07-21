using Imcs_Protal_Asp;
using System.Data;
using System.Web.Mvc;
using System.Web.Services;

namespace AkMvcWithJQuery.Controllers
{
    public class UsersController : Controller
    {
        // GET: Users


        [WebMethod]
        public JsonResult GetAllUsers_Click()
        {
            UserBLL objuserBLL = new UserBLL();
            DataSet dataset = objuserBLL.GetAllUsers();
            var ak = dataset.GetXml();
            return Json(ak);
        }

        [WebMethod]
        public JsonResult GetUser_Click(UsersInfo usersInfo)
        {
            UserBLL objuserBLL = new UserBLL();
            UsersInfo uif = new UsersInfo();
            uif.UserId = usersInfo.UserId;
            DataSet dataset = objuserBLL.GetUser(uif);
            var ak = dataset.GetXml();
            return Json(ak);
            //JavaScriptSerializer serializer = new JavaScriptSerializer();
            //return serializer.Serialize(dataset);
        }

        [WebMethod]
        public JsonResult GetUserForUpdate_Click(UsersInfo usersInfo)
        {
            UserBLL objuserBLL = new UserBLL();
            UsersInfo uif = new UsersInfo();
            uif.UserId = usersInfo.UserId;
            DataSet dataset = objuserBLL.GetUserForUpdate(uif);
            var ak = dataset.GetXml();
            return Json(ak);

        }



        [WebMethod]
        public int InsertUser_Click(UsersInfo usersInfo)
        {
            UserBLL objuserBLL = new UserBLL();
            UsersInfo uif = new UsersInfo();
            uif.FirstName = usersInfo.FirstName;
            uif.LastName = usersInfo.LastName;
            uif.Email = usersInfo.Email;
            uif.Password = usersInfo.Password;
            uif.Gender = usersInfo.Gender;
            uif.RoleId = usersInfo.RoleId;
            uif.CourseId = usersInfo.CourseId;
            int result = objuserBLL.InsertUser(uif);
            return result;
        }

        [WebMethod]
        public int UpdateUser_Click(UsersInfo usersInfo)
        {
            UserBLL objuserBLL = new UserBLL();
            UsersInfo uif = new UsersInfo();
            uif.UserId = usersInfo.UserId;
            uif.FirstName = usersInfo.FirstName;
            uif.LastName = usersInfo.LastName;
            uif.Email = usersInfo.Email;
            uif.Password = usersInfo.Password;
            uif.Gender = usersInfo.Gender;
            uif.RoleId = usersInfo.RoleId;
            uif.CourseId = usersInfo.CourseId;
            int result = objuserBLL.UpdateUser(uif);
            return result;
        }

        [WebMethod]
        public int DeleteUser_Click(UsersInfo usersInfo)
        {
            UserBLL objuserBLL = new UserBLL();
            UsersInfo uif = new UsersInfo();
            uif.UserId = usersInfo.UserId;
            int result = objuserBLL.DeleteUser(uif);
            return result;
        }
    }
}