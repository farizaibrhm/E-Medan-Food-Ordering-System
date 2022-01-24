<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Add Menu</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../assets/images/e-favicon.svg" />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="../assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/responsive.css">

    <style>
        div, form, input, select, textarea, p {
            padding: 0;
            margin: 0;
            outline: none;
            font-family: Roboto, Arial, sans-serif;
            font-size: 14px;
            color: #6D6D6D;
            line-height: 22px;
        }
        h1 {
            position: absolute;
            margin: 0;
            line-height: 42px;
            font-size: 42px;
            color: #fff;
            z-index: 2;
        }
        .testbox {
            display: flex;
            justify-content: center;
            align-items: center;
            height: inherit;
            padding: 20px;
        }
        form {
            width: 80%;
            padding: 20px;
            border-radius: 6px;
            background: #fff;
            box-shadow: 0 0 25px 0 #d6e0f5;
        }
        .banner {
            position: relative;
            height: 300px;
            background-color:white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .banner::after {
            content: "";
            background-color:black;
            position: absolute;
            width: 100%;
            height: 60%;
        }
        input, select, textarea {
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input {
            width: calc(100% - 10px);
            padding: 5px;
        }
        input[type="date"] {
            padding: 4px 5px;
        }
        select {
            width: 100%;
            padding: 7px 0;
            background: transparent;
        }
        textarea {
            width: calc(100% - 12px);
            padding: 5px;
        }
        .item input:hover, .item select:hover, .item textarea:hover {
            border: 1px solid transparent;
            box-shadow: 0 0 6px 0 #d6e0f5;
            color:black;
        }
        .item {
            position: relative;
            margin: 10px 0;
        }
        input[type="date"]::-webkit-inner-spin-button {
            display: none;
        }
        .item i, input[type="date"]::-webkit-calendar-picker-indicator {
            position: absolute;
            font-size: 20px;
            color: #a9a9a9;
        }
        .item i {
            right: 2%;
            top: 28px;
            z-index: 1;
        }
        [type="date"]::-webkit-calendar-picker-indicator {
            right: 1%;
            z-index: 2;
            opacity: 0;
            cursor: pointer;
        }
        button {
            width: 150px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: #0087cc;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
        }
        button:hover {
            background: #6eb8dd;
        }
        @media (min-width: 568px) {
            .name-item
            /*.city-item {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }*/
        }


    </style>

</head>
<body class="template-product belle">
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
    <!--Top Header-->
    <div class="top-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-10 col-sm-8 col-md-5 col-lg-4">
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
                    <div class="text-center"><p class="top-header_middle-text">CAFE WORKER DASHBOARD</p></div>
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
                    <a href="../index.html">
                        <img src="../assets/images/e-Medan.svg" alt="e-Medan Food Ordering System" title="e-Medan Food Ordering System" />
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
                            <li class="lvl1 parent megamenu"><a href="cafeMenuList.jsp"> Menu <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="cw_viewOrderDetails.jsp"> Order <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="../feedbacklist.jsp"> Feedback <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="../viewtotalsales.jsp"> Report <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="../cafeWorkerProfile.jsp"> Account <i class="anm anm-angle-down-l"></i></a></li>
                        </ul>
                    </nav>
                    <!--End Desktop Menu-->
                </div>
                <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
                    <div class="logo">
                        <a href="../index.html">
                            <img src="../assets/images/logo.svg" alt="Belle Multipurpose Html Template" title="Belle Multipurpose Html Template" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Header-->


    <!--Body Content-->
    <div id="page-content">
        <!--MainContent-->
        <div id="MainContent" class="main-content" role="main">
            <!--Breadcrumb-->
            <div class="bredcrumbWrap">
                <div class="container-fluid breadcrumbs">
                    <a href="cafeMenuList.jsp" title="Back to the home page">Menu List</a><span aria-hidden="true">›</span><span>Add Menu</span>
                </div>
            </div>
            <!--End Breadcrumb-->

            <div class="testbox">
                <form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/AddMenuServlet">
                    <div class="banner">
                        <h1>ADD MENU FORM</h1>
                    </div>

                    <div class="item">
                        <p>MENU NAME</p>
                        <input type="text" name="MENUNAME"/>
                    </div>
                    <div class="item">
                        <p>MENU DESCRIPTION</p>
                        <input type="text" name="MENUDESC" />
                    </div>
                    <div class="item">
                        <p>MENU PRICE (RM)</p>
                        <input type="text" name="MENUTPRICE"/>
                    </div>
                    <div class="item">
                        <p>MENU TYPE</p>
                        <select id="menuType" name="MENUTYPE">
                            <option value="choose" selected>CHOOSE MENU TYPE</option>
                            <option value="F">FOOD</option>
                            <option value="D">DRINK</option>
                        </select>
                    </div>

                    <div class="item">
                        <p>UPLOAD IMAGE</p>
                        <div class="name-item">
                            <input type="file" id="MENUIMAGE" name="MENUIMAGE"/>
                        </div>
                    </div>
                    <div class="btn-block">
                        <button type="submit" value="submit">Submit</button>
                    </div>
                </form>

            </div>
            <!--MainContent-->
        </div>
        <!--End Body Content-->

        <!--Footer-->
        <!--End Footer-->

        <!--Scoll Top-->
        <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
        <!--End Scoll Top-->

        <!-- Including Jquery -->
        <script src="../assets/js/vendor/jquery-3.3.1.min.js"></script>
        <script src="../assets/js/vendor/jquery.cookie.js"></script>
        <script src="../assets/js/vendor/modernizr-3.6.0.min.js"></script>
        <script src="../assets/js/vendor/wow.min.js"></script>
        <!-- Including Javascript -->
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/plugins.js"></script>
        <script src="../assets/js/popper.min.js"></script>
        <script src="../assets/js/lazysizes.js"></script>
        <script src="../assets/js/main.js"></script>
        <!-- Photoswipe Gallery -->
        <script src="../assets/js/vendor/photoswipe.min.js"></script>
        <script src="../assets/js/vendor/photoswipe-ui-default.min.js"></script>
    </div>
</div>

</body>
</html>