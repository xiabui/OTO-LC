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
    public class DL_Bill
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;

        public DataTable GetData()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da;
            using (SqlConnection conn = new SqlConnection
            {
                ConnectionString = connectionString
            })
            {
                using (var cmd = new SqlCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Connection = conn
                })
                {
                    cmd.CommandText = "proc_get_bill";
                    conn.Open();
                    try
                    {
                        da = new SqlDataAdapter(cmd);
                        da.Fill(dt);
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
            return dt;
        }
    }
}
