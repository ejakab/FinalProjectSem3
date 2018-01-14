<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lobby.aspx.cs" Inherits="FinalProjectSem3.Lobby" %>

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

    <title>Lobby</title>

</head>
<body>
    <form id="form1" runat="server">
        <div id="lobby" class="grid">
            <header class="topbar">
                <section class="quickaction r40">
                    <ul>
                        <li class="quickaction-item"><i class="pe-7s-info"></i></li>
                        <li class="quickaction-item"><i class="pe-7s-drawer"></i></li>
                        <li class="quickaction-item"><i class="pe-7s-bell"></i></li>
                    </ul>
                </section>
                <section class="timeremaining r30">
                    <div>
                        <p><i class="pe-7s-clock pe-va"></i>14:25</p>
                    </div>
                </section>
                <section class="logout r40">
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
                            <asp:Button ID="btnOTC" runat="server" Text="OVER THE COUNTER" CssClass="r30 r-hoverable btnAction240" PostBackUrl="~/OverTheCounterMarket.aspx" />
                        </li>
                        <li>
                            <asp:Button ID="btnCAP" runat="server" Text="CAPACITY" CssClass="r30 r-hoverable btnAction240" PostBackUrl="~/CapacityMarket.aspx" />
                        </li>
                        <li>
                            <asp:Button ID="btnEX" runat="server" Text="EXCHANGE" CssClass="r30 r-hoverable btnAction240" PostBackUrl="~/ExchangeMarket.aspx" />
                        </li>
                    </ul>
                    <div class="pluspiece r40"></div>
            </aside>

            <section class="results subgrid">
                <div class="titlehead r40 subgrid">
                    <h3>Results
                    </h3>
                </div>
                <div class="results-graph r40"></div>
                <div class="results-table r40">
                </div>
            </section>
            <section class="joingame r40 subgrid">
                <h3>Next game starts in </h3>
                <p class="timetilnextgame"><i class="pe-7s-clock"></i>14:33:32</p>
                <asp:Button ID="btnJoin" runat="server" Text="JOIN GAME" CssClass="r30 r-hoverable btnJoin" />
            </section>
            <section class="gamerules subgrid">
                <div class="titlehead r40 subgrid">
                    <h3>Game rules</h3>
                </div>
                <div class="slide r40">
                    <div class="slide-content">
                        <h3>
                            <i class="pe-7s-drawer"></i>
                            Historical data
                        </h3>
                        <p>
                            This is the drawer with all the information you need to calculate the stock price. It will be available for you as soon as the game begins.
                        </p>
                    </div>
                    <div class="slide-content">
                        <h3>
                            <i class="pe-7s-bell"></i>
                            Notifications
                        </h3>
                        <p>
                            At any moment of the game you might be notified about some new from the virtual world that might or might not affect the stock price.
                        </p>
                    </div>
                </div>
                <div class="slide r40">
                    <div class="slide-content">
                        <h3>
                            <i class="pe-7s-info"></i>
                            Historical data
                        </h3>
                        <p>
                            This is the drawer with all the information you need to calculate the stock price. It will be available for you as soon as the game begins.
                        </p>
                    </div>
                    <div class="slide-content">
                        <h3>
                            <i class="pe-7s-bell"></i>
                            Notifications
                        </h3>
                        <p>
                            At any moment of the game you might be notified about some new from the virtual world that might or might not affect the stock price. It's up to you to decide whether or not it is important.
                        </p>
                    </div>
                </div>
                <div class="r30">
                </div>
                <button class="prev r30 r-hoverable" type="button">Prev</button>
                <button class="next r30 r-hoverable" type="button">Next</button>
            </section>

            <div class="navmobile">
                <div class="burger r40">
                    <a href="">
                        <i class="pe-7s-menu"></i>
                    </a>
                    <div class="burger burger-content"></div>
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
