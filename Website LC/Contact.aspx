<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Website_LC.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Styles/style-contact.css" rel="stylesheet">
        <style type="text/css">
            .auto-style1 {
                width: 408px;
                height: 100px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="container">
            <h2>CONTACT FORM</h2>
            <div class="form-group">
                <label for="fname">Full name</label>
                <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control" placeholder="Full name..."></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="lname">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email..." TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="country">Phone number</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Phone..." TextMode="Phone"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="address">Content</label>
                <asp:TextBox ID="txtContent" runat="server" CssClass="form-control" placeholder="Enter your content here" MaxLength="500" Rows="5" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" />
        </div>
    </form>
</asp:Content>
