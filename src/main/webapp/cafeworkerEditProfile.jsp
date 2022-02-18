<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@page import="emfos.DBConnect.DBConnection"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cafeworker Edit Profile</title>
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
    String CWORKSTALLNAME = (String) session.getAttribute("CWORKSTALLNAME");
    if (CWORKSTALLNAME== null)
    { response.sendRedirect("cafeworkerLogin.jsp")
    ;}
%>

<body class="template-index home2-default">
<div class="pageWrapper">
    <jsp:include page="header2.jsp"></jsp:include>

    <!--Body Content-->
    <div class="col-2 col-sm-3 col-md-3 col-lg-8">

    </div>
    <form method="POST" action="${pageContext.request.contextPath}/cafeworkerUpdateProfileServlet">
        <%

            Connection con = DBConnection.getConn();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT \"CWORKID\", \"CWORKSTALLNAME\", \"CWORKPHONENO\", \"CWORKEMAIL\", \"CWORKPASSWORD\", \"CWORKACCNUM\",\"CWORKACCNAME\" ,\"CWORKBANKNAME\"  FROM public.cafeworker WHERE \"CWORKID\" ='" + session.getAttribute("CWORKID")+ "'");
            while (rs.next()){

        %>

        <div class="container">
            <div class="row gutters">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="account-settings">
                                <div class="user-profile">
                                    <div class="user-avatar">
                                        <img src="assets/images/stallicon.png" alt="Maxwell Admin">
                                    </div>
                                    <h5 class="user-name"><%=rs.getString("CWORKSTALLNAME")%></h5>
                                </div>
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
                                        <label>IC Number</label>
                                        <label>
                                            <input type="text" class="form-control" name="CWORKID"  value="<%=rs.getString("CWORKID")%>"/>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label>Stall Name</label>
                                        <label>
                                            <input type="text" class="form-control" name="CWORKSTALLNAME" value="<%=rs.getString("CWORKSTALLNAME")%>"/>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <label>
                                            <input type="email" class="form-control" name="CWORKEMAIL" value="<%=rs.getString("CWORKEMAIL")%>"   />
                                        </label>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <label>
                                            <input type="password" class="form-control" name="CWORKPASSWORD" value="<%=rs.getString("CWORKPASSWORD")%>"  />
                                        </label>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label>Phone Number</label>
                                        <label>
                                            <input type="text" class="form-control" name="CWORKPHONENO" value="<%=rs.getString("CWORKPHONENO")%>" >
                                        </label>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label>Bank Account Number</label>
                                        <label>
                                            <input type="text" class="form-control"  name="CWORKACCNUM" value="<%=rs.getString("CWORKACCNUM")%>" />
                                        </label>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label>Bank Name</label>
                                        <label>
                                            <input type="text" class="form-control"  name="CWORKACCNAME" value="<%=rs.getString("CWORKACCNAME")%>"/>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label>Bank Account Name</label>
                                        <label>
                                            <input type="text" class="form-control"  name="CWORKBANKNAME" value="<%=rs.getString("CWORKBANKNAME")%>">
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <div class="text-right">
                                        <button type="submit" name="submit" class="btn btn-primary">Update</button>
                                        <%--                                    <a href= "#"><button type="button"  name="submit" class="btn btn-primary">Delete Account</button></a>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%

                                i++;
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </form>

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
        /*.account-settings .user-profile h6.user-email {*/
        /*    margin: 0;*/
        /*    font-size: 0.8rem;*/
        /*    font-weight: 400;*/
        /*    color: #9fa8b9;*/
        /*}*/
        /*.account-settings .about {*/
        /*    margin: 2rem 0 0 0;*/
        /*    text-align: center;*/
        /*}*/
        .account-settings .about h5 {
            margin: 0 0 15px 0;
            color: #007ae1;
        }
        .account-settings .about p {
            font-size: 0.825rem;
        }
        /*.form-control {*/
        /*    border: 1px solid #cfd1d8;*/
        /*    -webkit-border-radius: 2px;*/
        /*    -moz-border-radius: 2px;*/
        /*    border-radius: 2px;*/
        /*    font-size: .825rem;*/
        /*    background: #ffffff;*/
        /*    color: #2e323c;*/
        /*}*/

        /*.card {*/
        /*    background: #ffffff;*/
        /*    -webkit-border-radius: 5px;*/
        /*    -moz-border-radius: 5px;*/
        /*    border-radius: 5px;*/
        /*    border: 0;*/
        /*    margin-bottom: 1rem;*/
        /*}*/

    </style>

    <script type="text/javascript">

    </script>
</div>
</body>


<!--End Body Content-->

<!-- Newsletter Popup -->
<!-- End Newsletter Popup -->

<!-- Including Jquery -->
<script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
<script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
<script src="assets/js/vendor/jquery.cookie.js"></script>
<script src="assets/js/vendor/wow.min.js"></script>
<!-- Including Javascript -->
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/lazysizes.js"></script>
<script src="assets/js/main.js"></script>

</html>