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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                int productID = int.Parse(Request.QueryString["id"]);
                DL_Product productDL = new DL_Product();
                DL_Store storeDL = new DL_Store();
                ProductModel product = productDL.GetDetailProductWithId(productID);
                lblProductName.Text = product.ProductName;
                lblGiaBan.Text = product.Price;

                ddlSubStore.DataSource = ddlStore.DataSource = storeDL.GetData();
                ddlStore.DataValueField = ddlSubStore.DataValueField = "store_id";
                ddlStore.DataTextField = ddlSubStore.DataTextField = "store_name";
                ddlSubStore.DataBind();
                ddlStore.DataBind();
                
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DL_Order dlOrder = new DL_Order();
            OrderModel orderModel = new OrderModel();
            orderModel.FirstName = txtFirstName.Text;
            orderModel.LastName = txtLastName.Text;
            orderModel.CredentialID = txtCredentialID.Text;
            orderModel.DateValid = DateTime.Parse(dateValid.Text);
            orderModel.DateOfBirth = DateTime.Parse(txtDateOfBirth.Text);
            orderModel.Province = txtProvince.Text;
            orderModel.City = txtCity.Text;
            orderModel.Ward = txtWard.Text;
            orderModel.Address = txtAddress.Text;
            orderModel.StoreID = int.Parse(ddlStore.SelectedValue);
            orderModel.StoreID2 = int.Parse(ddlSubStore.SelectedValue);
            orderModel.ProductID = int.Parse(Request.QueryString["id"]);

            dlOrder.InsertData(orderModel);
            Response.Redirect("ThankYou.aspx");
        }
    }
}