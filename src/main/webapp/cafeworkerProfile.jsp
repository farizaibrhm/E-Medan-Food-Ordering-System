<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@page import="emfos.DBConnect.DBConnection"%>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 29/1/2022
  Time: 9:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<!-- belle/home2-default.html   11 Nov 2019 12:22:28 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cafeworker Profile</title>
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

    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;}

        /* Set a style for all buttons */
        button {
            background-color: #ff3300;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 40%;
            opacity: 0.9;
        }

        button:hover {
            opacity:1;
        }

        /* Float cancel and delete buttons and add an equal width */
        .cancelbtn, .deletebtn {
            float: left;
            width: 50%;
        }

        /* Add a color to the cancel button */
        .cancelbtn {
            background-color: #ccc;
            color: black;
        }

        /* Add a color to the delete button */
        .deletebtn {
            background-color: #f44336;
        }

        /* Add padding and center-align text to the container */
        .container {
            padding: 16px;
            text-align: center;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: #474e5d;
            padding-top: 50px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* Style the horizontal ruler */
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* The Modal Close Button (x) */
        .close {
            position: absolute;
            right: 35px;
            top: 15px;
            font-size: 40px;
            font-weight: bold;
            color: #f1f1f1;
        }

        .close:hover,
        .close:focus {
            color: #f44336;
            cursor: pointer;
        }

        /* Clear floats */
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Change styles for cancel button and delete button on extra small screens */
        @media screen and (max-width: 300px) {
            .cancelbtn, .deletebtn {
                width: 100%;
            }
        }
    </style>
</head>


<%
    String CWORKID = (String) session.getAttribute("CWORKID");
    if (CWORKID == null)
    { response.sendRedirect("cafeworkerLogin.jsp")
    ;}
%>



<body class="template-index home2-default">
<div class="pageWrapper">
    <jsp:include page="header2.jsp"></jsp:include>

    <br>
    <br>
    <!--Body Content-->
    <div class="col-2 col-sm-3 col-md-3 col-lg-8">

    </div>

    <center>
        <%
            Connection con = DBConnection.getConn();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT \"CWORKID\", \"CWORKSTALLNAME\", \"CWORKPHONENO\", \"CWORKEMAIL\", \"CWORKPASSWORD\", \"CWORKACCNUM\",\"CWORKACCNAME\" ,\"CWORKBANKNAME\"  FROM public.cafeworker WHERE \"CWORKID\" ='" + session.getAttribute("CWORKID")+ "'");
            while (rs.next()){

        %>
        <div class="col-xl-5 col-lg-5 col-md-14 col-sm-14 col-14">
            <div class="card h-100">
                <div class="card-body">
                    <div class="account-settings">
                        <div class="user-profile">
                            <div class="user-avatar">
                                <img src="assets/images/stallicon.png" alt="Maxwell Admin" size="4%">
                            </div>

                            <h5 class="user-name"><%=rs.getString("CWORKSTALLNAME")%></h5><br>
                            <hr>
                            <h4 class="user-name"><%=rs.getString("CWORKPHONENO")%></h4>
                            <h4 class="user-name"><%=rs.getString("CWORKEMAIL")%></h4><br>
                            <h4 class="user-name"><%=rs.getString("CWORKACCNUM")%></h4>
                            <h4 class="user-name"><%=rs.getString("CWORKACCNAME")%></h4>
                            <h4 class="user-name"><%=rs.getString("CWORKBANKNAME")%></h4>
                            <hr>

                            <button style="background-color: #000000; width: 180px;" class="btn btn--sm" onclick="window.location.href='cafeworkerEditProfile.jsp'">Update Account</button>

                            <form method="post" action="${pageContext.request.contextPath}/cafeworkerDeleteAccountServlet">
                                <input type="hidden" name="id" value="<%=rs.getString("CWORKID")%>">
                                <button type="submit" name="Action" style="background-color: #D8503F; display: inline-block; margin: 2px; width: 180px;" class="et_pb_button btn btn--sm" value="Delete Account" onclick="return confirm('Are you sure you want to delete your account?');" >Delete Account</button>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </center>

    <%
        }
    %>

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

<%--<!-- Scripts -->--%>
<%--<script src="assets/js/jquery.min.js"></script>--%>
<%--<script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<%--<script src="assets/js/jquery.scrolly.min.js"></script>--%>
<%--<script src="assets/js/jquery.scrollex.min.js"></script>--%>
<%--<script src="assets/js/main.js"></script>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>--%>
<%--<script type="text/javascript">--%>
<%--    $(document).ready(function (){--%>
<%--        $('.del').click(function(){--%>
<%--            var id = +this.id;--%>
<%--            $.ajax({--%>
<%--                url: "deleteCafeWorkerAccount.jsp",--%>
<%--                type:"post",--%>
<%--                data:{--%>
<%--                    id: id,--%>
<%--                },--%>
<%--                success:function (data){--%>
<%--                    $("#show-data2").html(data);--%>
<%--                }--%>
<%--            });--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
<%--<script>--%>
<%--    $('#myTab a').click(function (e) {--%>
<%--        e.preventDefault()--%>
<%--        $(this).tab('show')--%>
<%--    });--%>

<%--    // store the currently selected tab in the hash value--%>
<%--    $("ul.nav-tabs > li > a").on("shown.bs.tab", function (e) {--%>
<%--        var id = $(e.target).attr("href").substr(1);--%>
<%--        window.location.hash = id;--%>
<%--    });--%>

<%--    // on load of the page: switch to the currently selected tab--%>
<%--    var hash = window.location.hash;--%>
<%--    $('#myTab a[href="' + hash + '"]').tab('show');--%>
<%--</script>--%>

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