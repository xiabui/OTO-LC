using Models;
using MVC_DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_LC
{
    public partial class Ship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DL_Bill dlBill = new DL_Bill();
            BillModel billModel = new BillModel();

            if (!IsPostBack)
            {
                lstProduct.DataSource = dlBill.GetData();
                lstProduct.DataBind();
            }
        }
    }
}