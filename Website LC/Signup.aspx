<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Website_LC.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>SIGN UP</title>
    <link
        href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap"
        rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="Styles/style-signup.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="mask rgba-gradient view  align-items-center">
        <div class="container">
            <div class="row">
                <div class="col">
                   
                </div>
                <div class="col">
                    <div class="wow fadeInRight" data-wow-delay="0.3s">
                        <div class="card-1">
                            <form runat="server">
                                <div class="text-center">
                                    <h3 class="title">LC SIGNUP</h3>
                                </div>

                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <svg width="1em" height="1em" viewBox="0 0 16 16"
                                                class="bi bi-person-lines-fill" fill="currentColor"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd"
                                                    d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm7 1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5zm-2-3a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm2 9a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5z" />
                                            </svg>
                                        </div>
                                    </div>
                                    <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" placeholder="Enter Username"></asp:TextBox>
                                </div>

                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                            </svg>
                                        </div>
                                    </div>
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Enter email" TextMode="Email"></asp:TextBox>
                                </div>
                                
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-key-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                            </svg>
                                        </div>
                                    </div>
                                    <asp:TextBox ID="txtPassword"  runat="server" placeholder="Enter password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
    
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-key-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                            </svg>
                                        </div>
                                    </div>
                                    <asp:TextBox ID="txtReEnterPassword" runat="server" CssClass="form-control" placeholder="Enter password again"></asp:TextBox>
                                </div>
                                
                                <div class="form-check">
                                    <asp:CheckBox ID="chkAgree" runat="server" CssClass="form-check-input" />
                                    <label class="form-check-label" for="exampleCheck1">I agree with <a href="#">Term of
                                            Service</a> and <a href="#">Privacy Policy.</a></label>
                                </div>
                                <asp:Button ID="btnSubmit" runat="server" Text="SIGN UP" CssClass="btn btn-danger" OnClick="btnSubmit_Click" />
                            </form>
                        </div>     
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>
