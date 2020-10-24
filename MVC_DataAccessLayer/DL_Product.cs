using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using Models;

namespace MVC_DataAccessLayer
{
    public class DL_Product
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
        
        public void AddProduct(Product product)
        {
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                SqlCommand cmd = new SqlCommand("proc_add_product", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@product_name", product.ProductName);
                cmd.Parameters.AddWithValue("@has_event", product.HasEvent);
                cmd.Parameters.AddWithValue("@cat_id", product.CatId);
                cmd.Parameters.AddWithValue("@storage_amount", product.Amount);
                cmd.Parameters.AddWithValue("@product_image", product.ProductImage);
                cmd.Parameters.AddWithValue("@used", product.Used);
                cmd.Parameters.AddWithValue("@price", string.Format("{0:#,###,###}", Convert.ToDecimal(product.Price)));
                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception e)
                {
                    throw (e);
                }
                finally
                {
                    conn.Close();
                }
                
            }

        }

        public Product GetDetailProductWithId(int productID)
        {
            Product product = new Product();
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                SqlCommand cmd = new SqlCommand("proc_get_product_spec_with_id", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@product_id", productID);
                try
                {
                    conn.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    rdr.Read();
                    product.ProductName = rdr["product_name"].ToString();
                    product.ProductImage = rdr["product_image"].ToString();
                    product.Price = string.Format("{0:#,###,###}", Convert.ToDecimal(rdr["price"].ToString()));
                    product.From = rdr["coutry_made"].ToString();
                    product.Used = bool.Parse(rdr["used"].ToString());
                    product.CatName = rdr["cat_name"].ToString();
                    product.MileAge = float.Parse(rdr["run_mile"].ToString());
                    product.GasCap = float.Parse(rdr["gas_capacity"].ToString());
                    product.NumberCap = int.Parse(rdr["number_capacity"].ToString());
                    product.EngineenType = rdr["engineen_type"].ToString();
                    conn.Close();
                }
                catch (Exception e)
                {
                    throw (e);
                }
                finally
                {
                    conn.Close();
                }

            }
            return product;
        }
    }
}
