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
<body class="template-product belle">
<div class="pageWrapper">


  <!--Body Content-->
  <div id="page-content">
    <!--Page Title-->
    <div class="page section-header text-center">
      <div class="page-title">
        <div class="wrapper"><h1 class="page-width">Menu List</h1></div>
      </div>
    </div>
    <!--End Page Title-->

    <div class="container">
      <div class="text-center">

        <form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/imageServlet">
          <input type="file" name="imagename" >
          <button type="submit" value="submit">Submit</button>
        </form>

        <table  class="table table-bordered">
          <thead>
          <tr>
            <th class="text-center">NO.</th>
            <th class="text-center">IMAGE</th>

          </tr>
          </thead>
          <tbody>

            <%
                Connection con = DBConnection.getConn();

                Statement st=con.createStatement();
                String sql = "SELECT * FROM public.testimage;";
                ResultSet rs = st.executeQuery(sql);
                int i=1;
                while (rs.next())
                {
        %>

          <tr>
            <th class="text-center" scope="row"><%=i%></th>
            <td class="text-center"><image src="getImage.jsp?imageid=<%=rs.getInt("imageid")%>" width="100" height="100"/></td>

          </tr>

            <%
                    i++;
            }
    %>
        </table>


      </div>

    </div>
    <!--End Body Content-->

    <!--Footer-->
    <!--End Footer-->

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