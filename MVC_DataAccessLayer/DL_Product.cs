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
        
        public void AddProduct(ProductModel product, int username)
        {
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                SqlCommand cmd = new SqlCommand("proc_add_product", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@product_name", product.ProductName);
                cmd.Parameters.AddWithValue("@cat_id", product.CatId);
                cmd.Parameters.AddWithValue("@price", product.Price);
                cmd.Parameters.AddWithValue("@storage_amount", product.Amount);
                cmd.Parameters.AddWithValue("@product_image", product.ProductImage);
                cmd.Parameters.AddWithValue("@used", product.Used);
                cmd.Parameters.AddWithValue("@run_mile", product.MileAge);
                cmd.Parameters.AddWithValue("@size_height", product.Height);
                cmd.Parameters.AddWithValue("@size_long", product.Long);
                cmd.Parameters.AddWithValue("@size_wide", product.Wide);
                cmd.Parameters.AddWithValue("@size_long_wheelbase", product.LongWheelbase);
                cmd.Parameters.AddWithValue("@size_front_wide_wheelbase", product.FrontWideWheelbase);
                cmd.Parameters.AddWithValue("@size_back_wide_wheelbase", product.BackWideWheelbase);
                cmd.Parameters.AddWithValue("@weight_non_load", product.WeightNonLoad);
                cmd.Parameters.AddWithValue("@number_capacity", product.NumberCapacity);
                cmd.Parameters.AddWithValue("@engineen_type", product.EngineenType);
                cmd.Parameters.AddWithValue("@cylinder_capacity", product.CylinderCapacity);
                cmd.Parameters.AddWithValue("@maximum_power", product.MaximumPower);
                cmd.Parameters.AddWithValue("@maximum_torque", product.MaximumTorque);
                cmd.Parameters.AddWithValue("@gas_capacity", product.GasCapacity);
                cmd.Parameters.AddWithValue("@power_steering", product.PowerSteering);
                cmd.Parameters.AddWithValue("@gas_consumption_avg", product.GasConsumptionAvg);
                cmd.Parameters.AddWithValue("@number_of_color", product.NumberOfColor);
                cmd.Parameters.AddWithValue("@day_light", product.DayLight);
                cmd.Parameters.AddWithValue("@light_sensor", product.LightSensor);
                cmd.Parameters.AddWithValue("@fog_light", product.FogLight);
                cmd.Parameters.AddWithValue("@washing_light", product.WashLight);
                cmd.Parameters.AddWithValue("@wheel_size", product.WheelSize);
                cmd.Parameters.AddWithValue("@sit_material", product.SitMaterial);
                cmd.Parameters.AddWithValue("@camera", product.Camera);
                cmd.Parameters.AddWithValue("@year_made", product.YearMade);
                cmd.Parameters.AddWithValue("@user_id", username);
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

        public ProductModel GetDetailProductWithId(int productID)
        {
            ProductModel product = new ProductModel();
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
                    product.CountryMade = rdr["coutry_made"].ToString();
                    product.Used = bool.Parse(rdr["used"].ToString());
                    product.CatName = rdr["cat_name"].ToString();
                    product.MileAge = float.Parse(rdr["run_mile"].ToString());
                    product.GasCapacity = float.Parse(rdr["gas_capacity"].ToString());
                    product.NumberCapacity = int.Parse(rdr["number_capacity"].ToString());
                    product.EngineenType = rdr["engineen_type"].ToString();
                    product.YearMade = int.Parse(rdr["year_made"].ToString());
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

        public DataTable GetDetailProductWithUserId(int userID)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da;
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                using(var cmd = new SqlCommand
                {
                    Connection = conn,
                    CommandType = CommandType.StoredProcedure
                })
                {
                    cmd.CommandText = "proc_get_product_with_userid";
                    cmd.Parameters.AddWithValue("@userid", userID);
                    conn.Open();
                    da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    conn.Close();
                }
            }
            return dt;
        }

        public DataTable GetProductFilter(int maxYear, int minYear, string maxPrice, string minPrice, bool used)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da;
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                using (var cmd = new SqlCommand
                {
                    Connection = conn,
                    CommandType = CommandType.StoredProcedure
                })
                {
                    cmd.CommandText = "proc_product_filter";
                    cmd.Parameters.AddWithValue("@maxyear", maxYear);
                    cmd.Parameters.AddWithValue("@minyear", minYear);
                    cmd.Parameters.AddWithValue("@maxprice", maxPrice);
                    cmd.Parameters.AddWithValue("@minprice", minPrice);
                    cmd.Parameters.AddWithValue("@used", used);
                    conn.Open();
                    da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    conn.Close();
                }
            }
            return dt;
        }

        public DataTable GetProduct(bool used)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da;
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                using (var cmd = new SqlCommand
                {
                    Connection = conn,
                    CommandType = CommandType.StoredProcedure
                })
                {
                    cmd.CommandText = "proc_get_product";
                    cmd.Parameters.AddWithValue("@used", used);
                    conn.Open();
                    da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    conn.Close();
                }
            }
            return dt;
        }

        public DataTable SearchProduct(bool used, string keyword)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da;
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                using (var cmd = new SqlCommand
                {
                    Connection = conn,
                    CommandType = CommandType.StoredProcedure
                })
                {
                    cmd.CommandText = "proc_get_product_by_keyword";
                    cmd.Parameters.AddWithValue("@used", used);
                    cmd.Parameters.AddWithValue("@keyword", keyword);
                    conn.Open();
                    da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    conn.Close();
                }
            }
            return dt;
        }

        public DataTable GetPagingProduct(int pageIndex)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da;
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("proc_get_car_new", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                    cmd.Parameters.AddWithValue("@PageSize", 6);
                    cmd.Parameters.AddWithValue("@RecordCount", 4);
                    conn.Open();
                    da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    conn.Close();
                }
            }

            return dt;
        }

        public DataTable GetPagingProductOld(int pageIndex)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da;
            using (SqlConnection conn = new SqlConnection(this.connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("proc_get_car_used", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                    cmd.Parameters.AddWithValue("@PageSize", 6);
                    cmd.Parameters.AddWithValue("@RecordCount", 4);
                    conn.Open();
                    da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    conn.Close();
                }
            }

            return dt;
        }
    }
}
