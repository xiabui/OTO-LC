using MVC_DataAccessLayer;
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
        DL_Product dL_Product = new DL_Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstNew.DataSource = dL_Product.GetProduct(false);
                lstUsed.DataSource = dL_Product.GetProduct(true);
                lstNew.DataBind();
                lstUsed.DataBind();
            }
        }

        protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = lstUsed.SelectedIndex;
            Label label = (Label)lstUsed.Items[index].FindControl("productIdLabel");
            string productId = label.Text;
            Response.Redirect("Chitietsanpham.aspx?id=" + productId);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int minYear = int.Parse(ddlMinYear?.SelectedValue.ToString() == null ? "0" : ddlMinYear.SelectedValue.ToString());
            int maxYear = int.Parse(ddlMaxYear?.SelectedValue.ToString() == null ? "2020" : ddlMaxYear.SelectedValue.ToString());
            string minPrice = txtMinPrice.Text == "" ? "0" : txtMinPrice.Text;
            string maxPrice = txtMaxPrice.Text == "" ? "50000000000" : txtMaxPrice.Text;

            lstNew.DataSource = dL_Product.GetProductFilter(maxYear, minYear, maxPrice, minPrice, false);
            lstUsed.DataSource = dL_Product.GetProductFilter(maxYear, minYear, maxPrice, minPrice, true);
            lstNew.DataBind();
            lstUsed.DataBind();
        }

        protected void lstNew_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = lstNew.SelectedIndex;
            Label label = (Label)lstNew.Items[index].FindControl("productIdLabel");
            string productId = label.Text;
            Response.Redirect("Chitietsanpham.aspx?id=" + productId);
        }

        protected void lstUsed_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = lstUsed.SelectedIndex;
            Label label = (Label)lstNew.Items[index].FindControl("productIdLabel");
            string productId = label.Text;
            Response.Redirect("Chitietsanpham.aspx?id=" + productId);
        }
    }
}