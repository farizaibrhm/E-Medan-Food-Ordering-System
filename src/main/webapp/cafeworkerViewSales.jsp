
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="emfos.Model.cafeworker" %>
<%@ page import="emfos.DBConnect.DBConnection" %>
<%@ page import="java.text.DecimalFormat" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Menu List</title>
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
<%
    String CWORKID = (String) session.getAttribute("CWORKID");
    if (CWORKID== null)
    { response.sendRedirect("cafeworkerLogin.jsp")
    ;}
%>
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
                <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
                    <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
                    <ul class="customer-links list-inline">
                        <li><a href="${pageContext.request.contextPath}/cafeworkerLogoutServlet">Logout</a></li>
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
                            <li class="lvl1 parent megamenu"><a href="#"> Order <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="#"> Feedback <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="cafeworkerViewSales.jsp"> Sales <i class="anm anm-angle-down-l"></i></a></li>
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
        <div class="page section-header text-center">
            <div class="page-title">
                <div class="wrapper"><h1 class="page-width">Total Sales of <%=session.getAttribute("CWORKSTALLNAME")%></h1></div>
            </div>
        </div>
        <!--End Page Title-->

        <div class="container">
            <div class="text-center">

                <br><br>
                <!--Menu List-->

                <table  class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="text-center">ORDER NO</th>
                        <th class="text-center">PAYMENT DATE</th>
                        <th class="text-center">NAME</th>
                        <th class="text-center">AMOUNT</th>
                        <th class="text-center">RECEIPT</th>
                    </tr>
                    </thead>
                    <tbody>

        <%

            try
            {
                Class.forName("org.postgresql.Driver");
                Connection con = DriverManager.getConnection("jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0", "kgkcfexavaezbv", "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6");
                Statement st = con.createStatement();
                String sql = "SELECT \"ORDERNO\", \"ORDERTPRICE\", \"PAYMENTDATE\", \"PAYMENTTIME\", \"FILENAME\", \"STUDENTNAME\" FROM public.forder \"o\", public.orderitem \"oi\", public.payment \"p\", public.student \"s\" WHERE \"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"o\".\"ORDERID\" = \"p\".\"ORDERID\" AND \"o\".\"STUDENTID\" = \"s\".\"STUDENTID\" AND \"oi\".\"CWORKID\" = '" + session.getAttribute("CWORKID") + "' ";
                ResultSet rs = st.executeQuery(sql);
                int i=1;
                while (rs.next())
                {
        %>

                    <tr>
                        <th class="text-center" ><%=rs.getString("ORDERNO")%></th>
                        <td class="text-center">
                            <%=rs.getDate("PAYMENTDATE")%> <br>
                            <%=rs.getTime("PAYMENTTIME")%>
                        </td>
                        <td class="text-center"><%=rs.getString("STUDENTNAME")%></td>
                        <td class="text-center">RM<%=rs.getString("ORDERTPRICE")%></td>
                        <td class="text-center"><a href="receipt/<%=rs.getString("FILENAME")%>">VIEW</a></td>
                    </tr>

                <%

            }
                }
            catch (Exception e){
                    out.println();
                }
                %>

             <%
                    Connection con = DBConnection.getConn();
                    DecimalFormat df = new DecimalFormat("##. 00");
                    double subtotal = 00.00;
                    Statement st3 = con.createStatement();
                    ResultSet rs3 = st3.executeQuery("SELECT sum (\"ORDERTPRICE\") FROM public.forder \"o\", public.orderitem \"oi\", public.payment p WHERE \"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"oi\".\"ORDERID\" = \"p\".\"ORDERID\" AND \"oi\".\"CWORKID\" ='" + session.getAttribute("CWORKID")+"'");
                    if (rs3.next())
                    {
                        subtotal = rs3.getDouble(1);
                    }

             %>
                <tr>
                    <td colspan="4" class="text-right">Total Sales</td>
                    <td class ="text-center">RM <%=df.format(subtotal)%></td>
                </tr>

                </table>
            </div>

        </div>
        <!--End Body Content-->

        <!--Footer-->
        <!--End Footer-->


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
        <!-- Photoswipe Gallery -->
        <script src="assets/js/vendor/photoswipe.min.js"></script>
        <script src="assets/js/vendor/photoswipe-ui-default.min.js"></script>

    </div>
</div>

</body>

</html>