<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Website_LC.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>LC</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="~/Styles/style-home.css"/>
    <link rel="stylesheet" type="text/css" href="~/Styles/swiper.scss"/>
    <script src="~/Scripts/jquery-1.9.1.min.js"></script>
    <script src="~/Scripts/swiper.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css"/>
</head>
<body>
    <header>
        <div id="logo"><img src="Images/logo.png"/></div>
        <div id="dn">
            <a href="signin.html">SIGNIN</a>
            <a href="register.html">REGISTER NOW</a>
        </div>
        <div class="btn-sell"><button><a href="#"><i class="fas fa-plus-circle"></i>SELL YOUR USED CAR</a></button>
        </div>

    </header>

    <nav>
       <div id="subnav">
            <ul>
                <li class="btn"><a href="home.html">FIND A CAR</a></li>
                <li class="btn"><a href="usedcar.html">USED CARS</a></li>

                <li class="btn dropdown"><a href="newcars.html" class="drop-btn">NEW CARS</a>
                    <div class="dropdown-content">
                        <a href="#">Link 1</a>
                        <a href="#">Link 2</a>
                        <a href="#">Link 3</a>
                    </div>
                </li>
                <li class="btn"><a href="pages.html">PAGES</a></li>
                <li class="btn"><a href="parts.html">PARTS</a></li>
                <li class="btn"><a href="contacts.html">CONTACTS</a></li>
            </ul>

        </div>
    </nav>

    <div id="body">
        <article>
            <aside id="left">
                <div class="box-select">
                    <form id="form1" runat="server">
                        <label for="" class="form-label">MAKE:</label>&nbsp;
                        <asp:DropDownList ID="ddlMake" runat="server" CssClass="form-input">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Roll Royce</asp:ListItem>
                            <asp:ListItem>Ford</asp:ListItem>
                            <asp:ListItem>Mitsubishi</asp:ListItem>
                        </asp:DropDownList>
                        <label for="" class="form-label">
                        <br />
                        MODEL:</label>&nbsp;
                        <asp:DropDownList ID="ddlModel" runat="server" CssClass="form-input" Width="150px">
                            <asp:ListItem>Select a Model</asp:ListItem>
                            <asp:ListItem Value="rr">Roll Royce</asp:ListItem>
                            <asp:ListItem Value="fer">Ferarri</asp:ListItem>
                            <asp:ListItem Value="ford">Ford</asp:ListItem>
                            <asp:ListItem Value="chevrolet">Chevrolet</asp:ListItem>
                        </asp:DropDownList>
                        <label for="" class="form-label">
                        <br />
                        MIN YEAR:</label>&nbsp;
                        <asp:DropDownList ID="dllMinYear" runat="server" CssClass="form-input">
                            <asp:ListItem>Select min year</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                        </asp:DropDownList>
                        <label for="" class="form-label">
                        <br />
                        MAX YEAR:</label>&nbsp;
                        <asp:DropDownList ID="dllMaxYear" runat="server" CssClass="form-input">
                            <asp:ListItem>Select max year</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                        </asp:DropDownList>
                        <label for="" class="form-label">
                        <br />
                        MIN PRINCE:</label>&nbsp;
                        <asp:DropDownList ID="ddlMinPrice" runat="server" CssClass="form-input">
                            <asp:ListItem>Select min price</asp:ListItem>
                            <asp:ListItem>1B VND</asp:ListItem>
                            <asp:ListItem>800M VND</asp:ListItem>
                            <asp:ListItem>600M VND</asp:ListItem>
                            <asp:ListItem>400M VND</asp:ListItem>
                        </asp:DropDownList>
                        <label for="" class="form-label">
                        <br />
                        MAX PRINCE:</label>&nbsp;
                        <asp:DropDownList ID="ddlMaxPrice" runat="server" CssClass="form-input">
                            <asp:ListItem>Select max price</asp:ListItem>
                            <asp:ListItem>100B VND</asp:ListItem>
                            <asp:ListItem>50B VND</asp:ListItem>
                            <asp:ListItem>20B VND</asp:ListItem>
                            <asp:ListItem>10B VND</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="btn-submit" Text="SUBMIT" />
                    </form>
                </div>
                
                <div class="banner-left-1">
                    <div class="banner-left-1-image"><img src="Images/roll-royce.jpg" alt="" width="170px" height="280px"/></div>
                    <div class="banner-left-1-box">
                        <div class="banner-left-1-title">A WIDE SELECTION OF ELECTRIC CARS AND HYBRID VEHICLES</div>
                        <div class="banner-left-1-text">From Tesla Model 3 to Chevrolet Bolt, we have a vast range of cars from all over the world.</div>
                    </div>
                    
                </div>
            </aside>
            <aside id="banner">
                <div class="banner-img"><a href="#"><img src="Images/roll-royce.jpg" alt="" height="477px" width="970px"></a></div>
                <div class="banner-text-container">
                    <div class="banner-text" style="height: 89px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt" ForeColor="#FF3300" Text="30,000,000,000 VND"></asp:Label>
                        <asp:Label ID="Label2" runat="server" CssClass="name" Font-Bold="True" Font-Size="24pt" style="width: 617px; left: 338px; top: 15px;" Text="ROLL ROYCE PHANTOM"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Width="915px" CssClass="banner-text-content" Text="Mo ta: Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Delectus repellat eos sunt iste praesentium ab ducimus reiciendis libero,
                            suscipit esse nostrum fugiat vero, nisi dolorum ullam quisquam officiis autem ipsum.
                            Reiciendis quas dignissimos adipisci velit atque, omnis facilis, laboriosam nesciunt rem
                        "></asp:Label>
                    </div>
                </div>
            </aside>
        </article>
    </div>

    <!-- <footer>
        <p>&copy;2020 - LA SHOP. Allright Reserved</p>
    <p>Website được phát triển để sử dụng làm bài báo cáo cuối kỳ môn Thiết kế Web</p>
    <p>Email: 1824801030187@student.tdmu.edu.vn</p>
    </footer> -->
</body>
</html>
