using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVC_DataAccessLayer
{
    public class DL_User
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
        public int GetUserID(string username)
        {
            int id;
            using(SqlConnection conn = new SqlConnection { ConnectionString = connectionString })
            {
                using(var cmd = new SqlCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Connection = conn
                })
                {
                    cmd.CommandText = "proc_get_user_id";
                    cmd.Parameters.AddWithValue("@username", username);
                    conn.Open();
                    try
                    {
                        SqlDataReader rdr = cmd.ExecuteReader();
                        rdr.Read();
                        id = int.Parse(rdr["userid"].ToString());
                        conn.Close();
                    }
                    catch (Exception ex)
                    {
                        throw (ex);
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
            }
            return id;
        }
    }
}
