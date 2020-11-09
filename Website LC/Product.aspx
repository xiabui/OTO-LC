<%@ Page Title="" Language="C#" MasterPageFile="~/ManagermentMaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Website_LC.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Styles/style-product.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
        <div class="container pt-4 px-0">
                <div>
                    <asp:Button ID="btnSubmit" runat="server" Text="THÊM XE MỚI" CssClass="btn-add-cars" OnClick="btnSubmit_Click" />
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <asp:ListView ID="lstProduct" runat="server">
                            <LayoutTemplate>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">&nbsp;&nbsp;</th>
                                            <th scope="col">Hình sản phẩm</th>
                                            <th scope="col">Tên xe</th>
                                            <th scope="col">Loại xe</th>
                                            <th scope="col">Giá bán (đồng)</th>
                                            <th scope="col">Số lượng (chiếc)</th>
                                            <th scope="col">&nbsp;&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody class="scrollContent">
                                        <tr id="itemPlaceholder" runat="server" />
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td class="align-middle">
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </td>
                                    <td class="align-middle">
                                        <img src="<%# "Images/" + Eval("product_image") %>" alt="" width="100px">
                                    </td>
                                    <td class="align-middle"><%# Eval("product_name") %></td>
                                    <td class="align-middle"><%# Eval("cat_name") %></td>
                                    <td class="align-middle"><%# Eval("price") %></td>
                                    <td class="align-middle"><%# Eval("storage_amount") %></td>
                                    <td class="align-middle">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash"
                                            fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                            <path fill-rule="evenodd"
                                                d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                        </svg>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView> 
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conStr %>" SelectCommand="SELECT P.product_name, P.product_id, P.storage_amount, P.price, P.product_image, C.cat_name FROM PRODUCT AS P INNER JOIN CATOGORY AS C ON P.cat_id = C.cat_id"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
    </div>
</asp:Content>
