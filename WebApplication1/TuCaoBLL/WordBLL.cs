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
   public class WordBLL
    {
       /// <summary>
       /// 查询段子
       /// </summary>
       /// <returns></returns>
       public static DataTable GetWord() {
           return WordDAL.GetWord();
       }
        /// <summary>
       /// 查询用户id
       /// </summary>
       /// <returns></returns>
      
       public static DataTable GetWordName(AdminIDModel mod) {
           return WordDAL.GetWordName(mod);
       }
        /// <summary>
       /// 添加段子
       /// </summary>
       /// <returns></returns>

       public static bool AddWord(WordModel wmod) {
           return WordDAL.AddWord(wmod);
       }
        /// <summary>
       /// 根据好评来排序段子做出热度页面
       /// </summary>
       /// <returns></returns>
       public static DataTable GetWordByGood() {
           return WordDAL.GetWordByGood();
       }
       /// <summary>
       /// 根据时间来排序所有段子
       /// </summary>
       /// <returns></returns>
       public static DataTable GetWordByTime() {
           return WordDAL.GetWordByTime();
       }
    }
}
