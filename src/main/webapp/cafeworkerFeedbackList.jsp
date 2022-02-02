<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="emfos.cafeworker" %>



<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/faqs.html   11 Nov 2019 12:44:40 GMT -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Students' Feedback &ndash; e-Medan Food Ordering System</title>
  <meta name="description" content="description">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="shortcut icon" href="assets/images/e-Medan.svg" />
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
<style>
  .checked{ color:orange;}
</style>

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
  <!--Top Header-->
  <div class="top-header">
    <div class="container-fluid">
      <div class="row">
        <div class="col-10 col-sm-8 col-md-5 col-lg-4">
          <div class="currency-picker">
          </div>
          <div class="language-dropdown">

          </div>
          <p class="phone-no"></p>
        </div>
        <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block align-items-center">
          <div class="text-center"><p class="top-header_middle-text"> Welcome to e-Medan Food Ordering System</p></div>
        </div>
        <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right align-items-right">
          <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
          <ul class="customer-links list-inline">
            <li><a href="${pageContext.request.contextPath}/cafeworkerLogoutServlet">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!--End Top Header-->
  <!--Header-->
  <div class="header-wrap animated d-flex">
    <div class="container-fluid">
      <div class="row align-items-center">
        <!--Desktop Logo-->
        <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
          <a href="#">
            <img src="assets/images/e-Medan.svg" alt="e-Medan Food Ordering System" title="e-Medan Food Ordering System" />
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
              <%--                            <li class="lvl1 parent dropdown"><a href="#">Menu <i class="anm anm-angle-down-l"></i></a>--%>
              <%--                                <ul class="dropdown">--%>
              <%--                                    <li><a href="menucw.html" class="site-nav">View Menu</a></li>--%>
              <%--                                    <li><a href="AddMenu.html" class="site-nav">Add Menu  </a></li>--%>
              <%--                                    <li><a href="updateMenu.html" class="site-nav">Update Menu  </a></li>--%>
              <%--                                    <li><a href="deleteMenu.html" class="site-nav">Delete Menu </a></li>--%>
              <%--                                </ul>--%>
              <li class="lvl1 parent megamenu"><a href="cafeworkerMenuList.jsp"> Menu <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="cafeworkerOrderList.jsp#"> Order <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="cafeworkerFeedbackList.jsp#"> Feedback <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="cafeworkerTotalSales.jsp#"> Report <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="cafeworkerProfile.jsp"> Account <i class="anm anm-angle-down-l"></i></a></li>
            </ul>
          </nav>
          <!--End Desktop Menu-->
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
        <div class="wrapper"><h1 class="page-width">List of Students Feedbacks of <%=session.getAttribute("CWORKSTALLNAME")%></h1></div>
      </div>
    </div>
    <div class="container align-items-center">
      <div class="row">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
          <form action="#" method="post" class="cart style2">
            <table>
              <thead class="cart__row cart__header">
              </thead>
              <tbody>
              <%
                String FEEDBACKID = request.getParameter("FEEDBACKID");
                try
                {
                  Class.forName("org.postgresql.Driver");
                  Connection con = DriverManager.getConnection("jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0", "kgkcfexavaezbv", "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6");
                  Statement st = con.createStatement();
                  String sql = "SELECT \"FEEDBACKID\", \"FEEDBACKMESSAGE\", \"FEEDBACKDATE\", \"FEEDBACKTIME\", \"STUDENTID\", \"ORDERID\" FROM public.feedback ;";
//                String ql = "select * from tblorders where customer_name='" + session.getAttribute("name") + "' ";
                  ResultSet rs = st.executeQuery(sql);
                  int i=1;
                  while (rs.next())
                  {
              %>
              <tr class="cart__row border-bottom line1 cart-flex border-top">
                <td class="cart__image-wrapper cart-flex-item">
                  <a><img class="cart__image" src="assets/images/female-student.jpg" alt="3/4 Sleeve Kimono Dress"></a>
                </td>
                <td class="cart__meta small--text-left cart-flex-item">
                  <div class="list-view-item__title">
                    <h5>#<%=rs.getString("FEEDBACKID")%></h5>
                  </div>
                  <div class="cart__meta-text">
                   <h5><%=rs.getString("FEEDBACKMESSAGE")%></h5>
                  </div>
                </td>
                <td class="cart__update-wrapper  text-center cart-flex-item">
                  <div class="list-view-item__title">
                    <h4>Order ID</h4>
                  </div>
                  <div class="cart__meta-text">
                    <h5>#<%=rs.getString("ORDERID")%></h5>
                  </div>
                </td>
                <td class="cart__update-wrapper  text-center cart-flex-item">

                  <div class="cart__meta-text">
                    <a><%=rs.getString("FEEDBACKDATE")%></a>
                    <br>
                    <a><%=rs.getString("FEEDBACKTIME")%></a>
                  </div>
                </td>
              </tr>
              <%
                    i++;
                  }
                }catch (Exception e){
                  out.println();
                }
              %>


              </tbody>
            </table>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

      </body>
</html>

