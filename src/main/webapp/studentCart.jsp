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
    <title>Your cart</title>
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
                <div class="wrapper"><h1 class="page-width">Your cart</h1></div>
            </div>
        </div>
        <!--End Page Title-->

        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-8 col-lg-8 main-col">
                    <div class="cart style2">
                        <table>
                            <thead class="cart__row cart__header">
                            <tr>
                                <th colspan="2" class="text-center">Product</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Quantity</th>
                                <th class="text-right">Total</th>
                                <th class="action">&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                Connection con = DBConnection.getConn();
                                int index = 0;
                                Double grandtotal = 0.0;
                                Statement st2 = con.createStatement();
                                ResultSet rs2 = st2.executeQuery("SELECT * FROM public.cart \"c\", public.menu \"m\" WHERE \"c\".\"MENUID\" = \"m\".\"MENUID\" AND \"c\".\"STUDENTID\" ='" + session.getAttribute("STUDENTID")+"'");
                                while (rs2.next()){
                                    index++;
                            %>
                            <tr class="cart__row border-bottom line1 cart-flex border-top">
                                <td class="cart__image-wrapper cart-flex-item">
                                    <a href="#"><img class="cart__image" src="images/<%=rs2.getString("fileName")%>"></a>
                                </td>
                                <td class="cart__meta small--text-left cart-flex-item">
                                    <div class="list-view-item__title">
                                        <a href="#"><%=rs2.getString("MENUNAME")%></a>
                                    </div>
                                </td>
                                <%
                                    DecimalFormat df = new DecimalFormat("##. 00");
                                    menuDAO mdao = new menuDAO();

                                    Double price = mdao.getPriceByMenuID(rs2.getInt("MENUID"));
                                    Double totalprice = price * (rs2.getInt("CARTQUANTITY"));
                                    grandtotal = grandtotal + totalprice;
                                %>

                                <td class="cart__price-wrapper cart-flex-item">
                                    <span class="money">RM <%=df.format(rs2.getDouble("MENUTPRICE"))%></span>
                                </td>
                                <td class="cart__update-wrapper cart-flex-item text-right">
                                    <form method="post" action="${pageContext.request.contextPath}/studentCartServlet">
                                        <div class="cart__qty text-center">
                                            <div class="qtyField">
                                                <input type="hidden" name="menuid" value="<%=rs2.getInt("MENUID") %>">
                                                <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                                                <input class="cart__qty-input qty" type="text" name="quantity" id="qty" value="<%=rs2.getString("CARTQUANTITY")%>" pattern="[0-9]*">
                                                <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a><br>
                                                <button type="submit" name="Action" value="Update Quantity" class="btn--link cart-update"><i class="fa fa-refresh"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </td>
                                <td class="text-right small--hide cart-price">
                                    <div><span class="money">RM <%=df.format(totalprice)%></span></div>
                                </td>
                                <td>
                                    <form method="post" action="${pageContext.request.contextPath}/studentCartServlet">
                                        <input type="hidden" name="id" value="<%=rs2.getInt("MENUID")%>">
                                        <input type="submit" name="Action" value="x" onclick="return confirm('Are you sure you want to remove this item from cart?');">
                                    </form>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>

                        </table>
                        <%
                            if (index == 0) {
                        %>
                        <center>
                            <strong>There is no item(s) in your cart.</strong>
                        </center>
                        <%
                            }
                        %>
                    </div>
                </div>

                <%
                    DecimalFormat df = new DecimalFormat("##. 00");
                %>

                <div class="col-12 col-sm-12 col-md-4 col-lg-4 cart__footer">
                    <div class="solid-border">
                        <div class="row border-bottom pb-2">
                            <span class="col-12 col-sm-6 cart__subtotal-title">Subtotal</span>
                            <span class="col-12 col-sm-6 text-right">RM <%=df.format(grandtotal)%></span></span>
                        </div>

                        <div class="row border-bottom pb-2 pt-2">
                            <span class="col-12 col-sm-6 cart__subtotal-title">Delivery Method</span>
                            <span class="col-12 col-sm-6 text-right">Cash on Pickup</span>
                        </div>
                        <div class="row border-bottom pb-2 pt-2">
                            <span class="col-12 col-sm-6 cart__subtotal-title"><strong>Grand Total</strong></span>
                            <span class="col-12 col-sm-6 cart__subtotal-title cart__subtotal text-right">RM <%=df.format(grandtotal)%></span></span>
                        </div>
                        <form method="post" action="${pageContext.request.contextPath}/studentOrderServlet">
                            <input type="hidden" name="amount" value="<%=df.format(grandtotal)%>">
                            <input type="submit" name="Action" id="cartCheckout" class="btn btn--small-wide checkout" value="Place Order">
                        </form>
                    </div>

                </div>
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