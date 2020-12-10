using MVC_DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_LC
{
    public partial class NewCar : System.Web.UI.Page
    {
        private int currentPage;
        DL_Product dL_Product = new DL_Product();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["current_page"] = 1;
                currentPage = int.Parse(Session["current_page"].ToString());
                lstNew.DataSource = dL_Product.GetPagingProduct(currentPage);
                lstNew.DataBind();
            }
        }

        protected void lstNew_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = lstNew.SelectedIndex;
            Label label = (Label)lstNew.Items[index].FindControl("productIdLabel");
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
            lstNew.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            lstNew.DataSource = dL_Product.SearchProduct(false, txtKeyword.Text);
            lstNew.DataBind();
        }

        protected void btnPre_Click(object sender, EventArgs e)
        {
            currentPage = int.Parse(Session["current_page"].ToString());
            currentPage--;
            Session["current_page"] = currentPage;
            lstNew.DataSource = dL_Product.GetPagingProduct(currentPage);
            lblCurrentPage.Text = currentPage.ToString();
            lstNew.DataBind();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            currentPage = int.Parse(Session["current_page"].ToString());
            currentPage++;
            Session["current_page"] = currentPage;
            lstNew.DataSource = dL_Product.GetPagingProduct(currentPage);
            lblCurrentPage.Text = currentPage.ToString();
            lstNew.DataBind();
        }
    }
}