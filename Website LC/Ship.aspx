<%@ Page Title="" Language="C#" MasterPageFile="~/ManagermentMaster.Master" AutoEventWireup="true" CodeBehind="Ship.aspx.cs" Inherits="Website_LC.Ship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Styles/style-product.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
        <div class="container pt-4 px-0">
                <div class="row mt-3">
                    <div class="col-12">
                        <asp:ListView ID="lstProduct" runat="server">
                            <LayoutTemplate>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">&nbsp;&nbsp;</th>
                                            <th scope="col">Product image</th>
                                            <th scope="col">Product name</th>
                                            <th scope="col">Order date</th>
                                            <th scope="col">Amount</th>
                                            <th scope="col">Total</th>
                                            <th scope="col">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tbody class="scrollContent">
                                            <tr id="itemPlaceholder" runat="server" />
                                        </tbody>
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <!--Chỗ này copy dòng tr đầu tiên của tbody vào-->
                                <tr>
                                    <td class="align-middle">
                                        <!--Cái này là check box mình thay bằng check box của ASP-->
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </td>
                                    <td class="align-middle">
                                        <!--Chỗ này mình thay cái hình của ÂSP-->
                                       <img src="<%# "Images/" + Eval("product_image") %>" alt="" width="100px">
                                    </td>
                                    <td class="align-middle"><%# Eval("product_name") %></td>
                                    <td class="align-middle"><%# Eval("buy_date") %></td>
                                    <td class="align-middle"><%# Eval("amount") %></td>
                                    <td class="align-middle"><%# Eval("total") %></td>
                                    <td class="align-middle">
                                       <%# Eval("status_name") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                    
                </div>
            </div>
    </div>
</asp:Content>
