
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="emfos.DBConnect.DBConnection"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<html class="no-js" lang="en">

<!-- belle/faqs.html   11 Nov 2019 12:44:40 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Update Order Page &ndash; e-Medan Food Ordering System</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/e-Medan.svg" />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
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
        String CWORKID = (String) session.getAttribute("CWORKID");
        if (CWORKID == null) {
            response.sendRedirect("cafeworkerLogin.jsp");
        }
    %>
    <!--Top Header-->
    <div class="top-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-10 col-sm-8 col-md-5 col-lg-4">
                    <div class="currency-picker">
                    </div>
                    <div class="language-dropdown">

                    </div>
                    <p class="phone-no"></p>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block align-items-center">
                    <div class="text-center"><p class="top-header_middle-text"> Welcome to e-Medan Food Ordering System</p></div>
                </div>
                <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right align-items-right">
                    <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
                    <ul class="customer-links list-inline">
                        <li><a href="login.html">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--End Top Header-->
    <!--Header-->
    <div class="header-wrap animated d-flex">
        <div class="container-fluid">
            <div class="row align-items-center">
                <!--Desktop Logo-->
                <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
                    <a href="#">
                        <img src="assets/images/e-Medan.svg" alt="e-Medan Food Ordering System" title="e-Medan Food Ordering System" />
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
                            <%--                            <li class="lvl1 parent dropdown"><a href="#">Menu <i class="anm anm-angle-down-l"></i></a>--%>
                            <%--                                <ul class="dropdown">--%>
                            <%--                                    <li><a href="menucw.html" class="site-nav">View Menu</a></li>--%>
                            <%--                                    <li><a href="AddMenu.html" class="site-nav">Add Menu  </a></li>--%>
                            <%--                                    <li><a href="updateMenu.html" class="site-nav">Update Menu  </a></li>--%>
                            <%--                                    <li><a href="deleteMenu.html" class="site-nav">Delete Menu </a></li>--%>
                            <%--                                </ul>--%>
                            <li class="lvl1 parent megamenu"><a href="cafeworkerMenuList.jsp"> Menu <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="cafeworkerUpdateStatusOrder.jsp"> Order <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="#"> Feedback <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="#"> Report <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="cafeworkerProfile.jsp"> Account <i class="anm anm-angle-down-l"></i></a></li>
                        </ul>
                    </nav>
                    <!--End Desktop Menu-->
                </div>
            </div>
        </div>
    </div>
    <!--End Header-->



    <!--Body Content-->
    <div id="page-content">
        <!--Page Title-->
        <%--<div class="page section-header text-center">
            <div class="page-title">
                <div class="wrapper"><h1 class="page-width">Menu List of <%=session.getAttribute("CWORKSTALLNAME")%></h1></div>
            </div>
        </div>--%>
        <!--End Page Title-->
        <!--Page Title-->
        <div class="page section-header text-center">
            <div class="page-title">
                <div class="wrapper"><h1 class="page-width">Update Order Page</h1></div>
            </div>
        </div>

        <div class="container align-items-center ">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                    <form method="post" action="${pageContext.request.contextPath}/cafeworkerUpdateStatusServlet" class="cart style2">
                        <table>
                            <thead class="cart__row cart__header">
                            <tr>
                                <th class="text-center">Order NO</th>
                                <th class="text-center">Name</th>
                                <th class="text-center">Total Price</th>
                                <th class="text-center">Order Details</th>
                                <th class="text-center">Status</th>
                                <th class="action">&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                Connection con = emfos.DBConnect.DBConnection.getConn();

                                Statement st1 = con.createStatement();
                                ResultSet rs1;
                                rs1 = st1.executeQuery("SELECT * FROM public.forder \"o\", public.student \"s\" WHERE \"o\".\"STUDENTID\" = \"s\".\"STUDENTID\" \n AND \"o\".\"CWORKID\" = '" + session.getAttribute("CWORKID")+"'");
                                while (rs1.next())
                                {
                            %>
                                <tr class="cart__row border-bottom line1 cart-flex border-top">
                                    <td class="cart__meta text-right cart-flex-item">
                                        <div class="list-view-item__title text-center">
                                            <h1><%=rs1.getInt("ORDERNO")%></h1>
                                            <input type="hidden" name="ORDERNO" value="<%=rs1.getInt("ORDERNO")%>">

                                            <h6><%=rs1.getDate("ORDERDATE")%></h6>

                                            <h6><%=rs1.getTime("ORDERTIME")%></h6>
                                            <input type="hidden" name="ORDERTIME" value="<%=rs1.getTime("ORDERTIME")%>" />
                                        </div>
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item text-center">
                                        <div class="list-view-item__title text-center">
                                            <h3><%=rs1.getString("STUDENTNAME")%></h3>
                                            <input type="hidden" name="STUDENTID" value="<%=rs1.getString("STUDENTID")%>" />
                                        </div>
                                    </td>
                                    <td class="cart__update-wrapper cart-flex-item text-right">
                                        <div class="list-view-item__title text-center">
                                            <h3>RM <%=rs1.getString("ORDERTPRICE")%></h3>
                                            <input type="hidden" name="ORDERTPRICE" value="<%=rs1.getDouble("ORDERTPRICE")%>" />
                                        </div>
                                    </td>
                                    <td class="text-center small--hide cart-price">
                                        <a href="cw_OrderDetails.jsp?id=<%=rs1.getInt("ORDERNO")%>" type="button"  class="text-center" style="cursor: pointer;">View <i class="fa fa-eye"></i></a>
                                    </td>
                                    <td class="text-center small--hide cart-price">
                                            <input type="hidden" name="ORDERID" value="<%=rs1.getInt("ORDERID")%>" />
                                        <div class="dropdowns">
                                            <select id="ORDERSTATUS" name="ORDERSTATUS" onchange='this.form.submit();'>
                                                <option value="<%=rs1.getString("ORDERSTATUS")%>"><%=rs1.getString("ORDERSTATUS")%></option>
                                                <option value="PENDING">PENDING</option>
                                                <option value="COMPLETED">COMPLETED</option>
                                            </select>
                                        </div>
                                    </td>

                                </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                        <hr>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <!--End Body Content-->

    <!--Footer-->
    <footer id="footer">
        <div class="newsletter-section">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-7 w-100 d-flex justify-content-start align-items-center">
                        <div class="display-table">
                            <div class="display-table-cell footer-newsletter">
                                <div class="section-header text-center">
                                    <label class="h2"><span>sign up for </span>newsletter</label>
                                </div>
                                <form action="#" method="post">
                                    <div class="input-group">
                                        <input type="email" class="input-group__field newsletter__input" name="EMAIL" value="" placeholder="Email address" required="">
                                        <span class="input-group__btn">
                                                <button type="submit" class="btn newsletter__submit" name="commit" id="Subscribe"><span class="newsletter__submit-text--large">Subscribe</span></button>
                                            </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-5 d-flex justify-content-end align-items-center">
                        <div class="footer-social">
                            <ul class="list--inline site-footer__social-icons social-icons">
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Facebook"><i class="icon icon-facebook"></i></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Twitter"><i class="icon icon-twitter"></i> <span class="icon__fallback-text">Twitter</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Pinterest"><i class="icon icon-pinterest"></i> <span class="icon__fallback-text">Pinterest</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Instagram"><i class="icon icon-instagram"></i> <span class="icon__fallback-text">Instagram</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Tumblr"><i class="icon icon-tumblr-alt"></i> <span class="icon__fallback-text">Tumblr</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on YouTube"><i class="icon icon-youtube"></i> <span class="icon__fallback-text">YouTube</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Vimeo"><i class="icon icon-vimeo-alt"></i> <span class="icon__fallback-text">Vimeo</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="site-footer">
            <div class="container">
                <!--Footer Links-->
                <div class="footer-top">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
                            <h4 class="h4">Quick Shop</h4>
                            <ul>
                                <li><a href="#">Women</a></li>
                                <li><a href="#">Men</a></li>
                                <li><a href="#">Kids</a></li>
                                <li><a href="#">Sportswear</a></li>
                                <li><a href="#">Sale</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
                            <h4 class="h4">Informations</h4>
                            <ul>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Careers</a></li>
                                <li><a href="#">Privacy policy</a></li>
                                <li><a href="#">Terms &amp; condition</a></li>
                                <li><a href="#">My Account</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
                            <h4 class="h4">Customer Services</h4>
                            <ul>
                                <li><a href="#">Request Personal Data</a></li>
                                <li><a href="#">FAQ's</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Orders and Returns</a></li>
                                <li><a href="#">Support Center</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 contact-box">
                            <h4 class="h4">Contact Us</h4>
                            <ul class="addressFooter">
                                <li><i class="icon anm anm-map-marker-al"></i><p>55 Gallaxy Enque,<br>2568 steet, 23568 NY</p></li>
                                <li class="phone"><i class="icon anm anm-phone-s"></i><p>(440) 000 000 0000</p></li>
                                <li class="email"><i class="icon anm anm-envelope-l"></i><p>sales@yousite.com</p></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--End Footer Links-->
                <hr>
                <div class="footer-bottom">
                    <div class="row">
                        <!--Footer Copyright-->
                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 order-1 order-md-0 order-lg-0 order-sm-1 copyright text-sm-center text-md-left text-lg-left"><span></span> <a href="templateshub.net">Templates Hub</a></div>
                        <!--End Footer Copyright-->
                        <!--Footer Payment Icon-->
                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 order-0 order-md-1 order-lg-1 order-sm-0 payment-icons text-right text-md-center">
                            <ul class="payment-icons list--inline">
                                <li><i class="icon fa fa-cc-visa" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-cc-mastercard" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-cc-discover" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-cc-paypal" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-cc-amex" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-credit-card" aria-hidden="true"></i></li>
                            </ul>
                        </div>
                        <!--End Footer Payment Icon-->
                    </div>
                </div>
            </div>
        </div>

        <!-- The Modal -->
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
</html>
