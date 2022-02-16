<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
                                    <li class="lvl1 parent megamenu"><a href="studentOrderList.jsp">Your Orders <i class="anm anm-angle-down-l"></i></a></li>
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
                        </div>
                    </div>
                </div>
            </div>
            <!--End Header-->