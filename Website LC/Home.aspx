<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Website_LC.Home" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
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
                                    <label class="form-label w-50 mt-3">MAKE:</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-input w-50 my-2">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Roll Royce</asp:ListItem>
                                        <asp:ListItem>Ford</asp:ListItem>
                                        <asp:ListItem>Mitsubishi</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="d-flex justify-content-between align-items-center mx-3">
                                    <label class="form-label w-50 mt-3">MODEL:</label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-input w-50 my-2">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Roll Royce</asp:ListItem>
                                        <asp:ListItem>Ford</asp:ListItem>
                                        <asp:ListItem>Mitsubishi</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="d-flex justify-content-between align-items-center mx-3">
                                    <label class="form-label w-50 mt-3">MIN YEAR:</label>
                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-input form-input w-50 my-2">
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
                                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-input form-input w-50 my-2">
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
                                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-input form-input w-50 my-2">
                                        <asp:ListItem>Select min price</asp:ListItem>
                                        <asp:ListItem>1B VND</asp:ListItem>
                                        <asp:ListItem>800M VND</asp:ListItem>
                                        <asp:ListItem>600M VND</asp:ListItem>
                                        <asp:ListItem>400M VND</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="d-flex justify-content-between align-items-center mx-3">
                                    <label class="form-label w-50 mt-3">MAX PRICE:</label>
                                    <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-input form-input w-50 my-2">
                                        <asp:ListItem>Select max price</asp:ListItem>
                                        <asp:ListItem>100B VND</asp:ListItem>
                                        <asp:ListItem>50B VND</asp:ListItem>
                                        <asp:ListItem>20B VND</asp:ListItem>
                                        <asp:ListItem>10B VND</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="mx-3 mt-3">
                                <button class="btn-submit align-text-center" type="submit">SUBMIT</button>
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
                    <div class="banner">
                        <div class="banner-img">
                            <img src="Images/roll-royce.jpg" alt="">
                        </div>
                        <div class="banner-text-container fixed-bottom">
                            <div class="title px-3 pt-3">A NEW CAR FOR NEW LIFE</div>
                            <div class="banner-text-content px-3 py-3">Mo ta: Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Delectus repellat eos sunt iste praesentium ab ducimus reiciendis libero, suscipit esse
                                nostrum fugiat vero, nisi dolorum ullam quisquam officiis autem ipsum. Reiciendis
                                quas dignissimos adipisci velit atque, omnis facilis, laboriosam nesciunt rem
                            </div>
                        </div>
                    </div>
                    
                    <div class="tab d-flex justify-content-between mt-2 mb-2">
                        <button class="tablinks" onclick="openTab(event,'LASTED-NEW-CARS')" id="defaultOpen">LASTED NEW
                            CARS</button>
                        <button class="tablinks" onclick="openTab(event, 'LASTED-USED-CARS')">LASTED USED CARS</button>
                    </div>

                    <div id="LASTED-NEW-CARS" class="tabcontent">
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
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
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conStr %>" SelectCommand="SELECT * FROM [PRODUCT] WHERE ([used] = @used)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="False" Name="used" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div id="LASTED-USED-CARS" class="tabcontent">
                        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <div class="car">
                                    <img class="car-img" src="Images/<%# Eval("product_image")%>">
                                    <p class="price"><span class="price-span"><%# Eval("price", "{0:#,###,###}").ToString() %></span></p>
                                    <p class="name-car"><a href="Chitietsanpham.aspx"><%# Eval("product_name")%></a>
                                    </p>
                                    <p class="car-description">Mileages: <%# Eval("run_mile")%>.</p>
                                </div>
                            </ItemTemplate>
                         </asp:ListView>
                    
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conStr %>" SelectCommand="SELECT * FROM [PRODUCT] WHERE ([used] = @used)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="True" Name="used" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>

                    <script>
                        document.getElementById("defaultOpen").click();
                    </script>

                    <div class="see-all-cars">
                        <button class="btn-see-all-cars"><a href="new-car.html">see all cars</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
