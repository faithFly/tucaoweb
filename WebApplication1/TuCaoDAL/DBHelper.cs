using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
namespace TuCaoDAL
{
    class DBHelper
    {
        public static SqlConnection conn = new SqlConnection("Data Source=FAITH-PC;Initial Catalog=TuCaoWeb;Integrated Security=True");
        public static DataTable GetDataTable(string sql) {
            try
            {
                DataTable dt = new DataTable();
                SqlDataAdapter dap = new SqlDataAdapter(sql, conn);
                dap.Fill(dt);
                return dt;
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public static bool Updata(string sql) {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                int rows = cmd.ExecuteNonQuery();
                conn.Close();
                return rows > 0;
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
