<%@ Page Title="" Language="C#" MasterPageFile="ManagermentMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Website_LC.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
        <form action="product.html">
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
                                    <th colspan="2">THÔNG TIN CHUNG</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-left" colspan="2">
                                            <div class="form-group mb-3">
                                                <label>Tên xe:</label>
                                                <asp:TextBox ID="txtProductName" runat="server" placeholder="Nhập tên xe" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label>Xuất xứ:</label>
                                                <asp:TextBox ID="txtXuatXu" runat="server" placeholder="Nhập xuất xứ xe" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label>Năm sản xuất: </label>
                                                <asp:TextBox ID="txtNamSX" runat="server" placeholder="Nhập năm sản xuất xe" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group mb-3">
                                                <label>Giá bán: </label>
                                                <asp:TextBox ID="txtGiaBan" runat="server" placeholder="Nhập giá bán xe" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="text-left">
                                            <div class="form-group mb-3">
                                                <label>Loại xe: </label>
                                                <div class="dropdown">
                                                    <asp:DropDownList ID="ddlCarCat" runat="server" CssClass="btn dropdown-toggle btn-status"></asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group mb-3">
                                                <label>Số lượng xe: </label>
                                                <asp:TextBox ID="txtAmount" runat="server" placeholder="Nhập số km đã chạy" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td class="text-left">
                                            <div class="form-group mb-3">
                                                <label>Tình trạng xe: </label>
                                                <div class="dropdown">
                                                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="btn dropdown-toggle btn-status">
                                                        <asp:ListItem Value="false">Xe mới</asp:ListItem>
                                                        <asp:ListItem Value="true">Xe cũ</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group mb-3">
                                                <label>Số km đã chạy: </label>
                                                <asp:TextBox ID="txtRunMile" runat="server" placeholder="Nhập số km đã chạy" CssClass="form-control"></asp:TextBox>
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
                                        <th>THÔNG SỐ CHUNG</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-left">
                                                <div class="form-group mb-3">
                                                    <label>Kích thước xe:</label>
                                                    <asp:TextBox ID="txtSize" runat="server" placeholder="Chiều dài x Chiều rộng x Chiều cao" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Chiều dài cơ sở:</label>
                                                    <asp:TextBox ID="txtLongWheel" runat="server" placeholder="Nhập chiều dài cơ sở" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Chiều rộng cơ sở:</label>
                                                    <asp:TextBox ID="txtLength" runat="server" placeholder="Nhập rộng dài cơ sở trước x chiều rộng cơ sở sau" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Trọng lượng không tải: </label>
                                                    <asp:TextBox ID="txtHeavy" runat="server" placeholder="Nhập trọng lượng không tải (kg)" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Số chỗ ngồi:</label>
                                                    <asp:TextBox ID="txtSeat" runat="server" placeholder="Nhập số lượng chỗ ngồi" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Loại động cơ:</label>
                                                    <asp:TextBox ID="txtEngineenType" runat="server" placeholder="Nhập Loại động cơ xe" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Dung tích xilanh: </label>
                                                    <asp:TextBox ID="txtXiLanh" runat="server" placeholder="Nhập vào dung tích xi lanh" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Công suất cực đại:</label>
                                                    <asp:TextBox ID="txtMaxPower" runat="server" placeholder="Nhập vào công suất cực đại" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Momen xoắn cực đại:</label>
                                                    <asp:TextBox ID="txtMomen" runat="server" placeholder="Nhập vào momen xoắn cực đại" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Dung tích thùng nhiên liệu: </label>
                                                    <asp:TextBox ID="txtFuel" runat="server" placeholder="Nhập vào dung tích thùng nhiên liệu" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Giảm xóc:</label>
                                                    <asp:TextBox ID="txtGiamXoc" runat="server" placeholder="Nhập vào loại giảm xóc" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Tiêu thụ nhiên liệu trung bình:</label>
                                                    <asp:TextBox ID="txtNhienLieu" runat="server" placeholder="Nhập mức độ tiêu thụ nhiên liệu" CssClass="form-control"></asp:TextBox>
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                            <div class="col-6">
                                <table class="table table-borderless">
                                    <thead class="thead-dark">
                                        <th>NGOẠI THẤT</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-left">
                                                <div class="form-group mb-3">
                                                    <label>Số lượng màu:</label>
                                                    <asp:TextBox ID="txtColor" runat="server" placeholder="Nhập số lượng màu" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Đèn ban ngày:</label>
                                                    <asp:TextBox ID="txtDayLight" runat="server" placeholder="Nhập mô tả" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Cảm biến ánh sáng: </label>
                                                    <asp:TextBox ID="txtLightSensor" runat="server" placeholder="Nhập mô tả" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Đèn sương mù:</label>
                                                    <asp:TextBox ID="txtFogLight" runat="server" placeholder="Nhập mô tả" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Rửa đèn pha:</label>
                                                    <asp:TextBox ID="txtLightWash" runat="server" placeholder="Nhập mô tả" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Kích thước mâm: </label>
                                                    <asp:TextBox ID="txtWheelSize" runat="server" placeholder="Nhập kích thước mâm" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Chất liệu ghế:</label>
                                                    <asp:TextBox ID="txtSeatMaterial" runat="server" placeholder="Nhập chất liệu ghế" CssClass="form-control"></asp:TextBox>
                                                </div>

                                                <div class="form-group mb-3">
                                                    <label>Camera 365:</label>
                                                    <asp:TextBox ID="txtCamera" runat="server" placeholder="Nhập mô tả" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <asp:Button ID="btnSubmit" runat="server" Text="HOÀN TẤT" CssClass="btn-add-cars" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
