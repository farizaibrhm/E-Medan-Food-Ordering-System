<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/cart.html   11 Nov 2019 12:47:01 GMT -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Your cart &ndash; e-Medan Food Ordering System</title>
  <meta name="description" content="description">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/e-favicon.svg" />
  <!-- Plugins CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/plugins.css">
  <!-- Bootstap CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
  <!-- Main Style CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css">
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
        </div>
        <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
          <div class="text-center"><p class="top-header_middle-text">Welcome to e-Medan Food Ordering System!</p></div>
        </div>
        <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
          <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
          <ul class="customer-links list-inline">
            <li><a href="../login.html">Login</a></li>
            <li><a href="../register.html">Create Account</a></li>
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
          <a href="<%=request.getContextPath()%>/student/homepagestudent.jsp">
            <img src="<%=request.getContextPath()%>/assets/images/e-Medan.svg" alt="e-Medan Food Ordering System" title="e-Medan Food Ordering System" />
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
              <li class="lvl1 parent megamenu"><a href="<%=request.getContextPath()%>/student/homepagestudent.jsp">Home <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="<%=request.getContextPath()%>/student/about-us-student.jsp">About <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent dropdown"><a href="../menuPage.html">Menu <i class="anm anm-angle-down-l"></i></a>
                <ul class="dropdown">
                  <li><a href="checkout.html" class="site-nav">Food</a></li>
                  <li><a href="<%=request.getContextPath()%>/student/about-us-student.jsp" class="site-nav">Beverages <span class="lbl nm_label1">New</span> </a></li>
                </ul>
              </li>
              </li>
            </ul>
          </nav>
          <!--End Desktop Menu-->
        </div>
        <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
          <div class="logo">
            <a href="<%=request.getContextPath()%>/student/homepagestudent.jsp">
              <img src="<%=request.getContextPath()%>/assets/images/logo.svg" alt="Belle Multipurpose Html Template" title="Belle Multipurpose Html Template" />
            </a>
          </div>
        </div>
        <div class="col-4 col-sm-3 col-md-3 col-lg-2">
          <div class="site-cart">
            <a href="#" class="site-header__cart" title="Cart">
              <i class="icon anm anm-bag-l"></i>
              <span id="CartCount" class="site-header__cart-count" data-cart-render="item_count">2</span>
            </a>
            <!--Minicart Popup-->
            <div id="header-cart" class="block block-cart">
              <ul class="mini-products-list">
                <li class="item">
                  <a class="product-image" href="#">
                    <img src="<%=request.getContextPath()%>/assets/images/product-images/burger-3.jpg" alt="Burger Daging Supreme" title="" />
                  </a>
                  <div class="product-details">
                    <a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                    <a class="pName"  href="#">"Burger Daging Supreme</a>
                    <div class="priceRow">
                      <div class="product-price">
                        <span class="money">RM 12.00</span></div> <span class="prodMulti">X</span><div class="qtyField"><span>1</span></div>
                    </div>
                  </div>
                </li>
                <li class="item">
                  <a class="product-image" href="#">
                    <img src="<%=request.getContextPath()%>/assets/images/product-images/drink-1.jpg" alt="Oren Jus" title="" />
                  </a>
                  <div class="product-details">
                    <a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                    <a class="pName"  href="#">Oren Jus</a>
                    <div class="priceRow">
                      <div class="product-price">
                        <span class="money">RM 6.00</span></div> <span class="prodMulti">X</span><div class="qtyField"><span>1</span></div>
                    </div>
                  </div>
                </li>
                <li class="item">
                  <a class="product-image" href="#">
                    <img src="<%=request.getContextPath()%>/assets/images/product-images/pizza-2.jpg" alt="Chicken Cheeza" title="" />
                  </a>
                  <div class="product-details">
                    <a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                    <a class="pName"  href="#">Chicken Cheeza</a>
                    <div class="priceRow">
                      <div class="product-price">
                        <span class="money">RM 6.00</span></div> <span class="prodMulti">X</span><div class="qtyField"><span>1</span></div>
                    </div>
                  </div>
                </li>
              </ul>
              <div class="total">
                <div class="total-in">
                  <label>Total:</label><span class="product-price"><span class="money">RM 24.00</span></span>
                </div>
                <div class="buttonSet text-center">
                  <a id="inlinecheckout-cart" href="cart.html" class="btn btn-secondary btn--small">view Cart</a>
                  <a href="checkout.html" class="btn btn-secondary btn--small">Checkout</a>
                </div>
              </div>
            </div>
            <!--End Minicart Popup-->
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
        <div class="wrapper"><h1 class="page-width">Your cart</h1></div>
      </div>
    </div>
    <!--End Page Title-->

    <div class="container">
      <div class="row">
        <div class="col-12 col-sm-12 col-md-8 col-lg-8 main-col">
          <form action="#" method="post" class="cart style2">
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
              <tr class="cart__row border-bottom line1 cart-flex border-top">
                <td class="cart__image-wrapper cart-flex-item">
                  <a href="#"><img class="cart__image" src="../assets/images/product-images/burger-3.jpg" alt="Burger Daging Supreme"></a>
                </td>
                <td class="cart__meta small--text-left cart-flex-item">
                  <div class="list-view-item__title">
                    <a href="#">Burger Daging Supreme</a>
                  </div>

                  <div class="cart__meta-text">
                    <!-- Color: Navy<br>Size: Small<br> -->
                  </div>
                </td>
                <td class="cart__price-wrapper cart-flex-item">
                  <span class="money">RM 12.00</span>
                </td>
                <td class="cart__update-wrapper cart-flex-item text-right">
                  <div class="cart__qty text-center">
                    <div class="qtyField">
                      <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                      <input class="cart__qty-input qty" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*">
                      <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a>
                    </div>
                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <div><span class="money">RM 12.00</span></div>
                </td>
                <td class="text-center small--hide"><a href="#" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon icon anm anm-times-l"></i></a></td>
              </tr>
              <tr class="cart__row border-bottom line1 cart-flex border-top">
                <td class="cart__image-wrapper cart-flex-item">
                  <a href="#"><img class="cart__image" src="../assets/images/product-images/drink-1.jpg" alt="Oren Jus"></a>
                </td>
                <td class="cart__meta small--text-left cart-flex-item">
                  <div class="list-view-item__title">
                    <a href="#">Oren Jus</a>
                  </div>
                </td>
                <td class="cart__price-wrapper cart-flex-item">
                  <span class="money">RM 6.00</span>
                </td>
                <td class="cart__update-wrapper cart-flex-item text-right">
                  <div class="cart__qty text-center">
                    <div class="qtyField">
                      <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                      <input class="cart__qty-input qty" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*">
                      <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a>
                    </div>
                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <div><span class="money">RM 6.00</span></div>
                </td>
                <td class="text-center small--hide"><a href="#" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon icon anm anm-times-l"></i></a></td>
              </tr>
              <tr class="cart__row border-bottom line1 cart-flex border-top">
                <td class="cart__image-wrapper cart-flex-item">
                  <a href="#"><img class="cart__image" src="../assets/images/product-images/pizza-2.jpg" alt="Chicken Cheeza"></a>
                </td>
                <td class="cart__meta small--text-left cart-flex-item">
                  <div class="list-view-item__title">
                    <a href="#">Chicken Cheeza</a>
                  </div>
                </td>
                <td class="cart__price-wrapper cart-flex-item">
                  <span class="money">RM 6.00</span>
                </td>
                <td class="cart__update-wrapper cart-flex-item text-right">
                  <div class="cart__qty text-center">
                    <div class="qtyField">
                      <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                      <input class="cart__qty-input qty" type="text" name="updates[]" id="qty" value="1" pattern="[0-9]*">
                      <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a>
                    </div>
                  </div>
                </td>
                <td class="text-right small--hide cart-price">
                  <div><span class="money">RM 6.00</span></div>
                </td>
                <td class="text-center small--hide"><a href="#" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon icon anm anm-times-l"></i></a></td>
              </tr>
              </tbody>
              <tfoot>
              <tr>
                <td colspan="3" class="text-left"><a href="http://annimexweb.com/" class="btn--link cart-continue"><i class="icon icon-arrow-circle-left"></i> Continue shopping</a></td>
                <td colspan="3" class="text-right"><button type="submit" name="update" class="btn--link cart-update"><i class="fa fa-refresh"></i> Update</button></td>
              </tr>
              </tfoot>
            </table>
          </form>
        </div>

        <div class="col-12 col-sm-12 col-md-4 col-lg-4 cart__footer">
          <div class="solid-border">
            <div class="row border-bottom pb-2">
              <span class="col-12 col-sm-6 cart__subtotal-title">Subtotal</span>
              <span class="col-12 col-sm-6 text-right"><span class="money">RM 24.00</span></span>
            </div>
            <div class="row border-bottom pb-2 pt-2">
              <span class="col-12 col-sm-6 cart__subtotal-title">Tax</span>
              <span class="col-12 col-sm-6 text-right">RM 0.36</span>
            </div>
            <div class="row border-bottom pb-2 pt-2">
              <span class="col-12 col-sm-6 cart__subtotal-title">Shipping</span>
              <span class="col-12 col-sm-6 text-right">Free shipping</span>
            </div>
            <div class="row border-bottom pb-2 pt-2">
              <span class="col-12 col-sm-6 cart__subtotal-title"><strong>Grand Total</strong></span>
              <span class="col-12 col-sm-6 cart__subtotal-title cart__subtotal text-right"><span class="money">RM 24.36</span></span>
            </div>
            <a href="checkout.html">
              <input type="submit" name="checkout" id="cartCheckout" class="btn btn--small-wide checkout" value="Proceed to Checkout">
            </a>
          </div>

        </div>
      </div>
    </div>

  </div>
  <!--End Body Content-->

  <!--Footer-->
  <footer id="footer">
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
  </footer>
  <!--End Footer-->
  <!--Scoll Top-->
  <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
  <!--End Scoll Top-->

  <!-- Including Jquery -->
  <script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-3.3.1.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/vendor/jquery.cookie.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr-3.6.0.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/vendor/wow.min.js"></script>
  <!-- Including Javascript -->
  <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/lazysizes.js"></script>
  <script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
</div>
</body>

<!-- belle/cart.html   11 Nov 2019 12:47:01 GMT -->
</html>
