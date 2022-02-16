<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="emfos.DBConnect.DBConnection"%>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="emfos.DAO.menuDAO" %>

<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/cart.html   11 Nov 2019 12:47:01 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Your Orders</title>
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
    <link rel="stylesheet" href="assets/css/deletemodal.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body class="page-template belle">
<div class="pageWrapper">
    <jsp:include page="header.jsp"></jsp:include>
    <!--Body Content-->
    <div id="page-content">
        <!--Page Title-->
        <div class="page section-header text-center">
            <div class="page-title">
                <div class="wrapper"><h1 class="page-width">Order List</h1></div>
            </div>
        </div>
        <!--End Page Title-->

        <div class="container">
            <div class="row">
                <table  class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="text-center">ORDER NO</th>
                        <th class="text-center">ORDER DATE</th>
                        <th class="text-center">NAME</th>
                        <th class="text-center">AMOUNT</th>
                        <th class="text-center">ORDER STATUS</th>
                        <th class="text-center">ACTION</th>
                    </tr>
                    </thead>
                    <tbody>

                        <%
                Connection con = DBConnection.getConn();
                Statement st = con.createStatement();
                String sql = "SELECT * FROM public.forder \"o\", public.menu \"m\", public.orderitem \"oi\" WHERE\n" +
                             "\"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"m\".\"MENUID\" = \"oi\".\"MENUID\" AND " +
                              "\"o\".\"STUDENTID\" ='" + session.getAttribute("STUDENTID") + "' ";
                ResultSet rs = st.executeQuery(sql);
                int i=1;
                while (rs.next())
                {
        %>
                    <tr>
                        <td class="text-center"><%=rs.getInt("ORDERNO")%></td>
                        <td class="text-center">
                            <%=rs.getDate("ORDERDATE")%><br>
                            <%=rs.getTime("ORDERTIME")%>
                        </td>
                        <td class="text-center"><%=session.getAttribute("STUDENTNAME")%></td>
                        <td class="text-center">RM <%=rs.getDouble("ORDERTPRICE")%></td>
                        <td class="text-center"><%=rs.getString("ORDERSTATUS")%></td>
                        <td class="text-center">
                            <a  href="studentViewOrderDetails.jsp?id=<%=rs.getString("ORDERID")%>" style="background-color: #343a40;" class="btn btn--sm">View</a>
                        </td>
                    </tr>

                        <%
            }
    %>
                </table>
            </div>
        </div>

    </div>



    <!-- Delete Pop up -->
    <div class="modal fade" id="removeFromCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2" aria-hidden="true">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header flex-column">
                    <div class="icon-box">
                        <i class="material-icons">&#xE5CD;</i>
                    </div>
                    <h4 class="modal-title w-100">Are you sure?</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div id="show-data2"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Delete Pop up -->
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


<!-- belle/cart.html   11 Nov 2019 12:47:01 GMT -->
</html>