<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="emfos.DBConnect.DBConnection"%>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="emfos.DAO.menuDAO" %>

<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/cart.html   11 Nov 2019 12:47:01 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Your cart</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/e-favicon.svg" />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="assets/css/deletemodal.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body class="page-template belle">
<div class="pageWrapper">
    <!--Search Form Drawer-->
    <div class="search">
        <div class="search__form">
            <form class="search-bar__form" action="#">
                <button class="go-btn search__button" type="submit"><i class="icon anm anm-search-l"></i></button>
                <input class="search__input" type="search" name="q" value="" placeholder="Search entire store..." aria-label="Search" autocomplete="off">
            </form>
            <button type="button" class="search-trigger close-btn"><i class="icon anm anm-times-l"></i></button>
        </div>
    </div>
    <!--End Search Form Drawer-->
        <%
        String STUDENTNAME = (String) session.getAttribute("STUDENTNAME");
        if (STUDENTNAME== null)
        { %>
    <!--Top Header-->
    <div class="top-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-10 col-sm-8 col-md-5 col-lg-4">
                    <p class="phone-no"><i class="anm anm-phone-s"></i> (+606) 264 5000</p>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
                </div>
                <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
                    <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
                    <ul class="customer-links list-inline">
                        <li><a href="studentLogin.jsp">Student Login</a></li>
                        <li><a href="cafeworkerLogin.jsp">Cafeworker Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--End Top Header-->
    <!--Header-->
    <div class="header-wrap animated d-flex border-bottom">
        <div class="container-fluid">
            <div class="row align-items-center">
                <!--Desktop Logo-->
                <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
                    <a href="index.jsp">
                        <img src="assets/images/e-Medan.svg" alt="e-Medan Food Ordering Website" title="e-Medan Food Ordering Website" />
                    </a>
                </div>
                <!--End Desktop Logo-->
                <div class="col-2 col-sm-3 col-md-3 col-lg-8">
                    <div class="d-block d-lg-none">
                        <button type="button" class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
                            <i class="icon anm anm-times-l"></i>
                            <i class="anm anm-bars-r"></i>
                        </button>
                    </div>
                    <!--Desktop Menu-->
                    <nav class="grid__item" id="AccessibleNav"><!-- for mobile -->
                        <ul id="siteNav" class="site-nav medium center hidearrow">
                            <li class="lvl1 parent megamenu"><a href="index.jsp">Home <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="aboutus.jsp">About Us <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent dropdown"><a href="#">Gerai <i class="anm anm-angle-down-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="GeraiAMenuList.jsp" class="site-nav">Gerai A</a></li>
                                    <li><a href="GeraiBMenuList.jsp" class="site-nav">Gerai B</a></li>
                                    <li><a href="GeraiCMenuList.jsp" class="site-nav">Gerai C</a></li>
                                    <li><a href="GeraiDMenuList.jsp" class="site-nav">Gerai D</a></li>
                                </ul>
                            </li>
                            </li>
                        </ul>
                    </nav>
                    <!--End Desktop Menu-->
                </div>

                <% } else{
                %>

                <!--Top Header-->
                <div class="top-header">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-10 col-sm-8 col-md-5 col-lg-4">
                            </div>
                            <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
                                <div class="text-center"><p class="top-header_middle-text">Welcome, <%=session.getAttribute("STUDENTNAME")%>!</p></div>
                            </div>
                            <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
                                <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
                                <ul class="customer-links list-inline">
                                    <li><a href="${pageContext.request.contextPath}/studentLogoutServlet">Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Top Header-->
                <!--Header-->
                <div class="header-wrap animated d-flex border-bottom">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!--Desktop Logo-->
                            <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
                                <a href="index.jsp">
                                    <img src="assets/images/e-Medan.svg" alt="e-Medan Food Ordering Website" title="e-Medan Food Ordering Website" />
                                </a>
                            </div>
                            <!--End Desktop Logo-->
                            <div class="col-2 col-sm-3 col-md-3 col-lg-8">
                                <div class="d-block d-lg-none">
                                    <button type="button" class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
                                        <i class="icon anm anm-times-l"></i>
                                        <i class="anm anm-bars-r"></i>
                                    </button>
                                </div>
                                <!--Desktop Menu-->
                                <nav class="grid__item" id="AccessibleNav"><!-- for mobile -->
                                    <ul id="siteNav" class="site-nav medium center hidearrow">
                                        <li class="lvl1 parent megamenu"><a href="index.jsp">Home <i class="anm anm-angle-down-l"></i></a></li>
                                        <li class="lvl1 parent megamenu"><a href="aboutus.jsp">About Us <i class="anm anm-angle-down-l"></i></a></li>
                                        <li class="lvl1 parent dropdown"><a href="#">Gerai <i class="anm anm-angle-down-l"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="GeraiAMenuList.jsp" class="site-nav">Gerai A</a></li>
                                                <li><a href="GeraiBMenuList.jsp" class="site-nav">Gerai B</a></li>
                                                <li><a href="GeraiCMenuList.jsp" class="site-nav">Gerai C</a></li>
                                                <li><a href="GeraiDMenuList.jsp" class="site-nav">Gerai D</a></li>
                                            </ul>
                                        </li>
                                        <li class="lvl1 parent megamenu"><a href="studentProfile.jsp">Account <i class="anm anm-angle-down-l"></i></a></li>
                                    </ul>
                                </nav>
                                <!--End Desktop Menu-->
                            </div>
                            <% }%>
                            <div class="col-4 col-sm-3 col-md-3 col-lg-2">
                                <div class="site-cart">
                                    <a href="studentCart.jsp" class="site-header__cart" title="Cart">
                                        <i class="icon anm anm-bag-l"></i>
                                        <%
                                            Connection con = emfos.DBConnect.DBConnection.getConn();

                                            int index=0;
                                            Double grandtotal = 0.0;

                                            Statement st=con.createStatement();
                                            ResultSet rs = st.executeQuery("SELECT COUNT (*) FROM public.cart WHERE \"STUDENTID\" ='" + session.getAttribute("STUDENTID")+"'");

                                            rs.next();
                                            int count = rs.getInt(1);
                                        %>
                                        <span id="CartCount" class="site-header__cart-count" data-cart-render="item_count"><%=count%></span>
                                    </a>

                                </div>
                                <div class="site-header__search">
                                    <button type="button" class="search-trigger"><i class="icon anm anm-search-l"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Header-->


    <!--Body Content-->
    <div id="page-content">
        <!--Page Title-->
        <div class="page section-header text-center">
            <div class="page-title">
                <div class="wrapper"><h1 class="page-width">Your cart</h1></div>
            </div>
        </div>
        <!--End Page Title-->

        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-8 col-lg-8 main-col">
                    <div class="cart style2">
                        <table>
                            <thead class="cart__row cart__header">
                            <tr>
                                <th colspan="2" class="text-center">Product</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Quantity</th>
                                <th class="text-right">Total</th>
                                <th class="action">&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                Statement st2 = con.createStatement();
                                ResultSet rs2 = st2.executeQuery("SELECT * FROM public.cart \"c\", public.menu \"m\" WHERE \"c\".\"MENUID\" = \"m\".\"MENUID\" AND \"c\".\"STUDENTID\" ='" + session.getAttribute("STUDENTID")+"'");
                                while (rs2.next()){
                                    index++;
                            %>
                            <tr class="cart__row border-bottom line1 cart-flex border-top">
                                <td class="cart__image-wrapper cart-flex-item">
                                    <a href="#"><img class="cart__image" src="images/<%=rs2.getString("fileName")%>"></a>
                                </td>
                                <td class="cart__meta small--text-left cart-flex-item">
                                    <div class="list-view-item__title">
                                        <a href="#"><%=rs2.getString("MENUNAME")%></a>
                                    </div>
                                </td>
                                <%
                                    DecimalFormat df = new DecimalFormat("##. 00");
                                    menuDAO mdao = new menuDAO();

                                    Double price = mdao.getPriceByMenuID(rs2.getInt("MENUID"));
                                    Double totalprice = price * (rs2.getInt("CARTQUANTITY"));
                                    grandtotal = grandtotal + totalprice;
                                %>

                                <td class="cart__price-wrapper cart-flex-item">
                                    <span class="money">RM <%=df.format(rs2.getDouble("MENUTPRICE"))%></span>
                                </td>
                                <td class="cart__update-wrapper cart-flex-item text-right">
                                    <form method="post" action="${pageContext.request.contextPath}/studentCartServlet">
                                        <div class="cart__qty text-center">
                                            <div class="qtyField">
                                                <input type="hidden" name="menuid" value="<%=rs2.getInt("MENUID") %>">
                                                <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                                                <input class="cart__qty-input qty" type="text" name="quantity" id="qty" value="<%=rs2.getString("CARTQUANTITY")%>" pattern="[0-9]*">
                                                <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a><br>
                                                <button type="submit" name="Action" value="Update Quantity" class="btn--link cart-update"><i class="fa fa-refresh"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </td>
                                <td class="text-right small--hide cart-price">
                                    <div><span class="money">RM <%=df.format(totalprice)%></span></div>
                                </td>
                                <td>
                                    <form method="post" action="${pageContext.request.contextPath}/studentCartServlet">
                                        <input type="hidden" name="id" value="<%=rs2.getInt("MENUID")%>">
                                        <input type="submit" name="Action" value="x" onclick="return confirm('Are you sure you want to remove this item from cart?');">
                                    </form>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>

                        </table>
                        <%
                            if (index == 0) {
                        %>
                        <center>
                            <strong>There is no item(s) in your cart.</strong>
                        </center>
                        <%
                            }
                        %>
                    </div>
                </div>

                <%
                    DecimalFormat df = new DecimalFormat("##. 00");
                %>

                <div class="col-12 col-sm-12 col-md-4 col-lg-4 cart__footer">
                    <div class="solid-border">
                        <div class="row border-bottom pb-2">
                            <span class="col-12 col-sm-6 cart__subtotal-title">Subtotal</span>
                            <span class="col-12 col-sm-6 text-right">RM <%=df.format(grandtotal)%></span></span>
                        </div>

                        <div class="row border-bottom pb-2 pt-2">
                            <span class="col-12 col-sm-6 cart__subtotal-title">Delivery Method</span>
                            <span class="col-12 col-sm-6 text-right">Cash on Pickup</span>
                        </div>
                        <div class="row border-bottom pb-2 pt-2">
                            <span class="col-12 col-sm-6 cart__subtotal-title"><strong>Grand Total</strong></span>
                            <span class="col-12 col-sm-6 cart__subtotal-title cart__subtotal text-right">RM <%=df.format(grandtotal)%></span></span>
                        </div>
                        <form method="post" action="${pageContext.request.contextPath}/orderServlet">
                            <input type="hidden" name="amount" value="<%=df.format(grandtotal)%>">
                            <input type="submit" name="Action" id="cartCheckout" class="btn btn--small-wide checkout" value="Place Order">
                        </form>
                    </div>

                </div>
            </div>
        </div>

    </div>



    <!-- Delete Pop up -->
    <div class="modal fade" id="removeFromCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2" aria-hidden="true">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header flex-column">
                    <div class="icon-box">
                        <i class="material-icons">&#xE5CD;</i>
                    </div>
                    <h4 class="modal-title w-100">Are you sure?</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div id="show-data2"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Delete Pop up -->
    <!--End Body Content-->

    <!--Footer-->
    <footer id="footer" class="footer-2">
        <div class="site-footer">
            <div class="container">
                <!--Footer Links-->
                <div class="footer-top">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 contact-box">
                            <h4 class="h4">Contact Us</h4>
                            <ul class="addressFooter">
                                <li><i class="icon anm anm-map-marker-al"></i><p>Jalan Lembah Kesang 1/1-2, Kampung <br>Seri Mendapat, 77300 Merlimau, Melaka</p></li>
                                <li class="phone"><i class="icon anm anm-phone-s"></i><p>(+606) 264 5000</p></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--End Footer Links-->
                <hr>
                <div class="footer-bottom">
                    <div class="row">
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--End Footer-->
    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->


    <!-- Including Jquery -->
    <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="assets/js/vendor/jquery.cookie.js"></script>
    <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="assets/js/vendor/wow.min.js"></script>
    <!-- Including Javascript -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/lazysizes.js"></script>
    <script src="assets/js/main.js"></script>
</div>
</body>


<!-- belle/cart.html   11 Nov 2019 12:47:01 GMT -->
</html>