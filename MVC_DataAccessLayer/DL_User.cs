using Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using BC = BCrypt.Net.BCrypt;
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

        public void SignupAccount(User user)
        {
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                SqlCommand cmd = new SqlCommand("proc_sign_up", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", user.UserName);
                cmd.Parameters.AddWithValue("@email", user.Email);
                cmd.Parameters.AddWithValue("@password", BC.HashPassword(user.Password));

                conn.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    conn.Close();
                }        
            }
        }

        public void AddContact(ContactModel contact)
        {
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                SqlCommand cmd = new SqlCommand("proc_add_contact", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fullname", contact.Fullname);
                cmd.Parameters.AddWithValue("@email", contact.Email);
                cmd.Parameters.AddWithValue("@phone", contact.Phone);
                cmd.Parameters.AddWithValue("@content", contact.Content);

                conn.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }
}
