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
    public partial class Chitietsanpham : System.Web.UI.Page
    {
        DL_Product productDL = new DL_Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int productId = int.Parse(Request.QueryString["id"]);
                Product product = new Product();
                product = productDL.GetDetailProductWithId(productId);

                Image1.ImageUrl = "~/Images/" + product.ProductImage;
                lblProductName.Text = product.ProductName;
                lblProductPrice.Text = product.Price;
                lblContryMade.Text = product.From;
                lblCarType.Text = product.CarType;
                lblEngineenType.Text = product.EngineenType;
                lblGasCap.Text = product.GasCap.ToString();
                lblIsUsed.Text = product.Used ? "Used" : "New";
                lblMileage.Text = product.MileAge.ToString();
                lblNumCap.Text = product.NumberCap.ToString();
            }
            
        }
    }
}