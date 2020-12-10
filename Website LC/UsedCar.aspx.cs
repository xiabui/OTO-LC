using MVC_DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_LC
{
    public partial class UsedCar : System.Web.UI.Page
    {
        DL_Product dL_Product = new DL_Product();
        private int currentPage;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["current_page"] = 1;
                currentPage = int.Parse(Session["current_page"].ToString());
                lstUsed.DataSource = dL_Product.GetPagingProductOld(currentPage);
                lstUsed.DataBind();
            }
        }

        protected void lstUsed_SelectedIndexChanged(object sender, EventArgs e)
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

            lstUsed.DataSource = dL_Product.GetProductFilter(maxYear, minYear, maxPrice, minPrice, true);
            lstUsed.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            lstUsed.DataSource = dL_Product.SearchProduct(false, txtKeyword.Text);
            lstUsed.DataBind();
        }

        protected void btnPre_Click(object sender, EventArgs e)
        {
            currentPage = int.Parse(Session["current_page"].ToString());
            currentPage--;
            Session["current_page"] = currentPage;
            lstUsed.DataSource = dL_Product.GetPagingProductOld(currentPage);
            lblCurrentPage.Text = currentPage.ToString();
            lstUsed.DataBind();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            currentPage = int.Parse(Session["current_page"].ToString());
            currentPage++;
            Session["current_page"] = currentPage;
            lstUsed.DataSource = dL_Product.GetPagingProductOld(currentPage);
            lblCurrentPage.Text = currentPage.ToString();
            lstUsed.DataBind();
        }
    }
}