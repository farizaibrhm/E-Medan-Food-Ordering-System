<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="emfos.DBConnect.DBConnection" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Order List</title>
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
                <div class="wrapper"><h1 class="page-width">Order List of <%=session.getAttribute("CWORKSTALLNAME")%></h1></div>
            </div>
        </div>
        <!--End Page Title-->

        <div class="container">
            <div class="text-center">

                <!--Order List-->

                <table  class="table table-bordered">
                    <thead class="thead-dark">
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
                SimpleDateFormat ft = new SimpleDateFormat ("dd-MMM-yyyy");
                            SimpleDateFormat ft2 = new SimpleDateFormat("HH:mm:ss");
                Connection con = DBConnection.getConn();
                Statement st = con.createStatement();
                String sql = "SELECT *  FROM public.forder \"o\", public.orderitem \"oi\", public.student \"s\" WHERE \"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"o\".\"STUDENTID\" = \"s\".\"STUDENTID\" AND \"oi\".\"CWORKID\" = '" + session.getAttribute("CWORKID") + "' ";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next())
                {
        %>
                    <tr>
                        <td class="text-center" >#<%=rs.getString("ORDERNO")%></td>
                        <td class="text-center">
                            <%=ft.format(rs.getDate("ORDERDATE"))%> <br>
                            <%=ft2.format(rs.getTime("ORDERTIME"))%>
                        </td>
                        <td class="text-center"><%=rs.getString("STUDENTNAME")%></td>
                        <td class="text-center">RM <%=rs.getString("ORDERTPRICE")%></td>
                        <td class="text-center">
                            <form method="post" action="${pageContext.request.contextPath}/cafeworkerOrderServlet">
                                <input type="hidden" name="ORDERID" value="<%=rs.getInt("ORDERID")%>"/>
                                <select id="ORDERSTATUS" name="ORDERSTATUS" onchange='this.form.submit();'>
                                    <option value="<%=rs.getString("ORDERSTATUS")%>"><%=rs.getString("ORDERSTATUS")%></option>
                                    <option value="Processing">Processing</option>
                                    <option value="Completed">Completed</option>
                                </select>
                            </form>
                        </td>
                        <td class="text-center">
                            <a  href="cafeworkerViewOrderDetails.jsp?id=<%=rs.getString("ORDERNO")%>" style="background-color: #5D9DED;" class="btn btn--sm">View</a>
                        </td>
                    </tr>
                        <%
                }
                %>
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