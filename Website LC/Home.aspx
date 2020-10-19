<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Website_LC.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <div class="banner-left-2">
                    <div class="banner-left-2-image">
                        <img src="Images/phone.png" alt="" width="170px" height="175px"/>
                    </div>
                    <div class="banner-left-2-box">
                        <div class="banner-left-2-title">CALL TOLL FREE:</div>
                        <div class="banner-left-2-phone">(800) 2345-6789</div>
                        <div class="banner-left-2-text">Our expert support team is always ready to answer your questions.</div>
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
            <section>
                <div class="tab">
                    <button class="tablinks" onclick="openTab(event, 'LASTED-NEW-CARS')" id="defaultOpen">LASTED NEW CARS</button>
                    <button class="tablinks" onclick="openTab(event, 'LASTED-USED-CARS')">LASTED USED CARS</button>
                </div>
                <div id="LASTED-NEW-CARS" class="tabcontent">
                    <asp:ListView ID="ListView2" runat="server">
                        <ItemTemplate>
                            <div class="car">
                                <img class="car-img" src="Images/<%# Eval("product_image")%>">
                                <p class="price"><span class="price-span"><%# Eval("price")%></span></p>
                                <p class="name-car"><a href="Chitietsanpham.aspx"><%# Eval("product_name")%></a>
                                </p>
                                <p class="car-description">Storage amount: <%# Eval("storage_amount")%>.</p>
                            </div>
                        </ItemTemplate>
                     </asp:ListView>
                    <br />
                    <asp:Label ID="lblPageer" runat="server" />&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lnkPrevious" Text="Previous" runat="server" OnClick="Previous" />
                    <asp:LinkButton ID="lnkNext" Text="Next" runat="server" OnClick="Next" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conStr %>" SelectCommand="SELECT * FROM [PRODUCT] WHERE ([used] = @used)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="False" Name="used" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div id="LASTED-USED-CARS" class="tabcontent">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <div class="car">
                                <img class="car-img" src="Images/<%# Eval("product_image")%>">
                                <p class="price"><span class="price-span"><%# Eval("price")%></span></p>
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
                    function openTab(evt, tabName) {
                        var i, tabcontent, tablinks;
                        tabcontent = document.getElementsByClassName("tabcontent");
                        for (i = 0; i < tabcontent.length; i++) {
                            tabcontent[i].style.display = "none";
                        }
                        tablinks = document.getElementsByClassName("tablinks");
                        for (i = 0; i < tablinks.length; i++) {
                            tablinks[i].className = tablinks[i].className.replace(" active1", "");
                        }
                        document.getElementById(tabName).style.display = "block";
                        evt.currentTarget.className += " active1";
                    }
                    // document.querySelector('button').addEventListener('click', openTab);
                    document.getElementById("defaultOpen").click();
                </script>
                <div class="see-all-cars">
                <button class="btn-see-all-cars"><a href="#">see all cars</a></button>
            </div>
            </section>
        </article>
    </div>
</asp:Content>
