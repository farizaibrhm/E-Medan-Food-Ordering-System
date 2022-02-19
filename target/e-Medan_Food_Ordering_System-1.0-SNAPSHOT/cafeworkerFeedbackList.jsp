<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="emfos.Model.cafeworker" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import="emfos.DBConnect.DBConnection" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Feedback List</title>
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
<body>

<div id="page-content">

    <jsp:include page="header2.jsp"></jsp:include>
    <!--Page Title-->
    <div class="page section-header text-center">
        <div class="page-title">
            <div class="wrapper"><h1 class="page-width">List of Students Feedbacks</h1></div>
        </div>
    </div>
    <div class="container align-items-center">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                <form action="#" method="post" class="cart style2">
                    <table>
                        <%
                            Connection con = DBConnection.getConn();
                            Date dNow = new Date( );
                            SimpleDateFormat ft = new SimpleDateFormat ("dd-MMM-yyyy");
                            SimpleDateFormat ft2 = new SimpleDateFormat("HH:mm:ss");
                            Statement st = con.createStatement();
                            String sql = "SELECT *  FROM public.forder \"o\", public.orderitem \"oi\", public.student \"s\" ,public.feedback \"f\" WHERE \"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"f\".\"ORDERID\"= \"o\".\"ORDERID\" AND \"o\".\"STUDENTID\" = \"s\".\"STUDENTID\" AND \"oi\".\"CWORKID\" = '" + session.getAttribute("CWORKID") + "' ";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next())
                            {
                        %>
                        <thead class="cart__row cart__header">
                        </thead>
                        <tbody>
                        <tr class="cart__row border-bottom line1 cart-flex border-top">
                            <td class="cart__image-wrapper cart-flex-item">
                                <a><img class="cart__image" src="assets/images/female-student.jpg"></a>
                            </td>
                            <td class="cart__meta small--text-left cart-flex-item">
                                <div class="list-view-item__title">
                                    <a><%=rs.getString("STUDENTNAME")%></a>
                                </div>
                                <div class="cart__meta-text">
                                    <b><%=rs.getString("FEEDBACKMESSAGE")%></b>
                                </div>
                            </td>
                            <td class="cart__update-wrapper  text-center cart-flex-item">
                                <div class="list-view-item__title">
                                    <h5>Order No</h5>
                                </div>
                                <div class="cart__meta-text">
                                    <h6>#<%=rs.getString("ORDERNO")%></h6>
                                </div>
                            </td>
                            <td class="cart__update-wrapper  text-center cart-flex-item">
                                <div class="cart__meta-text">
                                    <b><%=ft.format(rs.getDate("FEEDBACKDATE"))%></b>
                                    <br>
                                    <b><%=ft2.format(rs.getTime("FEEDBACKTIME"))%></b>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                        <%
                            }
                        %>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
