<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/faqs.html   11 Nov 2019 12:44:40 GMT -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Update Order Page &ndash; e-Medan Food Ordering System</title>
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
            <li><a href="login.html">Logout</a></li>
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


  <!--Body Content-->
  <div id="page-content">
    <!--Page Title-->
    <div class="page section-header text-center">
      <div class="page-title">
        <div class="wrapper"><h1 class="page-width">Update Order Page</h1></div>
      </div>
    </div>

    <div class="container align-items-center ">
      <div class="row">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
          <form action="#" method="post" class="cart style2">
            <table>
              <thead class="cart__row cart__header">
              <tr>
                <th class="text-center">Order ID</th>
                <th class="text-center">Name</th>
                <th class="text-center">Telephone Number</th>
                <th class="text-center">Order Details</th>
                <th class="text-center">Status</th>
                <th class="action">&nbsp;</th>
              </tr>
              </thead>
              <tbody>
              <tr class="cart__row border-bottom line1 cart-flex border-top">

                <td class="cart__meta text-right cart-flex-item">
                  <div class="list-view-item__title text-center">
                    <h1>#1560</h1>
                    <h6>15th June 2022</h6>
                    <h6>4:00 PM</h6>
                  </div>
                </td>
                <td class="cart__price-wrapper cart-flex-item text-center">
                  <div class="list-view-item__title text-center">
                    <h3>Mariah Binti Ahmad</h3>

                  </div>
                </td>
                <td class="cart__update-wrapper cart-flex-item text-right">
                  <div class="list-view-item__title text-center">

                    <h3>011-10944393</h3>

                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <h3 id="myBtn" class="text-center" style="text-decoration: underline; cursor: pointer;">View     <i class="fa fa-eye"></i></h3>

                  <!-- The Modal -->
                  <div id="myModal" class="modal">
                    <!-- Modal content -->
                    <div class="modal-content">
                      <div class="modal-header text-center">
                        <span class="close">&times;</span>

                      </div>

                      <div class="modal-body text-center">
                        <a>Some text in the Modal Body</a>
                        <a>Some other text...</a>
                      </div>
                      <div class="modal-footer text-center">
                        <a>Modal Footer</a>
                      </div>
                    </div>
                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <div class="dropdowns">
                    <button class="dropbtn">Pending</button>
                    <div class="dropdowns-content">
                      <a href="#">Confirmed</a>
                      <a href="#">Processed</a>

                      <a href="#">Ready to Pickup</a>
                      <a href="#">Completed</a>
                    </div>
                  </div>
                </td>

              </tr>
              <tr class="cart__row border-bottom line1 cart-flex border-top">

                <td class="cart__meta text-right cart-flex-item">
                  <div class="list-view-item__title text-center">
                    <h1>#1561</h1>
                    <h6>19th July 2021</h6>
                    <h6>4:00 PM</h6>
                  </div>
                </td>
                <td class="cart__price-wrapper cart-flex-item text-center">
                  <div class="list-view-item__title text-center">
                    <h3>Heliza Binti Helmi</h3>

                  </div>
                </td>
                <td class="cart__update-wrapper cart-flex-item text-right">
                  <div class="list-view-item__title text-center">

                    <h3>012-3456789</h3>

                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <h3 id="myBtn" class="text-center" style="text-decoration: underline; cursor: pointer;">View     <i class="fa fa-eye"></i></h3>

                  <!-- The Modal -->
                  <div id="myModal" class="modal">
                    <!-- Modal content -->
                    <div class="modal-content">
                      <div class="modal-header text-center">
                        <span class="close">&times;</span>

                      </div>

                      <div class="modal-body text-center">
                        <a>Some text in the Modal Body</a>
                        <a>Some other text...</a>
                      </div>
                      <div class="modal-footer text-center">
                        <a>Modal Footer</a>
                      </div>
                    </div>
                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <div class="dropdowns">
                    <button class="dropbtn">Pending</button>
                    <div class="dropdowns-content">
                      <a href="#">Confirmed</a>
                      <a href="#">Processed</a>

                      <a href="#">Ready to Pickup</a>
                      <a href="#">Completed</a>
                    </div>
                  </div>
                </td>

              </tr>
              <tr class="cart__row border-bottom line1 cart-flex border-top">

                <td class="cart__meta text-right cart-flex-item">
                  <div class="list-view-item__title text-center">
                    <h1>#1562</h1>
                    <h6>8th June 2021</h6>
                    <h6>4:00 PM</h6>
                  </div>
                </td>
                <td class="cart__price-wrapper cart-flex-item text-center">
                  <div class="list-view-item__title text-center">
                    <h3>Petra Bin Hussin</h3>

                  </div>
                </td>
                <td class="cart__update-wrapper cart-flex-item text-right">
                  <div class="list-view-item__title text-center">

                    <h3>011-1453267</h3>

                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <h3 id="myBtn" class="text-center" style="text-decoration: underline; cursor: pointer;">View     <i class="fa fa-eye"></i></h3>

                  <!-- The Modal -->
                  <div id="myModal" class="modal">
                    <!-- Modal content -->
                    <div class="modal-content">
                      <div class="modal-header text-center">
                        <span class="close">&times;</span>

                      </div>

                      <div class="modal-body text-center">
                        <a>Some text in the Modal Body</a>
                        <a>Some other text...</a>
                      </div>
                      <div class="modal-footer text-center">
                        <a>Modal Footer</a>
                      </div>
                    </div>
                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <div class="dropdowns">
                    <button class="dropbtn">Pending</button>
                    <div class="dropdowns-content">
                      <a href="#">Confirmed</a>
                      <a href="#">Processed</a>

                      <a href="#">Ready to Pickup</a>
                      <a href="#">Completed</a>
                    </div>
                  </div>
                </td>

              </tr>
              <tr class="cart__row border-bottom line1 cart-flex border-top">

                <td class="cart__meta text-right cart-flex-item">
                  <div class="list-view-item__title text-center">
                    <h1>#1563</h1>
                    <h6>22nd June 2021</h6>
                    <h6>4:00 PM</h6>
                  </div>
                </td>
                <td class="cart__price-wrapper cart-flex-item text-center">
                  <div class="list-view-item__title text-center">
                    <h3>Anita Binti Karim</h3>

                  </div>
                </td>
                <td class="cart__update-wrapper cart-flex-item text-right">
                  <div class="list-view-item__title text-center">

                    <h3>011-42376532</h3>

                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <h3 id="myBtn" class="text-center" style="text-decoration: underline; cursor: pointer;">View     <i class="fa fa-eye"></i></h3>

                  <!-- The Modal -->
                  <div id="myModal" class="modal">
                    <!-- Modal content -->
                    <div class="modal-content">
                      <div class="modal-header text-center">
                        <span class="close">&times;</span>

                      </div>

                      <div class="modal-body text-center">
                        <a>Some text in the Modal Body</a>
                        <a>Some other text...</a>
                      </div>
                      <div class="modal-footer text-center">
                        <a>Modal Footer</a>
                      </div>
                    </div>
                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <div class="dropdowns">
                    <button class="dropbtn">Pending</button>
                    <div class="dropdowns-content">
                      <a href="#">Confirmed</a>
                      <a href="#">Processed</a>

                      <a href="#">Ready to Pickup</a>
                      <a href="#">Completed</a>
                    </div>
                  </div>
                </td>

              </tr>
              <tr class="cart__row border-bottom line1 cart-flex border-top">

                <td class="cart__meta text-right cart-flex-item">
                  <div class="list-view-item__title text-center">
                    <h1>#1564</h1>
                    <h6>22nd June 2022</h6>
                    <h6>4:00 PM</h6>
                  </div>
                </td>
                <td class="cart__price-wrapper cart-flex-item text-center">
                  <div class="list-view-item__title text-center">
                    <h3>Danial Bin Razif</h3>

                  </div>
                </td>
                <td class="cart__update-wrapper cart-flex-item text-right">
                  <div class="list-view-item__title text-center">

                    <h3>011-53758676</h3>

                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <h3 id="myBtn" class="text-center" style="text-decoration: underline; cursor: pointer;">View     <i class="fa fa-eye"></i></h3>

                  <!-- The Modal -->
                  <div id="myModal" class="modal">
                    <!-- Modal content -->
                    <div class="modal-content">
                      <div class="modal-header text-center">
                        <span class="close">&times;</span>

                      </div>

                      <div class="modal-body text-center">
                        <a>Some text in the Modal Body</a>
                        <a>Some other text...</a>
                      </div>
                      <div class="modal-footer text-center">
                        <a>Modal Footer</a>
                      </div>
                    </div>
                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <div class="dropdowns">
                    <button class="dropbtn">Pending</button>
                    <div class="dropdowns-content">
                      <a href="#">Confirmed</a>
                      <a href="#">Processed</a>

                      <a href="#">Ready to Pickup</a>
                      <a href="#">Completed</a>
                    </div>
                  </div>
                </td>

              </tr>
              </tbody>

            </table>
            <hr>
          </form>
        </div>
      </div>
    </div>

  </div>
  <!--End Body Content-->

  <!--Footer-->
  <footer id="footer">
    <div class="newsletter-section">
      <div class="container">
        <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-7 w-100 d-flex justify-content-start align-items-center">
            <div class="display-table">
              <div class="display-table-cell footer-newsletter">
                <div class="section-header text-center">
                  <label class="h2"><span>sign up for </span>newsletter</label>
                </div>
                <form action="#" method="post">
                  <div class="input-group">
                    <input type="email" class="input-group__field newsletter__input" name="EMAIL" value="" placeholder="Email address" required="">
                    <span class="input-group__btn">
                                                <button type="submit" class="btn newsletter__submit" name="commit" id="Subscribe"><span class="newsletter__submit-text--large">Subscribe</span></button>
                                            </span>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-5 d-flex justify-content-end align-items-center">
            <div class="footer-social">
              <ul class="list--inline site-footer__social-icons social-icons">
                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Facebook"><i class="icon icon-facebook"></i></a></li>
                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Twitter"><i class="icon icon-twitter"></i> <span class="icon__fallback-text">Twitter</span></a></li>
                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Pinterest"><i class="icon icon-pinterest"></i> <span class="icon__fallback-text">Pinterest</span></a></li>
                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Instagram"><i class="icon icon-instagram"></i> <span class="icon__fallback-text">Instagram</span></a></li>
                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Tumblr"><i class="icon icon-tumblr-alt"></i> <span class="icon__fallback-text">Tumblr</span></a></li>
                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on YouTube"><i class="icon icon-youtube"></i> <span class="icon__fallback-text">YouTube</span></a></li>
                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Vimeo"><i class="icon icon-vimeo-alt"></i> <span class="icon__fallback-text">Vimeo</span></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="site-footer">
      <div class="container">
        <!--Footer Links-->
        <div class="footer-top">
          <div class="row">
            <div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
              <h4 class="h4">Quick Shop</h4>
              <ul>
                <li><a href="#">Women</a></li>
                <li><a href="#">Men</a></li>
                <li><a href="#">Kids</a></li>
                <li><a href="#">Sportswear</a></li>
                <li><a href="#">Sale</a></li>
              </ul>
            </div>
            <div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
              <h4 class="h4">Informations</h4>
              <ul>
                <li><a href="#">About us</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Privacy policy</a></li>
                <li><a href="#">Terms &amp; condition</a></li>
                <li><a href="#">My Account</a></li>
              </ul>
            </div>
            <div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
              <h4 class="h4">Customer Services</h4>
              <ul>
                <li><a href="#">Request Personal Data</a></li>
                <li><a href="#">FAQ's</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Orders and Returns</a></li>
                <li><a href="#">Support Center</a></li>
              </ul>
            </div>
            <div class="col-12 col-sm-12 col-md-3 col-lg-3 contact-box">
              <h4 class="h4">Contact Us</h4>
              <ul class="addressFooter">
                <li><i class="icon anm anm-map-marker-al"></i><p>55 Gallaxy Enque,<br>2568 steet, 23568 NY</p></li>
                <li class="phone"><i class="icon anm anm-phone-s"></i><p>(440) 000 000 0000</p></li>
                <li class="email"><i class="icon anm anm-envelope-l"></i><p>sales@yousite.com</p></li>
              </ul>
            </div>
          </div>
        </div>
        <!--End Footer Links-->
        <hr>
        <div class="footer-bottom">
          <div class="row">
            <!--Footer Copyright-->
            <div class="col-12 col-sm-12 col-md-6 col-lg-6 order-1 order-md-0 order-lg-0 order-sm-1 copyright text-sm-center text-md-left text-lg-left"><span></span> <a href="templateshub.net">Templates Hub</a></div>
            <!--End Footer Copyright-->
            <!--Footer Payment Icon-->
            <div class="col-12 col-sm-12 col-md-6 col-lg-6 order-0 order-md-1 order-lg-1 order-sm-0 payment-icons text-right text-md-center">
              <ul class="payment-icons list--inline">
                <li><i class="icon fa fa-cc-visa" aria-hidden="true"></i></li>
                <li><i class="icon fa fa-cc-mastercard" aria-hidden="true"></i></li>
                <li><i class="icon fa fa-cc-discover" aria-hidden="true"></i></li>
                <li><i class="icon fa fa-cc-paypal" aria-hidden="true"></i></li>
                <li><i class="icon fa fa-cc-amex" aria-hidden="true"></i></li>
                <li><i class="icon fa fa-credit-card" aria-hidden="true"></i></li>
              </ul>
            </div>
            <!--End Footer Payment Icon-->
          </div>
        </div>
      </div>
    </div>

    <!-- The Modal -->
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
<script>
  var modal = document.getElementById("myModal");

  // Get the button that opens the modal
  var btn = document.getElementById("myBtn");

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];

  // When the user clicks the button, open the modal
  btn.onclick = function() {
    modal.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
    modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
</script>
</body>
<!-- belle/cart-variant2.html   11 Nov 2019 12:44:32 GMT -->
</html>