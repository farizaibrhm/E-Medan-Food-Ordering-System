<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="emfos.DBConnect.DBConnection" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 29/1/2022
  Time: 6:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cafeworker Login</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Create an Account &ndash; e-Medan Food Ordering Website</title>
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
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="assets/css/styleregister.css">
</head>
<body>
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
                                <%
                                    Connection con = DBConnection.getConn();
                                    Statement statement2= con.createStatement();
                                    ResultSet resultSet2 = statement2.executeQuery("SELECT * FROM public.cafeworker ORDER BY \"CWORKSTALLNAME\";");
                                    while(resultSet2.next()){
                                %>
                                <li><a href="MenuList.jsp?shop=<%=resultSet2.getString("CWORKSTALLNAME")%>" class="site-nav"><%=resultSet2.getString("CWORKSTALLNAME")%></a></li>
                                <%

                                    }
                                %>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!--End Desktop Menu-->
            </div>
        </div>
    </div>
</div>
<!--End Header-->
<div class="main">

    <!-- Sing in  Form -->
    <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure><img src="assets/images/signin-image-cafeworker.png" alt="sing up image"></figure>
                    <a href="cafeworkerRegister.jsp" class="signup-image-link">Create an account</a>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Sign In</h2>
                    <h3 class="form-title">Cafe Worker</h3>
                    <form class="register-form" id="login-form" method="post" action="${pageContext.request.contextPath}/cafeworkerLoginServlet">
                        <div class="form-group">
                            <label for="cafeWorkerID"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="CWORKID" id="cafeWorkerID" placeholder="IC Number"/>
                        </div>
                        <div class="form-group">
                            <label for="cafeWorkerPassword"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="CWORKPASSWORD" id="cafeWorkerPassword" placeholder="Password"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                            <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </section>

</div>

<!-- JS -->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/js/mainform.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
