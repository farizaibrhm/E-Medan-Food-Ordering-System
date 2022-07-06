<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="emfos.DBConnect.DBConnection"%>

<%
    String shop = request.getParameter("shop");

    Connection con = DBConnection.getConn();
    Statement st = con.createStatement();
    String sql = "SELECT * FROM public.menu \"m\", public.cafeworker \"c\" WHERE \"m\".\"CWORKID\" = \"c\".\"CWORKID\" AND \"c\".\"CWORKSTALLNAME\" = '"+shop+"'";
    ResultSet resultSet2 = st.executeQuery(sql);
%>


<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/shop-grid-4.html   11 Nov 2019 12:39:07 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Menu Page &ndash; <%=shop%></title>
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
    <jsp:include page="header.jsp"></jsp:include>

    <!--Body Content-->
    <div id="page-content">
        <!--Collection Banner-->
        <div class="collection-header">
            <div class="collection-hero">
                <div class="collection-hero__image"><img class="blur-up lazyload" src="assets/images/headerfoods.png" /></div>
                <div class="collection-hero__title-wrapper"><h1 class="collection-hero__title page-width"><%=shop%></h1></div>
            </div>
        </div>
        <!--End Collection Banner-->
        <div class="container">
            <div class="row">
                <!--Hand-picked Items-->
                <div class="section">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="grid-products">
                                    <div class="row">
                                        <%
                                           while(resultSet2.next()){
                                        %>
                                        <div class="col-6 col-sm-6 col-md-3 col-lg-3 item">
                                            <!-- start product image -->
                                            <div class="product-image">
                                                <!-- start product image -->
                                                <a href="#" class="grid-view-item__link">
                                                    <!-- image -->
                                                    <img src="images/<%=resultSet2.getString("fileName")%>">
<%--                                                    <img src="images/<%=resultSet2.getString("fileName")%>" style="width: 270px; height:270px;">--%>
                                                    <!-- End image -->
                                                </a>
                                                <!-- end product image -->

                                                <!-- Start product button -->
                                                <form class="variants add" method="post" action="${pageContext.request.contextPath}/studentCartServlet">
                                                    <input type="hidden"  name="menuid" value="<%=resultSet2.getInt("MENUID")%>">
                                                    <input type="hidden"name="cafeid" value="<%=resultSet2.getString("CWORKID")%>">
                                                    <input type="hidden" name="price" value="<%=resultSet2.getString("MENUTPRICE")%>">
                                                    <button class="btn btn-addto-cart" tabindex="0" type="submit" name="Action" value="Add to Cart">Add to Cart</button>
                                                </form>
                                                <!-- end product button -->
                                            </div>
                                            <!-- end product image -->
                                            <!--start product details -->
                                            <div class="product-details text-center">
                                                <!-- product name -->
                                                <div class="product-name">
                                                    <a href="#"><%=resultSet2.getString("MENUNAME")%></a>
                                                </div>
                                                <!-- End product name -->
                                                <!-- product price -->
                                                <div class="product-price">
                                                    <span class="price">RM <%=resultSet2.getString("MENUTPRICE")%></span>
                                                </div>
                                                <!-- End product price -->
                                            </div>
                                            <!-- End product details -->
                                        </div>
                                        <%

                                            }
                                        %>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                </div>
                <!--End Hand-picked Items-->


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

<!-- belle/shop-grid-4.html   11 Nov 2019 12:39:07 GMT -->
</html>