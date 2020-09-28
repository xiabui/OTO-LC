using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using BC = BCrypt.Net.BCrypt;
using System.Threading.Tasks;

namespace MVC_DataAccessLayer
{
    public class DL_Login
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
        public bool Login(string username, string password)
        {
            using(SqlConnection conn = new SqlConnection(this.connectionString))
            {
                SqlCommand cmd = new SqlCommand("proc_login", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username_email", username);

                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                string passwordHash = rdr["password"].ToString();
                return  BC.Verify(password, passwordHash);
            }
        }
    }
}
