<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 29/1/2022
  Time: 6:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="emfos.DBConnect.DBConnection"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/about-us.html   11 Nov 2019 12:44:33 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>About Us &ndash; e-Medan Food Ordering System</title>
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
<body class="page-template belle">
<div class="pageWrapper">
    <jsp:include page="header.jsp"></jsp:include>
    <!--Body Content-->
    <div id="page-content">
        <!--Page Title-->
        <div class="page section-header text-center">
            <div class="page-title">
                <div class="wrapper"><h1 class="page-width">About Us</h1></div>
            </div>
        </div>
        <!--End Page Title-->

        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                    <div class="text-center mb-4">
                        <h2 class="h2">e-Medan Food Ordering System</h2>
                        <div class="rte-setting">
                            <p><strong>"We prepare and serve high quality, simple food, at a great value, in a home-like environment.”</strong></p>
                            <p>Life’s too short for boring food, let's play with your food!</p>
                            <p>See you tomorrow!</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-sm-4 col-md-4 col-lg-4 mb-4"><img class="blur-up lazyload" data-src="assets/images/burger.jpg" src="assets/images/burger.jpg" alt="About Us" /></div>
                <div class="col-12 col-sm-4 col-md-4 col-lg-4 mb-4"><img class="blur-up lazyload" data-src="assets/images/nasi ayam.jpg" src="assets/images/nasi ayam.jpg" alt="About Us" /></div>
                <div class="col-12 col-sm-4 col-md-4 col-lg-4 mb-4"><img class="blur-up lazyload" data-src="assets/images/nasi goreng pataya.jpg" src="assets/images/nasi goreng pataya.jpg" alt="About Us" /></div>
            </div>
            <div class="row">
                <div class="col-12">
                    <h2>Know More About UITM Campus Jasin</h2>
                    <p>UiTM Kampus Jasin is one of the Melaka branches of Universiti Teknologi MARA (UiTM). It is
                        the third campus established in Melaka, giving each of Melaka's three districts its own UiTM
                        campus: Melaka Tengah district (Kampus Bandar Raya), Alor Gajah district (Kampus Lendu)
                        and Jasin district (Kampus Jasin). The groundbreaking ceremony for the UiTM Kampus Jasin
                        was held on February 19, 2011 and was officiated by Datuk Seri Najib bin Razak. The campus
                        hosts two faculties namely Faculty of Computer Science and Mathematics and Faculty of
                        Plantation and Agrotechnology.</p>
                    <p></p>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-4">
                    <h2 class="h2">About Medan Selera UiTM Campus Jasin</h2>
                    <div class="rte-setting"><p><strong>In UiTM Kampus Jasin, there are three cafeterias located throughout the campus in which students can enjoy a variety of foods served by each of the cafeteria. One of the cafeteria is</strong></p>
                        <p>One of the cafeteria is Medan Selera, a college cafeteria that was built specifically for students staying in college and it
                            is also open for the non-residents. Medan Selera currently has 10 stalls, each of which serves a
                            wide selection of foods and beverages for breakfast, lunch and dinner. The college cafeteria is
                            managed by Unit Pengurusan Kolej (UPK). This department is responsible for assisting
                            students' welfare as well as providing facilities to students such as the college cafeteria. One of
                            the units under UPK is Jawatankuasa Unit Ruang Niaga (JKRN). The secretary of JKRN, Encik
                            Muazmer bin Mustapa is the one in charge of renting out business spaces to vendors in the
                            college area.</p>
                        <p></p>
                    </div>
                </div>
                <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                    <h2 class="h2">Contact Us</h2>
                    <ul class="addressFooter">
                        <li><i class="icon anm anm-map-marker-al"></i><p>Universiti Teknologi MARA (UiTM), Cawangan Melaka Kampus Jasin, 77300 Merlimau, Melaka MALAYSIA</p></li>
                        <li class="phone"><i class="icon anm anm-phone-s"></i><p>(+606) 264 5000</p></li>
                        <li class="email"><i class="icon anm anm-envelope-l"></i><p>korporatmelaka@uitm.edu.my</p></li>
                    </ul>
                    <hr />
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
    <!--End Body Content-->
    <jsp:include page="footer.jsp"></jsp:include>
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

<!-- belle/about-us.html   11 Nov 2019 12:44:39 GMT -->
</html>