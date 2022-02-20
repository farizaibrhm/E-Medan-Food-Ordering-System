<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="emfos.Model.cafeworker" %>
<%@ page import="emfos.DBConnect.DBConnection" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 29/1/2022
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <jsp:include page="header2.jsp"></jsp:include>
    <!--Body Content-->
    <div id="page-content">
        <!--Page Title-->
        <div class="page section-header text-center">
            <div class="page-title">
                <div class="wrapper"><h1 class="page-width">Menu List of <%=session.getAttribute("CWORKSTALLNAME")%></h1></div>
            </div>
        </div>
        <!--End Page Title-->


        <div class="container">
            <div class="text-center">

                <div class="container text-left">
                    <a href="cafeworkerAddMenu.jsp" class="btn btn--sm" style="background-color: #5cb85c;">ADD MENU </a>
                </div>



                <br><br>

                <!--Menu List-->

                <table  class="table table-bordered">
                    <thead class="thead-dark">
                    <tr>
                        <th class="text-center">NO.</th>
                        <th class="text-center">IMAGE</th>
                        <th class="text-center">MENU NAME</th>
                        <th class="text-center">MENU DESCRIPTION</th>
                        <th class="text-center">MENU PRICE</th>
                        <th class="text-center" colspan="2">ACTION</th>
                    </tr>
                    </thead>
                    <tbody>

                        <%
                Connection con = DBConnection.getConn();
                Statement st = con.createStatement();
                String sql = "SELECT \"MENUID\", \"MENUNAME\", \"MENUDESC\", \"MENUTPRICE\", \"MENUTYPE\", \"fileName\", \"savePath\", \"CWORKID\" FROM public.menu WHERE \"CWORKID\"='" + session.getAttribute("CWORKID") + "' ";
                ResultSet rs = st.executeQuery(sql);
                int i=1;
                while (rs.next())
                {
        %>
                    <tr>
                        <th class="text-center" scope="row"><%=i%></th>
                        <td class="text-center"><image src="<%=rs.getString("savePath")%>" width="100" height="100"/></td>
                        <td class="text-center"><%=rs.getString("MENUNAME")%></td>
                        <td class="text-center"><%=rs.getString("MENUDESC")%></td>
                        <td class="text-center">RM <%=rs.getString("MENUTPRICE")%></td>

                        <td class="text-center">
                                <button style="background-color: #5cb85c; display: inline-block; margin: 2px; width: 100px;" class="btn btn--sm" onclick="window.location.href='cafeworkerUpdateMenu.jsp?id=<%=rs.getString("MENUID")%>'">Update</button>

                                <form method="post" action="${pageContext.request.contextPath}/cafeworkerDeleteMenuServlet">
                                    <input type="hidden"  name="id" value="<%=rs.getInt("MENUID")%>">
                                    <button type="submit" name="Action" style="background-color: #d9534f; display: inline-block; margin: 2px; width: 100px;" class="et_pb_button btn btn--sm" value="Delete Menu" onclick="return confirm('Are you sure you want to delete this menu?');" >Delete</button>
                                </form>
                        </td>
                    </tr>
                        <%
                    i++;
                }
    %>
                </table>


            </div>

        </div>
        <!--End Body Content-->



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