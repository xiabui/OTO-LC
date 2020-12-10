<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Website_LC.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Styles/style-order.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
        <div class="container pt-4 px-0 mb-4">
            <div>
                <h3><b>ORDER INFOMATIONS</b></h3>
                <p><i>* Your infomations just use for buying.</i></p>
            </div>

            <div>
                <form runat="server">
                    <div class="row">
                        <div class="col-6 float-left">

                            <div class="text-gen">Product name:
                                <strong style="color: red;">
                                    <asp:Label ID="lblProductName" runat="server" Text=""></asp:Label>
                                </strong>
                            </div>

                            <div class="form-group">
                                <label for="">Your firstname: <strong style="color: red">(*)</strong></label>
                                <asp:TextBox ID="txtFirstName" placeholder="Your first name" runat="server" CssClass="form-control"></asp:TextBox> 
                            </div>
    
                            <div class="form-group">
                                <label for="">Date of Birth: <strong style="color: red">(*)</strong></label>

                                <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" TextMode="Date" TabIndex="2"></asp:TextBox>
                            </div>
    
                            <div class="form-group">
                                <label for="">City/Province: <strong style="color: red">(*)</strong></label>
                                <asp:TextBox ID="txtProvince" runat="server" placeholder="Your current city/province" CssClass="form-control" TabIndex="4"></asp:TextBox>
                            </div>
    
                            <div class="form-group">
                                <label for="">City: <strong style="color: red">(*)</strong></label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="Your current city" TabIndex="6"></asp:TextBox>
                            </div>
    
                            <div class="form-group">
                                <label for="">Main store: <strong style="color: red">(*)</strong></label>
                                <div class="dropdown">
                                    <asp:DropDownList ID="ddlStore" runat="server" CssClass="btn btn-danger dropdown-toggle btn-store">
                                        <asp:ListItem>LC Super Luxury (Hồ Chí Minh)</asp:ListItem>
                                        <asp:ListItem>LC Hopeless (Hồ Chí Minh)</asp:ListItem>
                                        <asp:ListItem>LC Supervisor (Bình Dương)</asp:ListItem>
                                        <asp:ListItem>LC AEON (Bình Dương)</asp:ListItem>
                                        <asp:ListItem>LC Diamond Place (Bình Dương)</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-6 float-right">

                            <div class="text-gen">Price:
                                <strong style="color: red;">
                                    <asp:Label ID="lblGiaBan" runat="server" Text="" TabIndex="1"></asp:Label>
                                </strong> VNĐ</div>
    
                            <div class="form-group">
                                <label for="">Last Name: <strong style="color: red">(*)</strong></label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Your last name"></asp:TextBox>
                            </div>
    
                            <div class="form-group">
                                <label>Credential id: <strong style="color: red">(*)</strong></label>
                                <asp:TextBox ID="txtCredentialID" runat="server" CssClass="form-control" placeholder="Your last name" TabIndex="3"></asp:TextBox>
                            </div>
    
                            <div class="form-group">
                                <label>Date valid: <strong style="color: red">(*)</strong></label>
                                <asp:TextBox ID="dateValid" runat="server" CssClass="form-control" TextMode="Date" TabIndex="5"></asp:TextBox>
                            </div>
    
                            <div class="form-group">
                                <label for="">Ward: <strong style="color: red">(*)</strong></label>
                                <asp:TextBox ID="txtWard" runat="server" CssClass="form-control" placeholder="Your current ward" TabIndex="7"></asp:TextBox>
                            </div>
    
                            <div class="form-group">
                                <label for="">Sub store: <strong style="color: red">(*)</strong></label>
                                <div class="dropdown">
                                    <asp:DropDownList ID="ddlSubStore" runat="server" CssClass="btn btn-danger dropdown-toggle btn-store">
                                        <asp:ListItem>LC Super Luxury (Hồ Chí Minh)</asp:ListItem>
                                        <asp:ListItem>LC Hopeless (Hồ Chí Minh)</asp:ListItem>
                                        <asp:ListItem>LC Supervisor (Bình Dương)</asp:ListItem>
                                        <asp:ListItem>LC AEON (Bình Dương)</asp:ListItem>
                                        <asp:ListItem>LC Diamond Place (Bình Dương)</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Address: <strong style="color: red">(*)</strong></label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Your current address" TabIndex="8"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
                </form>
            </div>
            

        </div>
    </div>
</asp:Content>
