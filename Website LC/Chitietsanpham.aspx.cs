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
        int productID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                productID = int.Parse(Request.QueryString["id"]);

                Models.ProductModel product = new Models.ProductModel();
                product = productDL.GetDetailProductWithId(productID);

                imgProduct.ImageUrl = "Images/" + product.ProductImage;
                lblProductName.Text = product.ProductName;
                lblProductPrice.Text = product.Price + " VNĐ";
                lblContryMade.Text = product.CountryMade;
                lblCarType.Text = product.CatName;
                lblEngineenType.Text = product.EngineenType;
                lblGasCap.Text = product.GasCapacity.ToString();
                lblIsUsed.Text = product.Used ? "Xe cũ" : "Xe mới";
                lblMileage.Text = product.MileAge.ToString();
                lblNumCap.Text = product.NumberCapacity.ToString();
                lblYearMade.Text = product.YearMade.ToString();
            }
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx?id=" + productID);
        }
    }
}