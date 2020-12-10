<%@ Page Title="" Language="C#" MasterPageFile="ManagermentMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Website_LC.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
            <div class="container pt-4 px-0">
                <div class="row d-flex justify-content-between">
                    <div class="col-3 text-align-center mr-2">
                        <div class="file-field">
                            <div class="z-depth-1-half mb-4">
                                <asp:Image ID="imgDemo" runat="server" CssClass="img-fluid" Width="100%" ImageUrl="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg" />
                            </div>
                            <div class="d-flex justify-content-center">
                                <div class="btn btn-rounded float-left border">
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file" OnDataBinding="FileUpload1_DataBinding" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-8">
                        <div>
                            <table class="table table-borderless">
                                <thead class="thead-dark">
                                    <th colspan="2">GENERAL INFOMATION</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-left" colspan="2">
                                            <div class="form-group mb-3">
                                                <label>Product name:</label>
                                                <asp:TextBox ID="txtProductName" runat="server" placeholder="Enter product name" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label>Origin:</label>
                                                <asp:TextBox ID="txtXuatXu" runat="server" placeholder="Enter product origin" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label>DoM: </label>
                                                <asp:TextBox ID="txtNamSX" runat="server" placeholder="Enter date of manufacture" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label>Price: </label>
                                                <asp:TextBox ID="txtGiaBan" runat="server" placeholder="Enter product price" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="text-left">
                                            <div class="form-group mb-3">
                                                <label>Category: </label>
                                                <div class="dropdown">
                                                    <asp:DropDownList ID="ddlCarCat" runat="server" CssClass="btn dropdown-toggle btn-status"></asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group mb-3">
                                                <label>Amount: </label>
                                                <asp:TextBox ID="txtAmount" runat="server" placeholder="Enter product amount" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td class="text-left">
                                            <div class="form-group mb-3">
                                                <label>Status: </label>
                                                <div class="dropdown">
                                                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="btn dropdown-toggle btn-status">
                                                        <asp:ListItem Value="false">Used</asp:ListItem>
                                                        <asp:ListItem Value="true">New</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group mb-3">
                                                <label>Run mile: </label>
                                                <asp:TextBox ID="txtRunMile" runat="server" placeholder="Enter product run mile" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <table class="table table-borderless">
                                    <thead class="thead-dark">
                                        <th>SPECS</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-left">
                                                <div class="form-group mb-3">
                                                    <label>Product size:</label>
                                                    <asp:TextBox ID="txtSize" runat="server" placeholder="Long x Width x Height" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Long wheelbase:</label>
                                                    <asp:TextBox ID="txtLongWheel" runat="server" placeholder="Enter long wheelbase" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Wide wheelbase:</label>
                                                    <asp:TextBox ID="txtLength" runat="server" placeholder="Front wide wheelbase x Back wide wheelbase" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Nonload weight: </label>
                                                    <asp:TextBox ID="txtHeavy" runat="server" placeholder="Enter nonload weight (kg)" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Seat number:</label>
                                                    <asp:TextBox ID="txtSeat" runat="server" placeholder="Enter number of seat" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Engineen type:</label>
                                                    <asp:TextBox ID="txtEngineenType" runat="server" placeholder="Enter engineen type" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Cylinder capacity:</label>
                                                    <asp:TextBox ID="txtXiLanh" runat="server" placeholder="Enter cylinder capacity" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Max power:</label>
                                                    <asp:TextBox ID="txtMaxPower" runat="server" placeholder="Enter max power" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Maximum torque:</label>
                                                    <asp:TextBox ID="txtMomen" runat="server" placeholder="Enter maximum torque" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Gasoline capacity: </label>
                                                    <asp:TextBox ID="txtFuel" runat="server" placeholder="Enter gasoline capacity" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Shock absorbers:</label>
                                                    <asp:TextBox ID="txtGiamXoc" runat="server" placeholder="Enter shock absorbers" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Average fuel consumption:</label>
                                                    <asp:TextBox ID="txtNhienLieu" runat="server" placeholder="Enter average fuel consumption" CssClass="form-control"></asp:TextBox>
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                            <div class="col-6">
                                <table class="table table-borderless">
                                    <thead class="thead-dark">
                                        <th>EXTERIOR</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-left">
                                                <div class="form-group mb-3">
                                                    <label>Number of Colour:</label>
                                                    <asp:TextBox ID="txtColor" runat="server" placeholder="Enter number of colour" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Day light:</label>
                                                    <asp:TextBox ID="txtDayLight" runat="server" placeholder="Enter desciption" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Light sensor: </label>
                                                    <asp:TextBox ID="txtLightSensor" runat="server" placeholder="Enter desciption" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Fog Light:</label>
                                                    <asp:TextBox ID="txtFogLight" runat="server" placeholder="Enter desciption" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Wash light:</label>
                                                    <asp:TextBox ID="txtLightWash" runat="server" placeholder="Enter desciption" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Wheel size: </label>
                                                    <asp:TextBox ID="txtWheelSize" runat="server" placeholder="Enter wheel size" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Seat material:</label>
                                                    <asp:TextBox ID="txtSeatMaterial" runat="server" placeholder="Enter seat material" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Number of Camera:</label>
                                                    <asp:TextBox ID="txtCamera" runat="server" placeholder="Enter desciption" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <asp:Button ID="btnSubmit" runat="server" Text="FINISH" CssClass="btn-add-cars" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>
    </div>
</asp:Content>
