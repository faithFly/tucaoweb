using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TuCaoModel;

namespace TuCaoDAL
{
   public class WordDAL
    {
       /// <summary>
       /// 查询段子
       /// </summary>
       /// <returns></returns>
       public static DataTable GetWord() {
           string sql = "SELECT dbo.UserInfo.UserId, dbo.UserInfo.UserName, dbo.UserInfo.UserImg, dbo.Word.Word, dbo.Word.Good,dbo.Word.WordImg FROM dbo.UserInfo INNER JOIN dbo.Word ON dbo.UserInfo.UserId = dbo.Word.UserId";
           return DBHelper.GetDataTable(sql);
       }
       /// <summary>
       /// 查询用户id
       /// </summary>
       /// <returns></returns>
      
       public static DataTable GetWordName(AdminIDModel mod) {
         
           string sql = string.Format("select UserId from UserInfo where UserName='{0}'", mod.UserName);
           return DBHelper.GetDataTable(sql);
       }
        /// <summary>
       /// 添加段子
       /// </summary>
       /// <returns></returns>

       public static bool AddWord(WordModel wmod) {
           string sql = string.Format("insert Word(UserId,Word,WordTime,WordImg)values('{0}','{1}','{2}','{3}');",wmod.UserId, wmod.Word, wmod.WordDateTime, wmod.WordImg);
           return DBHelper.Updata(sql);
       }
       /// <summary>
       /// 根据好评来排序段子做出热度页面
       /// </summary>
       /// <returns></returns>
       public static DataTable GetWordByGood()
       {
           string sql = "SELECT dbo.UserInfo.UserId, dbo.UserInfo.UserName, dbo.UserInfo.UserImg, dbo.Word.Word, dbo.Word.Good,dbo.Word.WordImg FROM dbo.UserInfo INNER JOIN dbo.Word ON dbo.UserInfo.UserId = dbo.Word.UserId order by dbo.Word.Good desc";
           return DBHelper.GetDataTable(sql);
       }
       /// <summary>
       /// 根据时间来排序所有段子
       /// </summary>
       /// <returns></returns>
       public static DataTable GetWordByTime() {
           string sql = "SELECT   dbo.UserInfo.UserId, dbo.UserInfo.UserName, dbo.UserInfo.UserImg, dbo.Word.WordTime, dbo.Word.WordImg,dbo.Word.Good, dbo.Word.Word FROM dbo.UserInfo INNER JOIN dbo.Word ON dbo.UserInfo.UserId = dbo.Word.UserId order by dbo.Word.WordTime desc";
           return DBHelper.GetDataTable(sql);
       }
    }
}
