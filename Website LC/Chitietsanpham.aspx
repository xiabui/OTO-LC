<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chitietsanpham.aspx.cs" Inherits="Website_LC.Chitietsanpham" %> 
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <link rel="stylesheet" type="text/css" href="Styles/style-detail.css"/>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
    <div id="body">
        <div class="container pt-4 px-0">
            <div class="row">
                <div class="col-5 float-left banner-left">
                    <div class="detail-image">
                        <asp:Image ID="imgProduct" runat="server" Width="100%" />
                    </div>
                </div>
                <div class="col-7 float-right">
                    <div class="detail">
                        <div class="detail-right">
                            <div>
                                <asp:Label ID="lblProductName" runat="server" Text="" CssClass="detail-name"></asp:Label>
                            </div>
                            <div>
                                <asp:Label ID="lblProductPrice" runat="server" Text="" CssClass="detail-price"></asp:Label>
                            </div>
                            <div>
                                <asp:Button runat="server" Text="LIÊN HỆ MUA XE" CssClass="btn-buy-cars" OnClick="Unnamed1_Click"></asp:Button>
                            </div>
                            <div class="mb-3">
                                <h4><b>THÔNG SỐ XE</b></h4>
                            </div>
                            <div class="detail-content">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Tùy chọn</th>
                                            <th scope="col">Thông số</th>
                                            <th scope="col">Tùy chọn</th>
                                            <th scope="col">Thông số</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Xuất xứ:</td>
                                            <td><asp:Label ID="lblContryMade" runat="server"></asp:Label></td>
                                            <td>Năm sản xuất:</td>
                                            <td><asp:Label ID="lblYearMade" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Tình trạng:</td>
                                            <td><asp:Label ID="lblIsUsed" runat="server"></asp:Label></td>
                                            <td>Loại xe:</td>
                                            <td><asp:Label ID="lblCarType" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Số km (đã chạy):</td>
                                            <td><asp:Label ID="lblMileage" runat="server"></asp:Label></td>
                                            <td>Dung tích xăng:</td>
                                            <td><asp:Label ID="lblGasCap" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Loại động cơ:</td>
                                            <td><asp:Label ID="lblEngineenType" runat="server"></asp:Label></td>
                                            <td>Số chỗ ngồi:</td>
                                            <td><asp:Label ID="lblNumCap" runat="server"></asp:Label></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
</asp:Content>