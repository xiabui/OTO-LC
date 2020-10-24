<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chitietsanpham.aspx.cs" Inherits="Website_LC.Chitietsanpham" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div id="body">
        <article>
            <aside id="detail">
                <div class="detail-image">
                    <asp:Image ID="Image1" runat="server" Width="600" /></div>
                <div class="detail-right">
                    <asp:Label ID="lblProductName" runat="server" Text="" CssClass="detail-name"></asp:Label>
                    <br />
                    <asp:Label ID="lblProductPrice" runat="server" Text="" CssClass="detail-price"></asp:Label>
                    <br />
                    <div class="detail-content">
                        <table style="width: 100%;">
                            <tr>
                                <td colspan="2">
                                    <ul>
                                        <li>
                                            <h4><strong>CAR DETAILS</strong></h4>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">From:</td>
                                <td class="auto-style1">
                                    <asp:Label ID="lblContryMade" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Status:</td>
                                <td>
                                    <asp:Label ID="lblIsUsed" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Car type:</td>
                                <td>
                                    <asp:Label ID="lblCarType" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Mileage:</td>
                                <td>
                                    <asp:Label ID="lblMileage" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Gas capacity:</td>
                                <td class="auto-style1">
                                    <asp:Label ID="lblGasCap" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Number capacity:</td>
                                <td>
                                    <asp:Label ID="lblNumCap" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Engineen type:</td>
                                <td>
                                    <asp:Label ID="lblEngineenType" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </aside>
        </article>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            height: 25px;
            width: 166px;
        }
        .auto-style3 {
            width: 166px;
        }
    </style>
</asp:Content>

