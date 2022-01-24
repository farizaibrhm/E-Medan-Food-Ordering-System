<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register account</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Create an Account &ndash; e-Medan Food Ordering Website</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/e-Medan.svg" />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <!-- Font Icon -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styleregister.css">
</head>
<body>
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
                    <li><a href="<%=request.getContextPath() %>/login.jsp">Login</a></li>
                    <li><a href="<%=request.getContextPath() %>/register.jsp">Create Account</a></li>
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
                <a href="homepage.html">
                    <img src="<%=application.getContextPath() %>/assets/images/e-Medan.svg" alt="e-Medan Food Ordering Website" title="e-Medan Food Ordering Website" />
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
                        <li class="lvl1 parent megamenu"><a href="homepage.html">Home <i class="anm anm-angle-down-l"></i></a></li>
                        <li class="lvl1 parent megamenu"><a href="about-us.html">About <i class="anm anm-angle-down-l"></i></a></li>
                        <li class="lvl1 parent dropdown"><a href="menupagenotlogin.html">Menu <i class="anm anm-angle-down-l"></i></a></li>
                        </li>
                    </ul>
                </nav>
                <!--End Desktop Menu-->
            </div>
            <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
                <div class="logo">
                    <a href="homepage.html">
                        <img src="<%=application.getContextPath() %>assets/images/e-Medan.svg" alt="e-Medan Food Ordering Website" title="e-Medan Food Ordering Website" />
                    </a>
                </div>
            </div>
            <div class="col-4 col-sm-3 col-md-3 col-lg-2">
            </div>
        </div>
    </div>
</div>
<!--End Header-->
<div class="main">

    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">

                    <h2 class="form-title">Sign up</h2>
                    <h3 class="form-title">Cafe Worker</h3>
                    <form method="POST" class="register-form" id="register-form">
                        <div class="form-group">
                            <label for="cafeWorkerID"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="cafeWorkerID" id="cafeWorkerID" placeholder="Identification number"/>
                        </div>
                        <div class="form-group">
                            <label for="cafeWorkerStallName"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="cafeWorkerStallName" id="cafeWorkerStallName" placeholder="Stall Name"/>
                        </div>
                        <div class="form-group">
                            <label for="cafeWorkerPhoneNum"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="cafeWorkerPhoneNum" id="cafeWorkerPhoneNum" placeholder="Phone Number"/>
                        </div>
                        <div class="form-group">
                            <label for="cafeWorkerEmail"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="cafeWorkerEmail" id="cafeWorkerEmail" placeholder="Email"/>
                        </div>
                        <div class="form-group">
                            <label for="cafeWorkerPassword"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="cafeWorkerPassword" id="cafeWorkerPassword" placeholder="Password"/>
                        </div>
                        <div class="form-group">
                            <label for="cafeWorkerAccNum"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="cafeWorkerAccNum" id="cafeWorkerAccNum" placeholder="Phone Number"/>
                        </div>
                        <div class="form-group">
                            <label for="cafeWorkerAccName"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="cafeWorkerAccName" id="cafeWorkerAccName" placeholder="Email"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure><img src="${pageContext.request.contextPath}/assets/images/signup1-image.png" alt="sing up image"></figure>
                    <a href="<%=request.getContextPath()%>/login.jsp" class="signup-image-link">I am already member</a>
                </div>
            </div>
        </div>
    </section>


</div>

<!-- JS -->
<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/mainform.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>