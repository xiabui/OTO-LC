<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Website_LC.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign in</title>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500&display=swap" rel="stylesheet"/>
    <link href="~/Styles/style.css" rel="stylesheet" type="text/css" media="screen" runat="server" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"/>
    <link href="https://fonts.googleapis.com/css?family=Raleway&display=swap" rel="stylesheet"/>
</head>
<body>
     <div class="container">
         <form id="form1" runat="server">
            <div class="head">
                <h3><i class="fas fa-unlock-alt"></i>Sign In</h3>
                <p>&nbsp;</p>
            </div>
            <!-- <i class="far fa-user icon"></i> -->
             <asp:Label ID="lbWrongFail" runat="server" ForeColor="Red"></asp:Label>
             <br />
             <asp:TextBox CssClass="textBox" ID="txtUsername" placeholder="Username or email" runat="server"></asp:TextBox>
             <br />
             <asp:TextBox CssClass="textBox" ID="txtPassword" placeholder="Password" type="password" runat="server"></asp:TextBox>
             <asp:Button ID="btnSignIn" runat="server" BackColor="Red" CssClass="btn-signin" ForeColor="White" Height="50px" Text="Sign in" OnClick="btnSignIn_Click" />
             <div class="signup">
                 <asp:Label ID="Label1" runat="server" CssClass="forget-pass" Text="Not a member? "></asp:Label>
                 <asp:HyperLink ID="linkSignUp" runat="server" CssClass="signup a" ForeColor="Red">Sign up</asp:HyperLink>
             </div>

             <div class="forget-pass">
                 <asp:HyperLink ID="linkForgetPassword" runat="server" CssClass="forget-pass">Forgot password</asp:HyperLink>
             </div>
            <div class="connect"><p>Or connect with</p></div>
            <div class="btn-fb"><button><i class="fab fa-facebook-f"></i>Facebook</button></div>
            <div class="btn-gg"><button><i class="fab fa-google"></i>Google</button></div>
         </form>
    </div>
    </body>
</html>
