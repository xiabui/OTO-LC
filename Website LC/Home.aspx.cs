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
            
        }

        protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = ListView2.SelectedIndex;
            Label label = (Label)ListView2.Items[index].FindControl("productIdLabel");
            string productId = label.Text;
            Response.Redirect("Chitietsanpham.aspx?id=" + productId);
        }
    }
}