<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OverTheCounterMarket.aspx.cs" Inherits="FinalProjectSem3.OverTheCounterMarket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta lang="en-us" />


    <link href="css/normalize.css" rel="stylesheet" />
    <link href="css/Pe-icon-7-stroke.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/color/jquery.color-2.1.2.min.js"></script>
    <script src="js/main.js"></script>
    <title>Over the counter market</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="otc" class="grid">
            <header class="topbar">
                <section class="quickaction r40">
                    <ul>
                        <li class="quickaction-item"><a href="Info.aspx"><i class="pe-7s-info"></i></a></li>
                        <li class="quickaction-item"><a href="HistoricalData.aspx"><i class="pe-7s-drawer"></i></a></li>
                        <li class="quickaction-item"><a href="Notifications.aspx"><i class="pe-7s-bell"></i></a></li>
                    </ul>
                </section>
                <section class="timeremaining r30">
                    <div>
                        <p><i class="pe-7s-clock pe-va"></i>14:25</p>
                    </div>
                </section>
                <section class="logout r40">
                    <asp:LinkButton ID="lnkBtnLogOut" runat="server" OnClick="lnkBtnLogOut_Click">Log out</asp:LinkButton>
                </section>
            </header>
            <aside class="navwrapper">
                <nav>
                    <ul>
                        <li class="user r40">
                            <img src="http://via.placeholder.com/120x100" alt="User Profile Image" />
                            <h6 class="username">User Mc.Testersen</h6>
                            <div class="position">
                                <i class="pe-7s-medal"></i>
                                <p class="position-value">1234 <span class="position-unit">MW</span></p>
                                <p class="balance">-20</p>
                            </div>
                            <div class="credit">
                                <i class="pe-7s-credit"></i>
                                <p class="credit-value">45457 <span class="credit-unit">EUR</span></p>
                                <p class="balance">+36</p>
                            </div>
                        </li>
                        <li>
                            <button class="r50 btnAction240">
                                <img src="img/Orion_handshake.png" alt="Over the counter icon" aria-label=" OTC" />
                                <span>OTC
                                </span>
                            </button>
                        </li>
                        <li>
                            <button class="r30 btnAction240 r-hoverable">
                                <img src="img/icons8-transmission-tower-50.png" alt="Over the counter icon" />
                                CAPACITY 
                            </button>
                        </li>
                        <li>
                            <button class="r30 btnAction240 r-hoverable">
                                <img src="img/pay-2285_011e7de0-ed59-45c5-805e-7dcf300fbc9c.png" alt="Over the counter icon" />
                                EXCHANGE
                            </button>
                        </li>
                    </ul>
                    <div class="pluspiece r40"></div>
                </nav>
            </aside>

            <main class="offerTable t1">

                <header class="header grid">

                    <div class="header-img">
                        <img src="http://via.placeholder.com/30" alt="Over the counter image" />
                    </div>

                    <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" CssClass="ddlCountry r30">
                        <asp:ListItem Text="DE" Value="DE"></asp:ListItem>
                        <asp:ListItem Text="DK" Value="DK"></asp:ListItem>
                        <asp:ListItem Text="FR" Value="FR"></asp:ListItem>
                        <asp:ListItem Text="UK" Value="UK"></asp:ListItem>
                        <asp:ListItem Text="ES" Value="ES"></asp:ListItem>
                    </asp:DropDownList>
                    <button class="showAddOffer r40">
                        <i class="pe-7s-close"></i>
                    </button>

                </header>

                <div class="content grid">
                    <asp:RadioButtonList ID="rblProduct" runat="server" AutoPostBack="true" CssClass="rblProduct grid" RepeatLayout="UnorderedList" Visible="True">
                        <asp:ListItem Text="BASE" Value="BASE" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="PEAK" Value="PEAK"></asp:ListItem>
                        <asp:ListItem Text="OFF-PEAK" Value="OFFPEAK"></asp:ListItem>
                    </asp:RadioButtonList>

                    <asp:ListView ID="lvBid" runat="server">
                        <LayoutTemplate>
                            <div class="lvBid grid r40">
                                <div class="contentHead grid">
                                    <h6>Qty</h6>
                                    <h6>Bid</h6>
                                </div>


                                <div runat="server" id="itemPlaceholder"></div>

                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="contentBody grid">

                                <span>
                                    <%# Eval("Quantity") %>
                                </span>
                                <span class="takeOffer">
                                    <asp:Button ID="btnOffer" runat="server" Text='<%# Eval("Price") %>' OnClick="btnOffer_Click" CausesValidation="False" />
                                </span>

                            </div>
                        </ItemTemplate>
                    </asp:ListView>

                    <asp:ListView ID="lvAsk" runat="server">
                        <LayoutTemplate>
                            <div class="lvAsk grid r40">
                                <div class="contentHead grid">
                                    <h6>Ask</h6>
                                    <h6>Qty</h6>
                                </div>
                                <div runat="server" id="itemPlaceholder"></div>
                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="contentBody grid ">

                                <span class="takeOffer">
                                    <asp:Button ID="btnOffer" runat="server" Text='<%# Eval("Price") %>' OnClick="btnOffer_Click" CausesValidation="False" />
                                </span>
                                <span>
                                    <%# Eval("Quantity") %>
                                </span>

                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>


            </main>
            <main class="offerTable t2">

                <header class="header grid">

                    <div class="header-img">
                        <img src="http://via.placeholder.com/30" alt="Over the counter image" />
                    </div>

                    <asp:DropDownList ID="ddlCountry2" runat="server" AutoPostBack="True" CssClass="ddlCountry r30">
                        <asp:ListItem Text="DE" Value="DE"></asp:ListItem>
                        <asp:ListItem Text="DK" Value="DK"></asp:ListItem>
                        <asp:ListItem Text="FR" Value="FR"></asp:ListItem>
                        <asp:ListItem Text="UK" Value="UK"></asp:ListItem>
                        <asp:ListItem Text="ES" Value="ES"></asp:ListItem>
                    </asp:DropDownList>
                    <button class="showAddOffer r40" type="button">
                        <i class="pe-7s-close"></i>
                    </button>

                </header>

                <div class="content grid">
                    <asp:RadioButtonList ID="rblProduct2" runat="server" AutoPostBack="true" CssClass="rblProduct grid" RepeatLayout="UnorderedList" Visible="True">
                        <asp:ListItem Text="BASE" Value="BASE" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="PEAK" Value="PEAK"></asp:ListItem>
                        <asp:ListItem Text="OFF-PEAK" Value="OFFPEAK"></asp:ListItem>
                    </asp:RadioButtonList>

                    <asp:ListView ID="lvBid2" runat="server">
                        <LayoutTemplate>
                            <div class="lvBid grid r40">
                                <div class="contentHead grid">
                                    <h6>Qty</h6>
                                    <h6>Bid</h6>
                                </div>


                                <div runat="server" id="itemPlaceholder"></div>

                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="contentBody grid">

                                <span>
                                    <%# Eval("Quantity") %>
                                </span>
                                <span class="takeOffer">
                                    <asp:Button ID="btnOffer" runat="server" Text='<%# Eval("Price") %>' OnClick="btnOffer_Click" CausesValidation="False" />
                                </span>

                            </div>
                        </ItemTemplate>
                    </asp:ListView>

                    <asp:ListView ID="lvAsk2" runat="server">
                        <LayoutTemplate>
                            <div class="lvAsk grid r40">
                                <div class="contentHead grid">
                                    <h6>Ask</h6>
                                    <h6>Qty</h6>
                                </div>
                                <div runat="server" id="itemPlaceholder"></div>
                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="contentBody grid ">

                                <span class="takeOffer">
                                    <asp:Button ID="btnOffer" runat="server" Text='<%# Eval("Price") %>' OnClick="btnOffer_Click" CausesValidation="False" />
                                </span>
                                <span>
                                    <%# Eval("Quantity") %>
                                </span>

                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>


            </main>


            <div class="addOffer grid">
                <header class="grid">
                    <div class="titlehead r40 grid">
                        <h3>Create offer</h3>
                    </div>

                    <button class="showAddOffer offerClose r40 " type="button"><i class="pe-7s-close"></i></button>
                    <asp:DropDownList ID="ddlAddOfferCountry" runat="server" CssClass="ddlCountry r30">
                        <asp:ListItem Text="DE" Value="DE" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="DK" Value="DK"></asp:ListItem>
                        <asp:ListItem Text="FR" Value="FR"></asp:ListItem>
                        <asp:ListItem Text="UK" Value="UK"></asp:ListItem>
                        <asp:ListItem Text="ES" Value="ES"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RadioButtonList ID="rblAddOfferIsBid" runat="server" RepeatLayout="UnorderedList" CssClass="slidingSelector r20">
                        <asp:ListItem Text="BID" Value="1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="ASK" Value="0"></asp:ListItem>
                    </asp:RadioButtonList>
                </header>

                <asp:RadioButtonList ID="rblAddOfferProduct" runat="server" RepeatLayout="UnorderedList" CssClass="rblProduct grid">
                    <asp:ListItem Text="BASE" Value="BASE" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="PEAK" Value="PEAK"></asp:ListItem>
                    <asp:ListItem Text="OFF-PEAK" Value="OFFPEAK"></asp:ListItem>
                </asp:RadioButtonList>


                <asp:TextBox ID="txtQuantity" runat="server" PlaceHolder="Insert quantity" TextMode="Number" CssClass="r40 inputField"></asp:TextBox>
                <asp:TextBox ID="txtPrice" runat="server" PlaceHolder="Insert price" TextMode="Number" CssClass="r40 inputField"></asp:TextBox>
                <asp:Button ID="btnAddOfferSubmit" runat="server" Text="SUBMIT" OnClick="btnAddOfferSubmit_Click" CssClass="r40 r-hoverable btnActionLong" />
            </div>

            <div class="navmobile">
                <div class="burger r40">
                    <a href="#">
                        <img src="img/menu-18_451158df-85d7-429c-af14-307a5ae5e237.png" alt="Menu accesss icon" />
                    </a>
                    <div class="burger burger-content">
                        <nav>
           
                                <ul>
                                    <li class="user r40">
                                        <h6 class="username">User Mc.Testersen</h6>
                                        <img src="http://via.placeholder.com/120x100" alt="User Profile Image" />
                                       
                                        <div class="position">
                                            <i class="pe-7s-medal"></i>
                                            <p class="position-value">1234 <span class="position-unit">MW</span></p>
                                            <p class="balance">-20</p>
                                        </div>
                                        <div class="credit">
                                            <i class="pe-7s-credit"></i>
                                            <p class="credit-value">45457 <span class="credit-unit">EUR</span></p>
                                            <p class="balance">+36</p>
                                        </div>
                                    </li>
                                    <li>
                                        <button class="r30 btnActionLongM">
                                            <img src="img/Orion_handshake.png" alt="Over the counter icon" aria-label=" OTC" />
                                            NOTIFICATIONS
                                           
                                        </button>
                                    </li>
                                    <li>
                                        <button class="r30 btnActionLongM r-hoverable">
                                            <img src="img/icons8-transmission-tower-50.png" alt="Over the counter icon" />
                                            HISTORICAL DATA
                                        </button>
                                    </li>
                                    <li>
                                        <button class="r30 btnActionLongM r-hoverable">
                                            <img src="img/pay-2285_011e7de0-ed59-45c5-805e-7dcf300fbc9c.png" alt="Over the counter icon" />
                                            INFORMATION
                                        </button>
                                    </li>
                                </ul>
                                <div class="r40 legal">
                                    <p>Powered by</p>
                                    <img src="img/Neas_logo_neg.png" alt="Neas energy logo" />
                                </div>
                        </nav>
                    </div>
                </div>
                <div class="bottom">
                    <ul>
                        <li class="r80 r-hoverable r-small">
                            <a href="">
                                <img src="img/money-bag-euro-2280_4c3b9115-d519-486c-8087-e1e94d9bde63.png" alt="Over the counter market icon" />

                            </a>
                        </li>
                        <li class="r80 r-hoverable r-small">
                            <a href="">
                                <img src="img/money-bag-euro-2280_4c3b9115-d519-486c-8087-e1e94d9bde63.png" alt="Over the counter market icon" />

                            </a>


                        </li>
                        <li class="r80 r-hoverable r-small">
                            <a href="">
                                <img src="img/money-bag-euro-2280_4c3b9115-d519-486c-8087-e1e94d9bde63.png" alt="Over the counter market icon" />

                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
