<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Website_LC.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Styles/fontawesome.min.css" />
    <link rel="stylesheet" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/templatemo-style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Add Product</h2>
              </div>
            </div>
            <div class="row tm-edit-product-row">
                <form id="form1" runat="server">
              <div class="col-xl-6 col-lg-6 col-md-12">
                  
                  <div class="form-group mb-3">
                    <label
                      for="name"
                      >Product Name
                    </label>
                      <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control validate"></asp:TextBox>
                  </div>
                  <div class="form-group mb-3">
                    <label
                      for="description"
                      >Description</label
                    >
                    <asp:TextBox ID="txtDesciption" runat="server" CssClass="form-control validate" Rows="3" TextMode="MultiLine"></asp:TextBox>
                  </div>
                  <div class="form-group mb-3">
                    <label for="category">Category</label>
                    <asp:DropDownList ID="ddlCat" runat="server" CssClass="custom-select tm-select-accounts" DataSourceID="SqlDataSource1" DataTextField="cat_name" DataValueField="cat_id">
                    </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conStr %>" SelectCommand="SELECT [cat_id], [cat_name] FROM [CATOGORY]"></asp:SqlDataSource>
                  </div>
                  <div class="row">
                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label
                            for="expire_date"
                            >Amount
                          </label>
                          <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control validate" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label
                            for="stock"
                            >Price
                          </label>
                          <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control validate"></asp:TextBox>
                        </div>
                  </div>
                  
                  
                  
              </div>
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product-img-dummy mx-auto">
                  <i
                    class="fas fa-cloud-upload-alt tm-upload-icon"
                    onclick="document.getElementById('fileInput').click();"
                  ></i>
                </div>
                <div class="custom-file mt-3 mb-3">
                  <input id="fileInput" type="file" style="display:none;" />
                  <input
                    type="button"
                    class="btn btn-primary btn-block mx-auto"
                    value="UPLOAD PRODUCT IMAGE"
                    onclick="document.getElementById('fileInput').click();"
                  />
                </div>
              </div>
              <div class="col-12">
                <asp:Button ID="Button1" runat="server" Text="ADD PRODUCT" CssClass="btn btn-primary btn-block text-uppercase" OnClick="Button1_Click" />
              </div>
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
