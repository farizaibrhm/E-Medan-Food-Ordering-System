<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="emfos.DBConnect.DBConnection"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/checkout.html   11 Nov 2019 12:44:33 GMT -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Checkout</title>
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
<body class="page-template belle">
<div class="pageWrapper">
  <!--Search Form Drawer-->
  <div class="search">
    <div class="search__form">
      <form class="search-bar__form" action="#">
        <button class="go-btn search__button" type="submit"><i class="icon anm anm-search-l"></i></button>
        <input class="search__input" type="search" name="q" value="" placeholder="Search entire store..." aria-label="Search" autocomplete="off">
      </form>
      <button type="button" class="search-trigger close-btn"><i class="icon anm anm-times-l"></i></button>
    </div>
  </div>
  <!--End Search Form Drawer-->
  <%
    String STUDENTNAME = (String) session.getAttribute("STUDENTNAME");
    if (STUDENTNAME== null)
    {
      response.sendRedirect("studentLogin.jsp");
  %>
  <% } else{
  %>

  <!--Top Header-->
  <div class="top-header">
    <div class="container-fluid">
      <div class="row">
        <div class="col-10 col-sm-8 col-md-5 col-lg-4">
        </div>
        <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
          <div class="text-center"><p class="top-header_middle-text">Welcome, <%=session.getAttribute("STUDENTNAME")%>!</p></div>
        </div>
        <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
          <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
          <ul class="customer-links list-inline">
            <li><a href="${pageContext.request.contextPath}/studentLogoutServlet">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!--End Top Header-->
  <!--Header-->
  <div class="header-wrap animated d-flex border-bottom">
    <div class="container-fluid">
      <div class="row align-items-center">
        <!--Desktop Logo-->
        <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
          <a href="index.jsp">
            <img src="assets/images/e-Medan.svg" alt="e-Medan Food Ordering Website" title="e-Medan Food Ordering Website" />
          </a>
        </div>
        <!--End Desktop Logo-->
        <div class="col-2 col-sm-3 col-md-3 col-lg-8">
          <div class="d-block d-lg-none">
            <button type="button" class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
              <i class="icon anm anm-times-l"></i>
              <i class="anm anm-bars-r"></i>
            </button>
          </div>
          <!--Desktop Menu-->
          <nav class="grid__item" id="AccessibleNav"><!-- for mobile -->
            <ul id="siteNav" class="site-nav medium center hidearrow">
              <li class="lvl1 parent megamenu"><a href="index.jsp">Home <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="aboutus.jsp">About Us <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent dropdown"><a href="studentMenuList.jsp">Menu <i class="anm anm-angle-down-l"></i></a>
                <ul class="dropdown">
                  <li><a href="studentFoodMenuList.jsp" class="site-nav">Food</a></li>
                  <li><a href="studentDrinkMenuList.jsp" class="site-nav">Drink</a></li>
                </ul>
              </li>
              <li class="lvl1 parent megamenu"><a href="studentProfile.jsp">Account <i class="anm anm-angle-down-l"></i></a></li>
            </ul>
          </nav>
          <!--End Desktop Menu-->
        </div>

        <div class="col-4 col-sm-3 col-md-3 col-lg-2">
          <div class="site-cart">
            <a href="studentCart.jsp" class="site-header__cart" title="Cart">
              <i class="icon anm anm-bag-l"></i>
              <%
                Connection con = emfos.DBConnect.DBConnection.getConn();

                Statement st=con.createStatement();
                ResultSet rs = st.executeQuery("SELECT COUNT (*) FROM public.cart WHERE \"STUDENTID\" ='" + session.getAttribute("STUDENTID")+"'");

                rs.next();
                int count = rs.getInt(1);
              %>
              <span id="CartCount" class="site-header__cart-count" data-cart-render="item_count"><%=count%></span>
            </a>

          </div>
          <div class="site-header__search">
            <button type="button" class="search-trigger"><i class="icon anm anm-search-l"></i></button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--End Header-->
  <!--Body Content-->
  <div id="page-content">
    <!--Page Title-->
    <div class="page section-header text-center">
      <div class="page-title">
        <div class="wrapper"><h1 class="page-width">Checkout</h1></div>
      </div>
    </div>
    <!--End Page Title-->

    <div class="container">
      <div class="row">
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 mb-3">
          <div class="customer-box returning-customer">
            <h3>Order Details</h3>
          </div>
        </div>

        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 mb-3">
          <div class="customer-box customer-coupon">
            <h3 class="font-15 xs-font-13">Payment Details</h3>
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
                    <p class="no-margin font-15"><%=session.getAttribute("STUDENTNAME")%></p>
                  </td>
                  <td class="text-left">
                    <h3 class="font-15 xs-font-13">Order:</h3>
                    <p class="no-margin font-15">
                      <b>Order number: </b><%=session.getAttribute("ORDERID")%><br>
                      <b>Order date: </b><%=session.getAttribute("ORDERDATE")%><br>
                      <b>Order time: </b><%=session.getAttribute("ORDERTIME")%>>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td class="text-left">
                    <h3 class="font-15 xs-font-13">Shop:</h3>
                    <p class="no-margin font-15"><%=session.getAttribute("CWORKSTALLNAME")%></p>
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
                  <td class="text-left">Burger Daging Supreme</td>
                  <td>RM 12.00</td>
                  <td>1</td>
                  <td>RM 12.00</td>
                </tr>
                <tr>
                  <td class="text-left">Oren Jus</td>
                  <td>RM 6.00</td>
                  <td>1</td>
                  <td>RM 6.00</td>
                </tr>
                <tr>
                  <td class="text-left">Chicken Cheeza</td>
                  <td>RM 6.00</td>
                  <td>1</td>
                  <td>RM 6.00</td>
                </tr>
                </tbody>
                <tfoot class="font-weight-600">
                <tr>
                  <td colspan="3" class="text-right">Tax </td>
                  <td>RM 0.36</td>
                </tr>
                <tr>
                  <td colspan="3" class="text-right">Shipping </td>
                  <td>RM 0.00</td>
                </tr>
                <tr>
                  <td colspan="3" class="text-right">Total</td>
                  <td>RM 24.36</td>
                </tr>
                </tfoot>
              </table>
            </div>

          </div>
        </div>

        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
          <div class="your-order-payment">
            <div class="your-order">
              <h2 class="login-title mb-3">Bank Account Information</h2>
              <h3 class="font-15 xs-font-13">Account Number</h3>
              <p class="no-margin font-15">8704345678</p>

              <h3 class="font-15 xs-font-13">Account Name</h3>
              <p class="no-margin font-15">Ibrahim bin Salamon</p>

              <h3 class="font-15 xs-font-13">Account Bank</h3>
              <p class="no-margin font-15">CIMB Bank Berhad</p>

            </div>

            <hr />

            <div class="your-payment">
              <h2 class="payment-title mb-3">UPLOAD RECEIPT</h2>
              <div class="payment-method">
                <div class="payment-accordion">
                  <div id="accordion" class="payment-section">
                    <h3 class="font-15 xs-font-13">Payment Instruction</h3>
                    <p class="no-margin font-15">Please include order number for the recipient's reference when uploading payment receipt.</p>
                    <fieldset>
                      <div class="row">
                        <div class="form-group col-md-6 col-lg-6 col-xl-6">
                          <label for="input-country">Payment Date</label>
                          <input name="cardno" value="" placeholder="23-Sep-2021" class="form-control" type="text" disabled>
                        </div>
                        <div class="form-group col-md-6 col-lg-6 col-xl-6">
                          <label for="input-country">Payment Time</label>
                          <input name="cardno" value="" placeholder="14:27:18"class="form-control" type="text" disabled>
                        </div>
                        <div class="form-group col-md-6 col-lg-6 col-xl-12 required">
                          <label for="input-cardname">Receipt/Proof of Payment<span class="required-f">*</span></label>
                          <input type="file" class="form-control-file">
                        </div>
                      </div>

                    </fieldset>
                  </div>
                </div>

                <div>
                  <a href="orderconfirmation.html">
                    <input type="submit" name="checkout" id="cartCheckout" class="btn btn--small-wide checkout" value="Place Order">
                  </a>

                </div>


              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
  <!--End Body Content-->

  <!--Footer-->
  <footer id="footer" class="footer-2">
    <div class="site-footer">
      <div class="container">
        <!--Footer Links-->
        <div class="footer-top">
          <div class="row">
            <div class="col-12 col-sm-12 col-md-3 col-lg-3 contact-box">
              <h4 class="h4">Contact Us</h4>
              <ul class="addressFooter">
                <li><i class="icon anm anm-map-marker-al"></i><p>Jalan Lembah Kesang 1/1-2, Kampung <br>Seri Mendapat, 77300 Merlimau, Melaka</p></li>
                <li class="phone"><i class="icon anm anm-phone-s"></i><p>(+606) 264 5000</p></li>
              </ul>
            </div>
          </div>
        </div>
        <!--End Footer Links-->
        <hr>
        <div class="footer-bottom">
          <div class="row">
          </div>
        </div>
      </div>
    </div>
  </footer>
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
</div>
</body>
<% }%>

<!-- belle/checkout.html   11 Nov 2019 12:44:33 GMT -->
</html>