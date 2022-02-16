<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>e-Medan Food Ordering Website</title>
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
</head>
<body class="template-index home2-default">
<div id="pre-loader">
    <img src="assets/images/loader.gif" alt="Loading..." />
</div>


<jsp:include page="header.jsp"></jsp:include>


    <!--Body Content-->
    <div id="page-content">
        <!--Home slider-->
        <div class="slideshow slideshow-wrapper pb-section">
            <div class="home-slideshow">
                <div class="slide">
                    <div class="blur-up lazyload">
                        <img class="blur-up lazyload" data-src="assets/images/headernasilemak.png" src="assets/images/headernasilemak.png"  />
                        <div class="slideshow__text-wrap slideshow__overlay classic middle">
                            <div class="slideshow__text-content middle">
                                <div class="container">
                                    <div class="wrap-caption left" >
                                        <br><br><br><br><br><br><br><br>
                                        <br><br><br><br><br><br>
                                        <br><br>
                                        <a href= "studentLogin.jsp" class= "btn">Order now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide">
                    <div class="blur-up lazyload">
                        <img class="blur-up lazyload" data-src="assets/images/headerfoods.png" src="assets/images/headerfoods.png" alt="Summer Bikini Collection" title="Summer Bikini Collection" />
                        <div class="slideshow__text-wrap slideshow__overlay classic middle">
                            <div class="slideshow__text-content middle">
                                <div class="container">
                                    <div class="wrap-caption center">
                                        <br><br><br><br><br><br>
                                        <br><br><br><br><br><br>
                                        <a href= "studentLogin.jsp" class= "btn">Order now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Home slider-->


        <!--New Arrivals-->
        <div class="product-rows section">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="section-header text-center">
                            <h2 class="h2">List of Gerai</h2>
                        </div>
                    </div>
                </div>

                <!--Collection Box slider-->
                <div class="collection-box section">
                    <div class="container-fluid">
                        <div class="collection-grid">
                            <div class="collection-grid-item">
                                <a href="GeraiAMenuList.jsp" class="collection-grid-item__link">
                                    <img data-src="assets/images/banner (1).jpg" src="assets/images/banner (1).jpg" class="blur-up lazyload"/>
                                    <div class="collection-grid-item__title-wrapper">
                                        <h3 class="collection-grid-item__title btn btn--secondary no-border">GERAI A</h3>
                                    </div>
                                </a>
                            </div>
                            <div class="collection-grid-item">
                                <a href="GeraiBMenuList.jsp" class="collection-grid-item__link">
                                    <img data-src="assets/images/banner (1).jpg" src="assets/images/banner (1).jpg" class="blur-up lazyload"/>
                                    <div class="collection-grid-item__title-wrapper">
                                        <h3 class="collection-grid-item__title btn btn--secondary no-border">GERAI B</h3>
                                    </div>
                                </a>
                            </div>
                            <div class="collection-grid-item blur-up lazyloaded">
                                <a href="GeraiCMenuList.jsp" class="collection-grid-item__link">
                                    <img data-src="assets/images/banner (1).jpg" src="assets/images/banner (1).jpg" class="blur-up lazyload"/>
                                    <div class="collection-grid-item__title-wrapper">
                                        <h3 class="collection-grid-item__title btn btn--secondary no-border">GERAI C</h3>
                                    </div>
                                </a>
                            </div>
                            <div class="collection-grid-item">
                                <a href="GeraiDMenuList.jsp" class="collection-grid-item__link">
                                    <img data-src="assets/images/banner (1).jpg" src="assets/images/banner (1).jpg" class="blur-up lazyload"/>
                                    <div class="collection-grid-item__title-wrapper">
                                        <h3 class="collection-grid-item__title btn btn--secondary no-border">GERAI D</h3>
                                    </div>
                                </a>
                            </div>
                            <div class="collection-grid-item">
                                <a href="GeraiEMenuList.jsp" class="collection-grid-item__link">
                                    <img data-src="assets/images/banner (1).jpg" src="assets/images/banner (1).jpg" class="blur-up lazyload"/>
                                    <div class="collection-grid-item__title-wrapper">
                                        <h3 class="collection-grid-item__title btn btn--secondary no-border">GERAI E</h3>
                                    </div>
                                </a>
                            </div>
                            <div class="collection-grid-item">
                                <a href="GeraiFMenuList.jsp" class="collection-grid-item__link">
                                    <img data-src="assets/images/banner (1).jpg" src="assets/images/banner (1).jpg" class="blur-up lazyload"/>
                                    <div class="collection-grid-item__title-wrapper">
                                        <h3 class="collection-grid-item__title btn btn--secondary no-border">GERAI F</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Collection Box slider-->

            </div>
        </div>
        <!--End Featured Product-->
    </div>
    <!--End Body Content-->
    <!--Google map-->
    <div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 100px">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3986.8200168934977!2d102.450926814574!3d2.2213963983808642!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31d1c2904d683dc3%3A0x216b1d164eba26a1!2sUniversiti%20Teknologi%20MARA%20Cawangan%20Melaka%20Kampus%20Jasin!5e0!3m2!1sen!2smy!4v1642058261291!5m2!1sen!2smy" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>

    <!--Google Maps-->
<jsp:include page="footer.jsp"></jsp:include>
    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->



    <!-- Including Jquery -->
    <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="assets/js/vendor/jquery.cookie.js"></script>
    <script src="assets/js/vendor/wow.min.js"></script>
    <!-- Including Javascript -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/lazysizes.js"></script>
    <script src="assets/js/main.js"></script>

    <!-- JS -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/js/mainform.js"></script>
</div>

</body>
</html>