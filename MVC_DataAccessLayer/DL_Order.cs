using Models;
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
    public class DL_Order
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
        public void InsertData(OrderModel orderModel)
        {
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
                    cmd.CommandText = "proc_insert_data_order";
                    cmd.Parameters.AddWithValue("@product_id", orderModel.ProductID);
                    cmd.Parameters.AddWithValue("@first_name", orderModel.FirstName);
                    cmd.Parameters.AddWithValue("@last_name", orderModel.LastName);
                    cmd.Parameters.AddWithValue("@credential_id", orderModel.CredentialID);
                    cmd.Parameters.AddWithValue("@date_valid", orderModel.DateValid);
                    cmd.Parameters.AddWithValue("@date_of_birth", orderModel.DateOfBirth);
                    cmd.Parameters.AddWithValue("@province", orderModel.Province);
                    cmd.Parameters.AddWithValue("@city", orderModel.City);
                    cmd.Parameters.AddWithValue("@ward", orderModel.Ward);
                    cmd.Parameters.AddWithValue("@address", orderModel.Address);
                    cmd.Parameters.AddWithValue("@store_id", orderModel.StoreID);
                    cmd.Parameters.AddWithValue("@store2_id", orderModel.StoreID2);

                    conn.Open();
                    try
                    {
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    catch(Exception ex)
                    {
                        throw (ex);
                    }
                    finally
                    {
                        conn.Close();
                    }
                    
                    conn.Close();
                }
            }
        }
    }
}
