using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TuCaoModel;

namespace TuCaoDAL
{
    public class AdminDAL
    {
        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public static DataTable LoginId(string name, string pwd)
        {
            try
            {
                string sql = string.Format("select * from UserInfo where UserName='{0}' and UserPassword='{1}'", name, pwd);
                return DBHelper.GetDataTable(sql);
            }
            catch (Exception)
            {

                throw;
            }
        }
        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="admin"></param>
        /// <returns></returns>
        public static bool Add(AdminIDModel admin)
        {
            string sql = string.Format("select * from UserInfo where UserName='{0}' and UserPassword='{1}'",admin.UserName,admin.UserPassword);
            DataTable dt = DBHelper.GetDataTable(sql);
            if (dt.Rows.Count >= 1)
            {
                return false;
            }
            else
            {
                string sql1 = string.Format("insert UserInfo(UserName,UserPassword,UserImg)values('{0}','{1}','{2}')",admin.UserName,admin.UserPassword,admin.UserImg);
                return DBHelper.Updata(sql1);
            }
        }
       /// <summary>
        /// 查询用户名
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>


    }
}
