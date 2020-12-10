<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Website_LC.Home" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
        <div class="container pt-4 px-0">
            <div class="row">
                <div class="col-3 float-left banner-left">
                    <div class="box-select fixed-center mb-3">
                        <form class="form-make pb-3 pt-3" id="formBannerLeft" runat="server">
                            <div class="form-group">
                                <div class="d-flex justify-content-between align-items-center mx-3">
                                    <label class="form-label w-50 mt-3">MIN YEAR:</label>
                                    <asp:DropDownList ID="ddlMinYear" runat="server" CssClass="form-input form-input w-50 my-2">
                                        <asp:ListItem>Select min year</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2011</asp:ListItem>
                                        <asp:ListItem>2009</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="d-flex justify-content-between align-items-center mx-3">
                                    <label class="form-label w-50 mt-3">MAX YEAR:</label>
                                    <asp:DropDownList ID="ddlMaxYear" runat="server" CssClass="form-input form-input w-50 my-2">
                                        <asp:ListItem>Select max year</asp:ListItem>
                                        <asp:ListItem>2020</asp:ListItem>
                                        <asp:ListItem>2018</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="d-flex justify-content-between align-items-center mx-3">
                                    <label class="form-label w-50 mt-3">MIN PRICE:</label>
                                    <asp:TextBox ID="txtMinPrice" runat="server" CssClass="form-control form-input w-50 my-2" placeholder="Min price..."></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="d-flex justify-content-between align-items-center mx-3">
                                    <label class="form-label w-50 mt-3">MAX PRICE:</label>
                                     <asp:TextBox ID="txtMaxPrice" runat="server" CssClass="form-control form-input w-50 my-2" placeholder="Max price..."></asp:TextBox>
                                </div>
                            </div>
                            <div class="mx-3 mt-3">
                                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="btn-submit align-text-center" OnClick="btnSubmit_Click" />
                            </div>
                            
                        </form>
                    </div>
        
                    <div class="banner-left-1 mb-3">
                        <div class="banner-left-1-image"><img src="Images/roll-royce.jpg" alt="" width="100%"/></div>
                        <div class="banner-left-1-box">
                            <div class="banner-left-1-title"><a href="#">A WIDE SELECTION OF ELECTRIC CARS AND HYBRID
                                    VEHICLES</a></div>
                            <div class="banner-left-1-text">From Tesla Model 3 to Chevrolet Bolt, we have a vast range of
                                cars from all over the world.</div>
                        </div>
                    </div>
        
                    <div class="banner-left-2">
                        <div class="banner-left-2-image">
                            <img src="Images/phone.png" alt="" width="170px" height="175px">
                        </div>
                        <div class="banner-left-2-box pb-3">
                            <div class="banner-left-2-title">CALL TOLL FREE:</div>
                            <div class="banner-left-2-phone">(800) 2345-6789</div>
                            <div class="banner-left-2-text ">Our expert support team is always ready to answer your
                                questions.</div>
                        </div>
                    </div>
                </div>
                <div class="col-9 float-right">
                    <div class="carou">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                          <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                          </ul>
                          <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="Images/roll-royce.jpg" alt="" width="100%">
                                <div class="carousel-caption d-none d-md-block">
                                  <div class="title px-3 pt-3">A NEW CAR FOR NEW LIFE</div>
                                    <div class="banner-text-content px-3 py-3">Mo ta: Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Delectus repellat eos sunt iste praesentium ab ducimus reiciendis libero, suscipit esse
                                        nostrum fugiat vero, nisi dolorum ullam quisquam officiis autem ipsum. Reiciendis
                                        quas dignissimos adipisci velit atque, omnis facilis, laboriosam nesciunt rem
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="Images/roll-royce.jpg" alt="" width="100%">
                                <div class="carousel-caption d-none d-md-block">
                                  <div class="title px-3 pt-3">A NEW CAR FOR NEW LIFE</div>
                                    <div class="banner-text-content px-3 py-3">Mo ta: Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Delectus repellat eos sunt iste praesentium ab ducimus reiciendis libero, suscipit esse
                                        nostrum fugiat vero, nisi dolorum ullam quisquam officiis autem ipsum. Reiciendis
                                        quas dignissimos adipisci velit atque, omnis facilis, laboriosam nesciunt rem
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="Images/roll-royce.jpg" alt="" width="100%">
                                <div class="carousel-caption d-none d-md-block">
                                  <div class="title px-3 pt-3">A NEW CAR FOR NEW LIFE</div>
                                    <div class="banner-text-content px-3 py-3">Mo ta: Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Delectus repellat eos sunt iste praesentium ab ducimus reiciendis libero, suscipit esse
                                        nostrum fugiat vero, nisi dolorum ullam quisquam officiis autem ipsum. Reiciendis
                                        quas dignissimos adipisci velit atque, omnis facilis, laboriosam nesciunt rem
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                    </div>
                    
                    <div class="tab d-flex justify-content-between mt-2 mb-2">
                        <button class="tablinks" onclick="openTab(event,'LASTED-NEW-CARS')" id="defaultOpen">LASTED NEW
                            CARS</button>
                        <button class="tablinks" onclick="openTab(event, 'LASTED-USED-CARS')">LASTED USED CARS</button>
                    </div>

                    <div id="LASTED-NEW-CARS" class="tabcontent">
                        <div style="width: 100%;" class="mb-3">
                            <asp:ListView ID="lstNew" runat="server" OnSelectedIndexChanged="lstNew_SelectedIndexChanged">
                                <ItemTemplate>
                                    <div class="car">
                                        <img class="car-img" src="Images/<%# Eval("product_image")%>">
                                        <p class="price"><span class="price-span"><%# Eval("price")%></span></p>
                                        <p class="name-car"><a href="Chitietsanpham.aspx?id=<%# Eval("product_id")%>"><%# Eval("product_name")%></a>
                                        </p>
                                        <p class="car-description">Storage amount: <%# Eval("storage_amount")%>.</p>
                                    </div>
                                </ItemTemplate>
                             </asp:ListView>
                        </div>
                        <div class="see-all-cars">
                            <button class="btn-see-all-cars"><a href="NewCar.aspx">see all new cars</a></button>                    </div>
                        </div>
                    <div id="LASTED-USED-CARS" class="tabcontent">
                        <div style="width: 100%;" class="mb-3">
                            <asp:ListView ID="lstUsed" runat="server" OnSelectedIndexChanged="lstUsed_SelectedIndexChanged">
                                <ItemTemplate>
                                    <div class="car">
                                        <img class="car-img" src="Images/<%# Eval("product_image")%>">
                                        <p class="price"><span class="price-span"><%# Eval("price", "{0:#,###,###}").ToString() %></span></p>
                                        <p class="name-car"><a href="Chitietsanpham.aspx?id=<%# Eval("product_id")%>"><%# Eval("product_name")%></a>
                                        </p>
                                        <p class="car-description">Mileages: <%# Eval("run_mile")%>.</p>
                                    </div>
                                </ItemTemplate>
                             </asp:ListView>
                        </div>
                        <div class="see-all-cars">
                            <button class="btn-see-all-cars"><a href="UsedCar.aspx">see all used cars</a></button>
                        </div>
                    </div>

                    <script>
                        document.getElementById("defaultOpen").click();
                    </script>

                    
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
