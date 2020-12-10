<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewCar.aspx.cs" Inherits="Website_LC.NewCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Styles/style-new-car.css">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: block;
            margin-left: -1px;
            line-height: 1.25;
            color: #007bff;
            background-color: #fff;
            border: 1px solid #dee2e6;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
        <form runat="server">
            <div class="container pt-4 px-0">
                <div class="row">
                    <div class="col-3 float-left banner-left">
                        <div class="box-select fixed-center mb-3">
                            <div class="pb-3 pt-3">
                                <div class="form-group">
                                    <div class="d-flex justify-content-between align-items-center mx-3">
                                        <label class="form-label w-50 mt-3">MIN YEAR:</label>
                                        <asp:DropDownList ID="ddlMinYear" runat="server" CssClass="form-input form-input w-50 my-2">
                                            <asp:ListItem>Select min year</asp:ListItem>
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2015</asp:ListItem>
                                            <asp:ListItem>2013</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                            <asp:ListItem>2009</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="d-flex justify-content-between align-items-center mx-3">
                                        <label class="form-label w-50 mt-3">MAX YEAR:</label>
                                        <asp:DropDownList ID="ddlMaxYear" runat="server" CssClass="form-input form-input w-50 my-2">
                                            <asp:ListItem>Select max year</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2016</asp:ListItem>
                                            <asp:ListItem>2014</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="d-flex justify-content-between align-items-center mx-3">
                                        <label class="form-label w-50 mt-3">MIN PRICE:</label>
                                        <asp:TextBox ID="txtMinPrice" runat="server" CssClass="form-control form-input w-50 my-2" placeholder="Min price..."></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="d-flex justify-content-between align-items-center mx-3">
                                        <label class="form-label w-50 mt-3">MAX PRICE:</label>
                                         <asp:TextBox ID="txtMaxPrice" runat="server" CssClass="form-control form-input w-50 my-2" placeholder="Max price..."></asp:TextBox>
                                    </div>
                                </div>
                                <div class="mx-3 mt-3">
                                    <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="btn-submit align-text-center" OnClick="btnSubmit_Click" />
                                </div>
                            
                            </div>
                        </div>
        
                        <div class="banner-left-1 mb-3">
                            <div class="banner-left-1-image"><img src="Images/roll-royce.jpg" alt="" width="100%"/></div>
                            <div class="banner-left-1-box">
                                <div class="banner-left-1-title"><a href="#">A WIDE SELECTION OF ELECTRIC CARS AND HYBRID
                                        VEHICLES</a></div>
                                <div class="banner-left-1-text">From Tesla Model 3 to Chevrolet Bolt, we have a vast range of
                                    cars from all over the world.</div>
                            </div>
                        </div>
        
                        <div class="banner-left-2">
                            <div class="banner-left-2-image">
                                <img src="Images/phone.png" alt="" width="170px" height="175px">
                            </div>
                            <div class="banner-left-2-box pb-3">
                                <div class="banner-left-2-title">CALL TOLL FREE:</div>
                                <div class="banner-left-2-phone">(800) 2345-6789</div>
                                <div class="banner-left-2-text ">Our expert support team is always ready to answer your
                                    questions.</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-9 float-right">
                        <div style="width: 100%;" class="row my-2">
                            <div class="col-10">
                                <asp:TextBox ID="txtKeyword" runat="server" placeholder="Enter keyword to search...." CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                <asp:Button ID="btnSearch" runat="server" Text="TÌM KIẾM" CssClass="btn btn-danger" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                        <div style="width: 100%;">
                            <asp:ListView ID="lstNew" runat="server" OnSelectedIndexChanged="lstNew_SelectedIndexChanged">
                                <ItemTemplate>
                                    <div class="car">
                                        <img class="car-img" src="Images/<%# Eval("product_image")%>">
                                        <p class="price"><span class="price-span"><%# Eval("price")%></span></p>
                                        <p class="name-car"><a href="Chitietsanpham.aspx?id=<%# Eval("product_id")%>"><%# Eval("product_name")%></a>
                                        </p>
                                        <p class="car-description">Storage amount: <%# Eval("storage_amount")%>.</p>
                                    </div>
                                </ItemTemplate>
                             </asp:ListView>
                        </div>

                        <div class="pagging-container">
                            <nav class="pagging d-flex justify-content-center">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <asp:Button ID="btnPre" runat="server" Text="Previous" CssClass="page-link" OnClick="btnPre_Click" />
                                    </li>
                                    <li class="page-item">
                                        <asp:Label ID="lblCurrentPage" runat="server" Text="1" CssClass="page-link"></asp:Label>
                                    </li>
                                    <li class="page-item">
                                        <asp:Button ID="btnNext" runat="server" Text="Next" CssClass="page-link" OnClick="btnNext_Click" />
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
            </div>
        </div>
      </form>  
    </div>
</asp:Content>
