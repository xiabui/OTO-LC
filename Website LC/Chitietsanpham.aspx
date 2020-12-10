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
                                <asp:Button runat="server" Text="ORDER THIS CAR" CssClass="btn-buy-cars" OnClick="Unnamed1_Click"></asp:Button>
                            </div>
                            <div class="mb-3">
                                <h4><b>PRODUCT SPECS</b></h4>
                            </div>
                            <div class="detail-content">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Options</th>
                                            <th scope="col">Specs</th>
                                            <th scope="col">Options</th>
                                            <th scope="col">Specs</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Origin:</td>
                                            <td><asp:Label ID="lblContryMade" runat="server"></asp:Label></td>
                                            <td>DoM:</td>
                                            <td><asp:Label ID="lblYearMade" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Status:</td>
                                            <td><asp:Label ID="lblIsUsed" runat="server"></asp:Label></td>
                                            <td>Category:</td>
                                            <td><asp:Label ID="lblCarType" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Run mile:</td>
                                            <td><asp:Label ID="lblMileage" runat="server"></asp:Label></td>
                                            <td>Gasoline capacity:</td>
                                            <td><asp:Label ID="lblGasCap" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Engineen:</td>
                                            <td><asp:Label ID="lblEngineenType" runat="server"></asp:Label></td>
                                            <td>Seat number:</td>
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