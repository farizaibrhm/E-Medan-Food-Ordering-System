<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2/14/2022
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="emfos.DBConnect.DBConnection"%>
<%@ page import="emfos.DAO.orderDAO" %>
<%@ page import="emfos.Model.order" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Details</title>
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
<body>

<% order ord = new order();%>
<% orderDAO or= new orderDAO();%>

<%
    String CWORKID = (String) session.getAttribute("CWORKID");
    if (CWORKID== null)
    { response.sendRedirect("cafeworkerLogin.jsp")
    ;}
%>


<%
        DecimalFormat df = new DecimalFormat("##. 00");

        String ordNo = request.getParameter("id");
        String cid = (String) session.getAttribute("CWORKID");
        if (!((ordNo) == null && (cid) == null))
        {
            int ords = Integer.parseInt(ordNo);
            ord = or.getOrderByOrderNoCwork(ords,cid);
    %>
    <!--Body Content-->

            <br><br><br><br>
    <div id="page-content" style="position: relative;left: 20%;">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 mb-3">
                    <div class="customer-box returning-customer">
                        <h3>Order Details</h3>
                    </div>
                </div>
            </div>

            <div class="row billing-fields">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 sm-margin-30px-bottom">
                    <div class="create-ac-content bg-light-gray padding-20px-all">
                        <h2 class="order-title mb-3">Your Order</h2>

                        <div class="table-responsive-sm order-table">
                            <table class="table table-borderless text-center">
                                <tr>
                                    <td class="text-left">
                                        <h3 class="font-15 xs-font-13">Sold to:</h3>
                                        <p class="no-margin font-15"><%=ord.getSTUDENTNAME()%></p>
                                    </td>
                                    <td class="text-left">
                                        <h3 class="font-15 xs-font-13">Order:</h3>
                                        <p class="no-margin font-15">
                                            <b>Order number: </b><%=ord.getORDERNO()%><br>
                                            <b>Order date: </b><%=ord.getORDERDATE()%><br>
                                            <b>Order time: </b><%=ord.getORDERTIME()%>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">
                                        <h3 class="font-15 xs-font-13">Shop:</h3>
                                        <p class="no-margin font-15"><%=ord.getCWORKSTALLNAME()%></p>
                                    </td>
                                </tr>
                            </table>
                        </div>


                        <div class="table-responsive-sm order-table">
                            <table class="bg-white table table-bordered table-hover text-center">
                                <thead>
                                <tr>
                                    <th class="text-left">Product Name</th>
                                    <th>Price</th>
                                    <th>Qty</th>
                                    <th>Subtotal</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-left"><%=ord.getMENUNAME()%></td>
                                    <td>RM <%=df.format(ord.getORDERPRICE())%></td>
                                    <td><%=ord.getORDERQUANTITY()%></td>
                                    <td>RM <%=df.format(ord.getORDERTPRICE())%></td>
                                </tr>
                                </tbody>
                                <tfoot class="font-weight-600">
                                <tr>
                                    <td colspan="3" class="text-right">Delivery Method </td>
                                    <td>CASH ON PICKUP</td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="text-right">Total</td>
                                    <td>RM <%=df.format(ord.getORDERTPRICE())%></td>
                                </tr>
                                </tfoot>
                                <%
                                    } else
                                        out.println("ID Not Found");
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Body Content-->

</body>
</html>