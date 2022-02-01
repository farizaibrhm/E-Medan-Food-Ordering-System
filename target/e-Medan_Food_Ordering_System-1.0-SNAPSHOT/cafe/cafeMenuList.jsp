<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 21/1/2022
  Time: 1:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.emedan_food_ordering_system.Menu" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>CAFE MENU LIST</title>
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
</head>
<body class="template-collection belle">
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
                    <div class="text-center"><p class="top-header_middle-text">Welcome to e-Medan Food Ordering System!</p></div>
                </div>
                <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
                    <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
                    <ul class="customer-links list-inline">
                        <li><a href="../login.jsp">Login</a></li>
                        <li><a href="../register.jsp">Create Account</a></li>
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
                    <a href="../index.jsp">
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
                            <li class="lvl1 parent dropdown"><a href="#">Menu <i class="anm anm-angle-down-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="menucw.html" class="site-nav">View Menu</a></li>
                                    <li><a href="AddMenu.html" class="site-nav">Add Menu  </a></li>
                                    <li><a href="updateMenu.html" class="site-nav">Update Menu  </a></li>
                                    <li><a href="deleteMenu.html" class="site-nav">Delete Menu </a></li>
                                </ul>
                            <li class="lvl1 parent megamenu"><a href="cw_viewOrderDetails.html"> Order <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="../feedbacklist.html"> Feedback <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="../viewtotalsales.html"> Report <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="../cafeWorkerProfile.html"> Account <i class="anm anm-angle-down-l"></i></a></li>

                            </li>
                        </ul>
                    </nav>
                    <!--End Desktop Menu-->
                </div>
                <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
                    <div class="logo">
                        <a href="../index.jsp">
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
        <!--Collection Banner-->
        <div class="collection-header">
            <div class="collection-hero">
                <div class="collection-hero__image"><img src="../assets/images/bg1.jpg" height="500" width="620" alt="Menu" title="Menu" /></div>
                <div class="collection-hero__title-wrapper"><h1 class="collection-hero__title page-width">MENU LIST</h1></div>
            </div>
        </div>
        <!--End Collection Banner-->

        <h1 style="text-align: center">GERAI C</h1> <br><br>
        <a href="AddMenu.jsp" class="button" style="color: black;">ADD MENU </a>



        <br><br><br><br>

        <!--Menu List-->

        <table  class="t1">
            <thead class="cart__row cart__header">
            <tr>
                <%--            <th class="text-center">NO.</th>--%>
                <th class="text-center">MENUID</th>
                <th class="text-center">IMAGE</th>
                <th class="text-center">MENU NAME</th>
                <th class="text-center">MENU DESCRIPTION</th>
                <th class="text-center">MENU PRICE</th>
                <th class="text-center" colspan="2">ACTION</th>
            </tr>
            </thead>
            <tbody>

            <%--        <c:forEach var="menu" items="${listMenu}">--%>
            <%--        <tr>--%>
            <%--            <td><c:out value="${menu.MENUIMAGE}" /></td>--%>
            <%--            <td><image src="../images/${menu.fileName}" width="100" height="100"/></td>--%>
            <%--            <td><c:out value="${menu.MENUNAME}" /></td>--%>
            <%--            <td><c:out value="${menu.MENUDESC}" /></td>--%>
            <%--            <td>RM <c:out value="${menu.MENUTPRICE}" /></td>--%>

            <%--            <td>--%>
            <%--                <a  href="updateMenu.jsp" class="button" style="color: black;">UPDATE </a>--%>
            <%--&lt;%&ndash;                <a  href="deleteMenu.jsp" class="button" style="color: black;">DELETE </a>&ndash;%&gt;--%>
            <%--                <button type="button" id="${menu.MENUID}" class="btn btn-sm btn-danger">Delete</button>--%>

            <%--            </td>--%>
            <%--        </tr>--%>
            <%--        </c:forEach>--%>
          <%--      <%
            String MENUID = request.getParameter("MENUID");

            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emfos", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT * from menu";
                ResultSet rs = st.executeQuery(sql);
                int i=1;
                while (rs.next()){
//                    String fileName = rs.getString("fileName");
            %>--%>
        <%
                String MENUID = request.getParameter("MENUID");

            try
            {
                Class.forName("org.postgresql.Driver");
                Connection con = DriverManager.getConnection("jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0", "kgkcfexavaezbv", "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6");
                Statement st = con.createStatement();
                String sql = "SELECT \"MENUID\", \"MENUNAME\", \"MENUDESC\", \"MENUTPRICE\", \"MENUTYPE\", \"fileName\", \"savePath\"\n" +"\tFROM public.menu;";
                ResultSet rs = st.executeQuery(sql);
                int i=1;
                while (rs.next())
                {
//                    String fileName = rs.getString("fileName");
        %>

            <tr>
                <%--<th class="text-center" scope="row"><%=i%></th>--%>
                <td><%=rs.getInt("MENUID")%></td>
                <td><image src="../images/<%=rs.getString("fileName")%>" width="100" height="100"/></td>
                <td><%=rs.getString("MENUNAME")%></td>
                <td><%=rs.getString("MENUDESC")%></td>
                <td>RM <%=rs.getString("MENUTPRICE")%></td>

                <td>
                    <a  href="updateMenu.jsp?id=<%=rs.getInt("MENUID")%>" class="button" style="color: black;"> UPDATE </a>
<%--                     <a  href="deleteMenu.jsp" class="button" style="color: black;">DELETE </a>--%>
                    <button type="button" id="<%=rs.getString("MENUID")%>" style="background-color: #d9534f;" class="del btn btn--sm">Delete</button>
                </td>
            </tr>
        <%
                    i++;
                }
            }
            catch (Exception e)
            {
                out.println();
            }
        %>
        </table>

        <style>
            .button {
                background-color: greenyellow;
                border: none;
                color: white;
                padding: 10px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                position: relative;
                left: 3%;

            }

            .t1{
                width:1250px ;
                /*height: 31px;*/
                border: 2px solid silver;
                align-content: center;
                position: relative;
                top: 30px;
                left:10%;
                /*background-color: black;*/
            }

            th,td{
                width: 400px;
                border: 1px silver solid;
                text-align:center;
            }



        </style>

        <br><br><br><br><br><br><br><br>

    </div>


    <!--End Menu List-->
    <!--Main Content-->
    <!-- <div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col">
         <div class="productList">
             <div class="list-view-items grid&#45;&#45;view-items">
                 &lt;!&ndash;ListView Item&ndash;&gt;
                 <div class="list-product list-view-item">
                     <div class="list-view-item__image-column">
                         <div class="list-view-item__image-wrapper">
                             &lt;!&ndash; Image &ndash;&gt;
                             <a href="product-layout-2.html"><img class="list-view-item__image blur-up lazyload" data-src="assets/images/product-images/product-image1.jpg" src="assets/images/product-images/product-image1.jpg" alt="image" title="product"></a>
                             &lt;!&ndash; End Image &ndash;&gt;
                         </div>
                     </div>
                     <div class="list-view-item__title-column">
                         <div class="h4 grid-view-item__title"><a href="product-layout-2.html">Camelia Reversible Jacket</a></div>
                         &lt;!&ndash; Product Review &ndash;&gt;
                         <p class="product-review"><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i></p>
                         &lt;!&ndash; End Product Review &ndash;&gt;
                         &lt;!&ndash; Sort Description &ndash;&gt;
                         <p>Belle Multipurpose Bootstrap 4 Html Template that will give you and your customers a smooth shopping experience which can be used for various kinds of stores such as boutiques, bookstores, technology stores, jewelries and other types of web shops....</p>
                         &lt;!&ndash; End Sort Description &ndash;&gt;
                         &lt;!&ndash; Price &ndash;&gt;
                         <p class="product-price grid-view-item__meta">
                             <span class="old-price">$600.00</span>
                             <span class="product-price__price product-price__sale"><span class="money">$500.00</span></span>
                         </p>
                         &lt;!&ndash; End Price &ndash;&gt;
                         <form class="variants" action="#">
                             <button class="btn btn&#45;&#45;small" type="button">Select Options</button>
                         </form>
                     </div>
                 </div>
                 &lt;!&ndash;End ListView Item&ndash;&gt;

             </div>
         </div>
     </div>
     End Main Content-->
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

    <script>
        $(document).ready(function() {
            $(".del").click(function() {
                var id = +this.id;
                $.ajax({
                    url: "deleteMenu.jsp",
                    type: "post",
                    data: {
                        id : id,
                    },
                    success : function(data){
                        alert(data); // alerts the response from jsp
                        location.reload();
                    }
                });
            });
        });
    </script>


</div>
</body>
</html>
