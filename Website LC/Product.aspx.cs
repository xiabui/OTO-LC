using MVC_DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_LC
{
    public partial class Product : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        DL_Product productDL = new DL_Product();
        DL_User userDL = new DL_User();
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"]?.ToString();
            if(username == null)
            {
                Response.Redirect("Home.aspx");
            }
            if (!IsPostBack)
            {
                int userID;
                userID = userDL.GetUserID(username);
                dt = productDL.GetDetailProductWithUserId(userID);
                lstProduct.DataSource = dt;
                lstProduct.DataBind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }
    }
}