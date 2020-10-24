using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using MVC_DataAccessLayer;

namespace Website_LC
{
    public partial class AddProduct : System.Web.UI.Page
    {
        DL_Product productDL = new DL_Product();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Product product = new Product();
            product.ProductName = txtProductName.Text;
            product.ProductImage = "bmw_x7.png";
            product.Amount = int.Parse(txtAmount.Text);
            product.Price = txtPrice.Text;
            product.HasEvent = false;
            string temp = ddlCat.SelectedValue;
            product.CatId = int.Parse(temp);
            product.Used = false;

            productDL.AddProduct(product);
        }
    }
}