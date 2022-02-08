<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="emfos.DBConnect.DBConnection"%>


<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/shop-grid-4.html   11 Nov 2019 12:39:07 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Menu Page &ndash; Gerai C</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/e-favicon.svg" />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body class="template-blog belle">
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
                    <!--Collection Banner-->
                    <div class="collection-header">
                        <div class="collection-hero">
                            <div class="collection-hero__image"><img class="blur-up lazyload" src="assets/images/headerfoods.png" /></div>
                            <div class="collection-hero__title-wrapper"><h1 class="collection-hero__title page-width">Gerai C</h1></div>
                        </div>
                    </div>
                    <!--End Collection Banner-->
                    <br>
                    <br>
                    <div class="container">
                        <div class="row">

                            <!--Main Content-->
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                                <div class="productList">
                                    <!--Toolbar-->
                                    <button type="button" class="btn btn-filter d-block d-md-none d-lg-none"> Product Filters</button>
                                    <div class="toolbar">
                                        <div class="filters-toolbar-wrapper">
                                            <div class="row">
                                                <div class="col-4 col-md-4 col-lg-4 filters-toolbar__item collection-view-as d-flex justify-content-start align-items-center">

                                                </div>
                                                <div class="col-4 col-md-4 col-lg-4 text-center filters-toolbar__item filters-toolbar__item--count d-flex justify-content-center align-items-center">
                                                    <%

                                                        Statement statement=con.createStatement();

                                                        String sql ="SELECT COUNT (\"m\".\"MENUID\") FROM public.menu \"m\", public.cafeworker \"c\" WHERE \"m\".\"CWORKID\" = \"c\".\"CWORKID\" AND \"c\".\"CWORKSTALLNAME\" = 'Gerai C';\n";
                                                        ResultSet resultSet = statement.executeQuery(sql);

                                                        while(resultSet.next()){
                                                    %>
                                                    <span class="filters-toolbar__product-count">Showing: <%=resultSet.getInt(1)%></span>

                                                    <%

                                                        }
                                                    %>
                                                </div>
                                                <div class="col-4 col-md-4 col-lg-4 text-right">
                                                    <div class="filters-toolbar__item">
                                                        <label for="SortBy" class="hidden">Sort</label>
                                                        <select name="SortBy" id="SortBy" class="filters-toolbar__input filters-toolbar__input--sort">
                                                            <option value="title-ascending" selected="selected">Sort</option>
                                                            <option>Best Selling</option>
                                                            <option>Alphabetically, A-Z</option>
                                                            <option>Alphabetically, Z-A</option>
                                                            <option>Price, low to high</option>
                                                            <option>Price, high to low</option>
                                                            <option>Date, new to old</option>
                                                            <option>Date, old to new</option>
                                                        </select>
                                                        <input class="collection-header__default-sort" type="hidden" value="manual">
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <!--End Toolbar-->

                                    <div class="grid-products grid--view-items">
                                        <div class="row">
                                            <%

                                                Statement statement2= con.createStatement();

                                                ResultSet resultSet2 = statement2.executeQuery("SELECT * FROM public.menu \"m\", public.cafeworker \"c\" WHERE \"m\".\"CWORKID\" = \"c\".\"CWORKID\" AND \"c\".\"CWORKSTALLNAME\" = 'Gerai C';\n");

                                                while(resultSet2.next()){
                                            %>
                                            <div class="list-view-items grid--view-items">
                                                <!--ListView Item-->
                                                <div class="list-product list-view-item">
                                                    <div class="list-view-item__image-column">
                                                        <div class="list-view-item__image-wrapper">
                                                            <!-- Image -->
                                                            <a href="#"><image src="images/<%=resultSet2.getString("fileName")%>" width="250" height="250"/></a>
                                                            <!-- End Image -->
                                                        </div>
                                                    </div>
                                                    <div class="list-view-item__title-column">
                                                        <!-- Product Name -->
                                                        <div class="h4 grid-view-item__title"><a href="product-layout-2.html"><%=resultSet2.getString("MENUNAME")%></a></div>
                                                        <!-- End Product Name-->
                                                        <!-- Gerai Name -->
                                                        <p class="product-review"><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i></p>
                                                        <!-- End Gerai Name -->
                                                        <!-- Sort Description -->
                                                        <%=resultSet2.getString("MENUDESC")%>
                                                        <!-- End Sort Description -->
                                                        <!-- Price -->
                                                        <p class="product-price grid-view-item__meta">
                                                            <span class="product-price__price product-price__sale"><span class="money">RM <%=resultSet2.getString("MENUTPRICE")%></span></span>
                                                        </p>
                                                        <!-- End Price -->
                                                        <form class="variants" method="post" action="${pageContext.request.contextPath}/studentCartServlet">
                                                            <input type="hidden"  name="menuid" value="<%=resultSet2.getInt("MENUID")%>">
                                                            <input type="hidden"name="cafeid" value="<%=resultSet2.getString("CWORKID")%>">
                                                            <input type="hidden" name="price" value="<%=resultSet2.getString("MENUTPRICE")%>">
                                                            <button class="btn btn--small" type="submit" name="Action" value="Add to Cart">Add to Cart</button>
                                                        </form>
                                                    </div>
                                                </div>
                                                <!--End ListView Item-->
                                            </div>
                                            <%

                                                }
                                            %>


                                        </div>
                                    </div>
                                    <div class="infinitpaginOuter">
                                        <div class="infinitpagin">
                                            <a href="#" class="btn loadMore">Load More</a>
                                        </div>
                                    </div>
                                </div>

                                <!--End Main Content-->
                            </div>
                        </div>

                    </div>
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

<!-- belle/shop-grid-4.html   11 Nov 2019 12:39:07 GMT -->
</html>