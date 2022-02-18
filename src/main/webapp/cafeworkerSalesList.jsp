
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
    <title>Total Sales</title>
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

    <jsp:include page="header2.jsp"></jsp:include>

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
                <!--Sales List-->
                <table  class="table table-bordered">
                    <thead class="thead-dark">
                    <tr>
                        <th class="text-center">ORDER NO</th>
                        <th class="text-center">PAYMENT DATE</th>
                        <th class="text-center">NAME</th>
                        <th class="text-center">AMOUNT</th>
                        <th class="text-center">RECEIPT</th>
                    </tr>
                    </thead>
                    <tbody
        <%
                Connection con = DBConnection.getConn();
                Statement st = con.createStatement();
                String sql = "SELECT \"ORDERNO\", \"ORDERTPRICE\", \"PAYMENTDATE\", \"PAYMENTTIME\", \"FILENAME\", \"STUDENTNAME\" FROM public.forder \"o\", public.orderitem \"oi\", public.payment \"p\", public.student \"s\" WHERE \"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"o\".\"ORDERID\" = \"p\".\"ORDERID\" AND \"o\".\"STUDENTID\" = \"s\".\"STUDENTID\" AND \"oi\".\"CWORKID\" = '" + session.getAttribute("CWORKID") + "' ";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next())
                {
        %>
                    <tr>
                        <td class="text-center">#<%=rs.getString("ORDERNO")%></td>
                        <td class="text-center">
                            <%=rs.getDate("PAYMENTDATE")%> <br>
                            <%=rs.getTime("PAYMENTTIME")%>
                        </td>
                        <td class="text-center"><%=rs.getString("STUDENTNAME")%></td>
                        <td class="text-center">RM <%=rs.getString("ORDERTPRICE")%></td>
                        <td class="text-center"><a href="receipt/<%=rs.getString("FILENAME")%>" style="background-color: #F67D50;">VIEW</a></td>
                    </tr>

                <%
            }
                %>

             <%
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
                    <td colspan="4" class="text-right"><strong>Total Sales</strong></td>
                    <td class ="text-center"><strong>RM <%=df.format(subtotal)%></strong></td>
                </tr>

                </table>
            </div>

        </div>
        <!--End Body Content-->

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
        <!-- Photoswipe Gallery -->
        <script src="assets/js/vendor/photoswipe.min.js"></script>
        <script src="assets/js/vendor/photoswipe-ui-default.min.js"></script>
    </div>
</div>
</body>
</html>