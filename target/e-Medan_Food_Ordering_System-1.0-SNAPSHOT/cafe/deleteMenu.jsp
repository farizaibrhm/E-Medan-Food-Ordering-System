<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 21/1/2022
  Time: 1:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Delete Menu</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/e-favicon.svg" />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css">
</head>
<body class="template-index belle home4-fullwidth">

<div class="pageWrapper">
    <ul id = "menu" style="position: relative;top: 50px;left: 6%;">
        <h3>
            <li><a href = "cafeMenuList.jsp">BACK</a></li> |
        </h3>
    </ul>
    <!--Body Content-->
    <div id="page-content">


        <style>

            body{
                background-color: #ffffff;
            }

            #menu li{
                display:inline;}

            .t4{
                width: 809px;
                height: 313px;

            }

            input,td{
                border: 1px solid ;
            }

            .butt{
                width: 150px;
                padding: 1%;
                border: none;
                border-radius: 5px;
                background: #0087cc;
                font-size: 16px;
                color: #fff;
            }

        </style>

        <form action="#" method="post" style="position: relative;top: 80px;left: 25%;">
            <h2 style="position:relative; left: 18%;">DELETE MENU DETAILS</h2>
            <table class="t4">
                <tr>
                    <td>MENU ID</td>
                    <td><input type="texarea" name="menuId"   disabled /></td>
                </tr>
                <tr>
                    <td>MENU NAME</td>
                    <td><input type="textarea" name="menuName"  /></td>
                </tr>
                <tr>
                    <td>MENU DESCRIPTION</td>
                    <td><input type="textarea" name="menuDesc" /></td>
                </tr>
                <tr>
                    <td>MENU PRICE (RM)</td>
                    <td><input type="textarea" name="menuPrice" /></td>
                </tr>
                <tr>
                    <td>MENU TYPE</td>
                    <td><input type="textarea" name="menuType" value=""/></td>
                </tr>
                <tr>
                    <td>CAFE WORKER ID</td>
                    <td><input type="textarea" name="cafeWID" value="" /></td>
                </tr>
                <tr>
                    <td>IMAGE</td>
                    <td>
                        <input type="file"
                               id="Mimg" name="Mimg"
                               accept="image/png, image/jpeg" value="" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center><input class="butt" type="submit" value="Delete" onClick="return confirm('Are you sure?')"></center>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <!--End Body Content-->

    <!--Footer-->
    <!--End Footer-->
    <!--Scoll Top-->
    <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
    <!--End Scoll Top-->


    <!-- Including Jquery -->
    <script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.cookie.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/vendor/wow.min.js"></script>
    <!-- Including Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/lazysizes.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</div>
<!-- belle/home4-fullwidth.html   11 Nov 2019 12:25:38 GMT -->

</body>
</html>
