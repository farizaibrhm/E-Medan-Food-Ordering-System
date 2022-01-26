<%@page import = "java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>

<%
    String STUDENTID = request.getParameter("STUDENTID");
    String driver = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/emfos";
    String userid = "root";
    String password = "";

    try {
        Class.forName(driver);
    }catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<%
    try {
        connection = DriverManager.getConnection(connectionUrl, userid, password);
        statement=connection.createStatement();
        String sql = "SELECT * FROM student WHERE STUDENTID='?'";
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()){
%>


<!-- belle/home2-default.html   11 Nov 2019 12:22:28 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>e-Medan Food Ordering Website</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.png" />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css">
</head>
<body class="template-index home2-default">
<div class="pageWrapper">
    <!--Promotion Bar-->
    <div class="notification-bar mobilehide">
        <a href="#" class="notification-bar__message">Student Profile</a>
        <span class="close-announcement">×</span>
    </div>
    <!--End Promotion Bar-->

    <!--Header-->
    <div class="header-wrap animated d-flex border-bottom">
        <div class="container-fluid">
            <div class="row align-items-center">
                <!--Desktop Logo-->
                <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
                    <a href="${pageContext.request.contextPath}/student/homepagestudent.jsp">
                        <img src="${pageContext.request.contextPath}/assets/images/e-Medan.svg" alt="e-Medan Food Ordering Website" title="e-Medan Food Ordering Website" />
                    </a>
                </div>
                <!--End Desktop Logo-->
                <div class="col-2 col-sm-3 col-md-3 col-lg-8">
                    <!--Desktop Menu-->
                    <nav class="grid__item" id="AccessibleNav"><!-- for mobile -->
                        <ul id="siteNav" class="site-nav medium center hidearrow">
                            <li class="lvl1 parent dropdown"><a href="${pageContext.request.contextPath}/student/homepagestudent.jsp">Home <i class="anm anm-angle-down-l"></i></a>
                            <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/student/about-us-student.jsp"> About <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="menupageStudent.html"> Menu <i class="anm anm-angle-down-l"></i></a></li>
                            <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/student/studentProfile.jsp"> Account <i class="anm anm-angle-down-l"></i></a></li>
                            </li>
                        </ul>
                    </nav>
                    <!--End Desktop Menu-->
                </div>

            </div>
        </div>
    </div>
    <!--End Header-->


    <!--Body Content-->
    <div class="col-2 col-sm-3 col-md-3 col-lg-8">

    </div>
    <div class="container">
        <div class="row gutters">
            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="account-settings">
                            <!-- Start display about read from database after student register account -->
                            <div class="user-profile">
                                <div class="user-avatar">
                                    <img src="${pageContext.request.contextPath}/assets/images/female-student.jpg" alt="Maxwell Admin">
                                </div>
                                    <td><%=resultSet.getString(2)%></td>
                                    <br>
                                    <td><%=resultSet.getString(1)%></td>
                            </div>

                            <!-- End display about read from database after student register account -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mb-2 text-primary">Personal Details</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="STUDENTID">Student ID</label>
                                    <input type="text" class="form-control" id="STUDENTID" >
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="STUDENTNAME">Name</label>
                                    <input type="text" class="form-control" id="STUDENTNAME" >
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="STUDENTEMAIL">Email</label>
                                    <input type="email" class="form-control" id="STUDENTEMAIL">
                                </div>
                            </div>

                        </div>

                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="text-right">
                                    <a href="studentEditProfile.html"  id="submit" name="submit" class="btn btn-primary">Edit Profile</button></a>
                                    <a href="deleteAccStudent.html"  id="submit" name="submit" class="btn btn-primary">Delete Account</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <style type="text/css">
        body {
            margin: 0;
            padding-top: 40px;
            color: #2e323c;
            background: #f5f6fa;
            position: relative;
            height: 100%;
        }
        .account-settings .user-profile {
            margin: 0 0 1rem 0;
            padding-bottom: 1rem;
            text-align: center;
        }
        .account-settings .user-profile .user-avatar {
            margin: 0 0 1rem 0;
        }
        .account-settings .user-profile .user-avatar img {
            width: 90px;
            height: 90px;
            -webkit-border-radius: 100px;
            -moz-border-radius: 100px;
            border-radius: 100px;
        }
        .account-settings .user-profile h5.user-name {
            margin: 0 0 0.5rem 0;
        }
        .account-settings .user-profile h6.user-email {
            margin: 0;
            font-size: 0.8rem;
            font-weight: 400;
            color: #9fa8b9;
        }
        .account-settings .about {
            margin: 2rem 0 0 0;
            text-align: center;
        }
        .account-settings .about h5 {
            margin: 0 0 15px 0;
            color: #007ae1;
        }
        .account-settings .about p {
            font-size: 0.825rem;
        }
        .form-control {
            border: 1px solid #cfd1d8;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border-radius: 2px;
            font-size: .825rem;
            background: #ffffff;
            color: #2e323c;
        }

        .card {
            background: #ffffff;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            border: 0;
            margin-bottom: 1rem;
        }


    </style>

    <script type="text/javascript">

    </script>
</div>
<%
        }
        connection.close();
    }catch (Exception e){
        e.printStackTrace();
    }
%>
</body>


<!--End Body Content-->

<!-- Newsletter Popup -->
<!-- End Newsletter Popup -->

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

</body>


<!-- belle/home2-default.html   11 Nov 2019 12:23:42 GMT -->
</html>
