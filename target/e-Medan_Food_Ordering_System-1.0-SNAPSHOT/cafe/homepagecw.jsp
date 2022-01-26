<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home2-default.html   11 Nov 2019 12:22:28 GMT -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>e-Medan Food Ordering Website</title>
  <meta name="description" content="description">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.png" />
  <!-- Plugins CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/plugins.css">
  <!-- Bootstap CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
  <!-- Main Style CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css">
</head>
<body class="template-index home2-default">
<div id="pre-loader">
  <img src="<%=request.getContextPath()%>assets/images/loader.gif" alt="Loading..." />
</div>
<div class="pageWrapper">
  <!--Promotion Bar-->
  <div class="notification-bar mobilehide">
    <a href="#" class="notification-bar__message">Cafe Worker Dashboard</a>
    <span class="close-announcement">×</span>
  </div>
  <!--End Promotion Bar-->
  <!--Search Form Drawer-->
  <div class="search">
    <div class="search__form">
      <form class="search-bar__form" action="#">
        <button class="go-btn search__button" type="submit"><i class="icon anm anm-search-l"></i></button>
        <input class="search__input" type="search" name="q" value="" placeholder="Search entire store..." aria-label="Search" autocomplete="off">
      </form>
      <button type="button" class="search-trigger close-btn"><i class="anm anm-times-l"></i></button>
    </div>
  </div>
  <!--End Search Form Drawer-->

  <!--Header-->
  <div class="header-wrap animated d-flex border-bottom">
    <div class="container-fluid">
      <div class="row align-items-center">
        <!--Desktop Logo-->
        <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
          <a href="<%=request.getContextPath()%>/cafe/homepagecw.jsp">
            <img src="<%=request.getContextPath()%>/assets/images/e-Medan.svg" alt="e-Medan Food Ordering Website" title="e-Medan Food Ordering Website" />
          </a>
        </div>
        <!--End Desktop Logo-->
        <div class="col-2 col-sm-3 col-md-3 col-lg-8">
          <!--Desktop Menu-->
          <nav class="grid__item" id="AccessibleNav"><!-- for mobile -->
            <ul id="siteNav" class="site-nav medium center hidearrow">
              <li class="lvl1 parent dropdown"><a href="#">Menu <i class="anm anm-angle-down-l"></i></a>
                <ul class="dropdown">
                  <li><a href="<%=request.getContextPath()%>/cafe/cafeMenuList.jsp" class="site-nav">View Menu</a></li>
                  <li><a href="${pageContext.request.contextPath}/cafe/AddMenu.jsp" class="site-nav">Add Menu  </a></li>
                  <li><a href="${pageContext.request.contextPath}/cafe/updateMenu.jsp" class="site-nav">Update Menu  </a></li>
                  <li><a href="${pageContext.request.contextPath}/cafe/deleteMenu.jsp" class="site-nav">Delete Menu </a></li>
                </ul>
              <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/cafe/cw_viewOrderDetails.jsp"> Order <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="feedbacklist.html"> Feedback <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="viewtotalsales.html"> Report <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/cafe/cafeWorkerProfile.jsp"> Account <i class="anm anm-angle-down-l"></i></a></li>

              </li>
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
    <!--Home slider-->
    <div class="slideshow slideshow-wrapper pb-section">
      <div class="home-slideshow">
        <div class="slide">
          <div class="blur-up lazyload">
            <img class="blur-up lazyload" data-src="assets/images/headercw1.png" src="<%=request.getContextPath()%>assets/images/headercw1.png" alt="Shop Our New Collection" title="Shop Our New Collection" />
            <div class="slideshow__text-wrap slideshow__overlay classic middle">
              <div class="slideshow__text-content middle">
                <div class="container">
                  <div class="wrap-caption left" >
                    <br><br><br><br><br><br><br><br>
                    <br><br><br><br><br><br>
                    <br><br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="slide">
          <div class="blur-up lazyload">
            <img class="blur-up lazyload" data-src="assets/images/headercw2.png" src="<%=request.getContextPath()%>assets/images/headercw2.png" alt="Summer Bikini Collection" title="Summer Bikini Collection" />
            <div class="slideshow__text-wrap slideshow__overlay classic middle">
              <div class="slideshow__text-content middle">
                <div class="container">
                  <div class="wrap-caption center">
                    <br><br><br><br><br><br>
                    <br><br><br><br><br><br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>


<!--End Body Content-->

<!-- Newsletter Popup -->
<!-- End Newsletter Popup -->

<!-- Including Jquery -->
<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr-3.6.0.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery.cookie.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/vendor/wow.min.js"></script>
<!-- Including Javascript -->
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/lazysizes.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>

</div>

</body>


<!-- belle/home2-default.html   11 Nov 2019 12:23:42 GMT -->
</html>
