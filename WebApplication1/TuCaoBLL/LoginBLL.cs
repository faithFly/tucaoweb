using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TuCaoDAL;
using TuCaoModel;
namespace TuCaoBLL
{
    public class LoginBLL
    {
        /// <summary>
        /// 登录：判断是否登录成功
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public static bool LoginId(string name, string pwd)
        {
            DataTable dt = TuCaoDAL.AdminDAL.LoginId(name, pwd);
            if (dt.Rows.Count >= 1) return true;
            else return false;

        }
        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="admin"></param>
        /// <returns></returns>
        public static bool Add(AdminIDModel admin){
            return AdminDAL.Add(admin);
        }
        
    }
}
