using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_LC
{
    public partial class Home : System.Web.UI.Page
    {
        private int PageSize = 9;
        static int RecordCount = 0;
        static int PageIndex = 1;
        private string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.GetCustomersPageWise(PageIndex);
            }
        }

        private void GetCustomersPageWise(int pageIndex)
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("proc_get_car_new", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                    cmd.Parameters.AddWithValue("@PageSize", PageSize);
                    cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4);
                    cmd.Parameters["@RecordCount"].Direction = ParameterDirection.Output;
                    con.Open();
                    IDataReader idr = cmd.ExecuteReader();
                    ListView2.DataSource = idr;
                    ListView2.DataBind();
                    idr.Close();
                    con.Close();
                    RecordCount = Convert.ToInt32(cmd.Parameters["@RecordCount"].Value);
                    int fromvalue = ((PageSize * pageIndex + 1) - PageSize);
                    int toValue = ((pageIndex * PageSize) <= RecordCount) ? (pageIndex * PageSize) : RecordCount;
                    lblPageer.Text = fromvalue + " to " + toValue + " out of " + RecordCount;
                    this.lnkPrevious.Visible = pageIndex > 1;
                    this.lnkNext.Visible = ((pageIndex * PageSize) > RecordCount) ? false : true;
                }
            }
        }

        protected void Previous(object sender, EventArgs e)
        {
            PageIndex++;
            this.GetCustomersPageWise(PageIndex);
        }

        protected void Next(object sender, EventArgs e)
        {
            PageIndex--;
            this.GetCustomersPageWise(PageIndex);
        }
    }
}