<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/about-us.html   11 Nov 2019 12:44:33 GMT -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>About Us &ndash; e-Medan Food Ordering System</title>
  <meta name="description" content="description">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/e-favicon.svg" />
  <!-- Plugins CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins.css">
  <!-- Bootstap CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
  <!-- Main Style CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css">
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
          <div class="text-center"><p class="top-header_middle-text"> e-Medan Food Ordering System</p></div>
        </div>
        <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
          <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
          <ul class="customer-links list-inline">
            <li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
            <li><a href="${pageContext.request.contextPath}/register.jsp">Register Account</a></li>
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
          <a href="${pageContext.request.contextPath}/student/homepagestudent.jsp">
            <img src="${pageContext.request.contextPath}/assets/images/e-Medan.svg" alt="Belle Multipurpose Html Template" title="Belle Multipurpose Html Template" />
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
              <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/student/homepagestudent.jsp">Home <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/about-us-notlogin.jsp">About <i class="anm anm-angle-down-l"></i></a></li>
              <li class="lvl1 parent dropdown"><a href="menupagestudent.html">Menu <i class="anm anm-angle-down-l"></i></a>
              <li class="lvl1 parent dropdown"><a href="${pageContext.request.contextPath}/student/studentProfile.jsp"> Account <i class="anm anm-angle-down-l"></i></a>
              </li>
              </li>
            </ul>
          </nav>
          <!--End Desktop Menu-->
        </div>
        <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
          <div class="logo">
            <a href="${pageContext.request.contextPath}/student/homepagestudent.jsp">
              <img src="${pageContext.request.contextPath}/assets/images/logo.svg" alt="Belle Multipurpose Html Template" title="Belle Multipurpose Html Template" />
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
                    <img src="${pageContext.request.contextPath}/assets/images/product-images/cape-dress-1.jpg" alt="3/4 Sleeve Kimono Dress" title="" />
                  </a>
                  <div class="product-details">
                    <a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                    <a href="#" class="edit-i remove"><i class="anm anm-edit" aria-hidden="true"></i></a>
                    <a class="pName" href="${pageContext.request.contextPath}/student/cart.jsp">Sleeve Kimono Dress</a>
                    <div class="variant-cart">Black / XL</div>
                    <div class="wrapQtyBtn">
                      <div class="qtyField">
                        <span class="label">Qty:</span>
                        <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                        <input type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty">
                        <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                      </div>
                    </div>
                    <div class="priceRow">
                      <div class="product-price">
                        <span class="money">$59.00</span>
                      </div>
                    </div>
                  </div>
                </li>
                <li class="item">
                  <a class="product-image" href="#">
                    <img src="${pageContext.request.contextPath}/assets/images/product-images/cape-dress-2.jpg" alt="Elastic Waist Dress - Black / Small" title="" />
                  </a>
                  <div class="product-details">
                    <a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                    <a href="#" class="edit-i remove"><i class="anm anm-edit" aria-hidden="true"></i></a>
                    <a class="pName" href="cart.html">Elastic Waist Dress</a>
                    <div class="variant-cart">Gray / XXL</div>
                    <div class="wrapQtyBtn">
                      <div class="qtyField">
                        <span class="label">Qty:</span>
                        <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                        <input type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty">
                        <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                      </div>
                    </div>
                    <div class="priceRow">
                      <div class="product-price">
                        <span class="money">$99.00</span>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
              <div class="total">
                <div class="total-in">
                  <span class="label">Cart Subtotal:</span><span class="product-price"><span class="money">$748.00</span></span>
                </div>
                <div class="buttonSet text-center">
                  <a href="${pageContext.request.contextPath}/student/cart.jsp" class="btn btn-secondary btn--small">View Cart</a>
                  <a href="checkout.html" class="btn btn-secondary btn--small">Checkout</a>
                </div>
              </div>
            </div>
            <!--End Minicart Popup-->
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--End Header-->
  <!--Mobile Menu-->
  <div class="mobile-nav-wrapper" role="navigation">
    <div class="closemobileMenu"><i class="icon anm anm-times-l pull-right"></i> Close Menu</div>
    <ul id="MobileNav" class="mobile-nav">
      <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/index.jsp">Home <i class="anm anm-plus-l"></i></a>
        <ul>
          <li><a href="#" class="site-nav">Home Group 1<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="index.html" class="site-nav">Home 1 - Classic</a></li>
              <li><a href="home2-default.html" class="site-nav">Home 2 - Default</a></li>
              <li><a href="home15-funiture.html" class="site-nav">Home 15 - Furniture </a></li>
              <li><a href="home3-boxed.html" class="site-nav">Home 3 - Boxed</a></li>
              <li><a href="home4-fullwidth.html" class="site-nav">Home 4 - Fullwidth</a></li>
              <li><a href="home5-cosmetic.html" class="site-nav">Home 5 - Cosmetic</a></li>
              <li><a href="home6-modern.html" class="site-nav">Home 6 - Modern</a></li>
              <li><a href="home7-shoes.html" class="site-nav last">Home 7 - Shoes</a></li>
            </ul>
          </li>
          <li><a href="#" class="site-nav">Home Group 2<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="home8-jewellery.html" class="site-nav">Home 8 - Jewellery</a></li>
              <li><a href="home9-parallax.html" class="site-nav">Home 9 - Parallax</a></li>
              <li><a href="home10-minimal.html" class="site-nav">Home 10 - Minimal</a></li>
              <li><a href="home11-grid.html" class="site-nav">Home 11 - Grid</a></li>
              <li><a href="home12-category.html" class="site-nav">Home 12 - Category</a></li>
              <li><a href="home13-auto-parts.html" class="site-nav">Home 13 - Auto Parts</a></li>
              <li><a href="home14-bags.html" class="site-nav last">Home 14 - Bags</a></li>
            </ul>
          </li>
          <li><a href="#" class="site-nav">New Sections<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="home11-grid.html" class="site-nav">Image Gallery</a></li>
              <li><a href="home5-cosmetic.html" class="site-nav">Featured Product</a></li>
              <li><a href="home7-shoes.html" class="site-nav">Columns with Items</a></li>
              <li><a href="home6-modern.html" class="site-nav">Text columns with images</a></li>
              <li><a href="home2-default.html" class="site-nav">Products Carousel</a></li>
              <li><a href="home9-parallax.html" class="site-nav last">Parallax Banner</a></li>
            </ul>
          </li>
          <li><a href="#" class="site-nav">New Features<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="home13-auto-parts.html" class="site-nav">Top Information Bar </a></li>
              <li><a href="#" class="site-nav">Age Varification </a></li>
              <li><a href="#" class="site-nav">Footer Blocks</a></li>
              <li><a href="#" class="site-nav">2 New Megamenu style</a></li>
              <li><a href="#" class="site-nav">Show Total Savings </a></li>
              <li><a href="#" class="site-nav">New Custom Icons</a></li>
              <li><a href="#" class="site-nav last">Auto Currency</a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li class="lvl1 parent megamenu"><a href="#">Shop <i class="anm anm-plus-l"></i></a>
        <ul>
          <li><a href="#" class="site-nav">Shop Pages<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="shop-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
              <li><a href="shop-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
              <li><a href="shop-fullwidth.html" class="site-nav">Fullwidth</a></li>
              <li><a href="shop-grid-3.html" class="site-nav">3 items per row</a></li>
              <li><a href="shop-grid-4.html" class="site-nav">4 items per row</a></li>
              <li><a href="shop-grid-5.html" class="site-nav">5 items per row</a></li>
              <li><a href="shop-grid-6.html" class="site-nav">6 items per row</a></li>
              <li><a href="shop-grid-7.html" class="site-nav">7 items per row</a></li>
              <li><a href="shop-listview.html" class="site-nav last">Product Listview</a></li>
            </ul>
          </li>
          <li><a href="#" class="site-nav">Shop Features<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="shop-left-sidebar.html" class="site-nav">Product Countdown </a></li>
              <li><a href="shop-right-sidebar.html" class="site-nav">Infinite Scrolling</a></li>

              <li><a href="shop-grid-3.html" class="site-nav">Pagination - Classic</a></li>
              <li><a href="shop-grid-6.html" class="site-nav">Pagination - Load More</a></li>
              <li><a href="product-labels.html" class="site-nav">Dynamic Product Labels</a></li>
              <li><a href="product-swatches-style.html" class="site-nav">Product Swatches </a></li>
              <li><a href="product-hover-info.html" class="site-nav">Product Hover Info</a></li>
              <li><a href="shop-grid-3.html" class="site-nav">Product Reviews</a></li>
              <li><a href="shop-left-sidebar.html" class="site-nav last">Discount Label </a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li class="lvl1 parent megamenu"><a href="product-layout-1.html">Product <i class="anm anm-plus-l"></i></a>
        <ul>
          <li><a href="product-layout-1.html" class="site-nav">Product Page<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="product-layout-1.html" class="site-nav">Product Layout 1</a></li>
              <li><a href="product-layout-2.html" class="site-nav">Product Layout 2</a></li>
              <li><a href="product-layout-3.html" class="site-nav">Product Layout 3</a></li>
              <li><a href="product-with-left-thumbs.html" class="site-nav">Product With Left Thumbs</a></li>
              <li><a href="product-with-right-thumbs.html" class="site-nav">Product With Right Thumbs</a></li>
              <li><a href="product-with-bottom-thumbs.html" class="site-nav last">Product With Bottom Thumbs</a></li>
            </ul>
          </li>
          <li><a href="short-description.html" class="site-nav">Product Features<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="short-description.html" class="site-nav">Short Description</a></li>
              <li><a href="product-countdown.html" class="site-nav">Product Countdown</a></li>
              <li><a href="product-video.html" class="site-nav">Product Video</a></li>
              <li><a href="product-quantity-message.html" class="site-nav">Product Quantity Message</a></li>
              <li><a href="product-visitor-sold-count.html" class="site-nav">Product Visitor/Sold Count </a></li>
              <li><a href="product-zoom-lightbox.html" class="site-nav last">Product Zoom/Lightbox </a></li>
            </ul>
          </li>
          <li><a href="#" class="site-nav">Product Features<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="product-with-variant-image.html" class="site-nav">Product with Variant Image</a></li>
              <li><a href="product-with-color-swatch.html" class="site-nav">Product with Color Swatch</a></li>
              <li><a href="product-with-image-swatch.html" class="site-nav">Product with Image Swatch</a></li>
              <li><a href="product-with-dropdown.html" class="site-nav">Product with Dropdown</a></li>
              <li><a href="product-with-rounded-square.html" class="site-nav">Product with Rounded Square</a></li>
              <li><a href="swatches-style.html" class="site-nav last">Product Swatches All Style</a></li>
            </ul>
          </li>
          <li><a href="#" class="site-nav">Product Features<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="product-accordion.html" class="site-nav">Product Accordion</a></li>
              <li><a href="product-pre-orders.html" class="site-nav">Product Pre-orders </a></li>
              <li><a href="product-labels-detail.html" class="site-nav">Product Labels</a></li>
              <li><a href="product-discount.html" class="site-nav">Product Discount In %</a></li>
              <li><a href="product-shipping-message.html" class="site-nav">Product Shipping Message</a></li>
              <li><a href="product-shipping-message.html" class="site-nav last">Size Guide </a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li class="lvl1 parent megamenu"><a href="about-us.html">Pages <i class="anm anm-plus-l"></i></a>
        <ul>
          <li><a href="cart-variant1.html" class="site-nav">Cart Page <i class="anm anm-plus-l"></i></a>
            <ul class="dropdown">
              <li><a href="cart-variant1.html" class="site-nav">Cart Variant1</a></li>
              <li><a href="cart-variant2.html" class="site-nav">Cart Variant2</a></li>
            </ul>
          </li>
          <li><a href="compare-variant1.html" class="site-nav">Compare Product <i class="anm anm-plus-l"></i></a>
            <ul class="dropdown">
              <li><a href="compare-variant1.html" class="site-nav">Compare Variant1</a></li>
              <li><a href="compare-variant2.html" class="site-nav">Compare Variant2</a></li>
            </ul>
          </li>
          <li><a href="checkout.html" class="site-nav">Checkout</a></li>
          <li><a href="about-us.html" class="site-nav">About Us<span class="lbl nm_label1">New</span></a></li>
          <li><a href="contact-us.html" class="site-nav">Contact Us</a></li>
          <li><a href="faqs.html" class="site-nav">FAQs</a></li>
          <li><a href="lookbook1.html" class="site-nav">Lookbook<i class="anm anm-plus-l"></i></a>
            <ul>
              <li><a href="lookbook1.html" class="site-nav">Style 1</a></li>
              <li><a href="lookbook2.html" class="site-nav last">Style 2</a></li>
            </ul>
          </li>
          <li><a href="404.html" class="site-nav">404</a></li>
          <li><a href="coming-soon.html" class="site-nav">Coming soon<span class="lbl nm_label1">New</span></a></li>
        </ul>
      </li>
      <li class="lvl1 parent megamenu"><a href="blog-left-sidebar.html">Blog <i class="anm anm-plus-l"></i></a>
        <ul>
          <li><a href="blog-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
          <li><a href="blog-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
          <li><a href="blog-fullwidth.html" class="site-nav">Fullwidth</a></li>
          <li><a href="blog-grid-view.html" class="site-nav">Gridview</a></li>
          <li><a href="blog-article.html" class="site-nav">Article</a></li>
        </ul>
      </li>
      <li class="lvl1"><a href="#"><b>Buy Now!</b></a>
      </li>
    </ul>
  </div>
  <!--End Mobile Menu-->

  <!--Body Content-->
  <div id="page-content">
    <!--Page Title-->
    <div class="page section-header text-center">
      <div class="page-title">
        <div class="wrapper"><h1 class="page-width">About Us</h1></div>
      </div>
    </div>
    <!--End Page Title-->

    <div class="container">
      <div class="row">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
          <div class="text-center mb-4">
            <h2 class="h2">e-Medan Food Ordering System</h2>
            <div class="rte-setting">
              <p><strong>“We prepare and serve high quality, simple food, at a great value, in a home-like environment.”</strong></p>
              <p>Life’s too short for boring food, let's play with your food!</p>
              <p>See you tomorrow!</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-12 col-sm-4 col-md-4 col-lg-4 mb-4"><img class="blur-up lazyload" data-src="${pageContext.request.contextPath}/assets/images/burger.jpg" src="assets/images/burger.jpg" alt="About Us" /></div>
        <div class="col-12 col-sm-4 col-md-4 col-lg-4 mb-4"><img class="blur-up lazyload" data-src="${pageContext.request.contextPath}/assets/images/nasi ayam.jpg" src="assets/images/nasi ayam.jpg" alt="About Us" /></div>
        <div class="col-12 col-sm-4 col-md-4 col-lg-4 mb-4"><img class="blur-up lazyload" data-src="${pageContext.request.contextPath}/assets/images/nasi goreng pataya.jpg" src="assets/images/nasi goreng pataya.jpg" alt="About Us" /></div>
      </div>
      <div class="row">
        <div class="col-12">
          <h2>Know More About UITM Campus Jasin!!</h2>
          <p>UiTM Kampus Jasin is one of the Melaka branches of Universiti Teknologi MARA (UiTM). It is
            the third campus established in Melaka, giving each of Melaka's three districts its own UiTM
            campus: Melaka Tengah district (Kampus Bandar Raya), Alor Gajah district (Kampus Lendu)
            and Jasin district (Kampus Jasin). The groundbreaking ceremony for the UiTM Kampus Jasin
            was held on February 19, 2011 and was officiated by Datuk Seri Najib bin Razak. The campus
            hosts two faculties namely Faculty of Computer Science and Mathematics and Faculty of
            Plantation and Agrotechnology.</p>
          <p></p>
        </div>
      </div>

      <div class="row">
        <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-4">
          <h2 class="h2">About Medan Selera UiTM Campus Jasin</h2>
          <div class="rte-setting"><p><strong>In UiTM Kampus Jasin, there are three cafeterias located throughout the campus in which students can enjoy a variety of foods served by each of the cafeteria. One of the cafeteria is</strong></p>
            <p>One of the cafeteria is Medan Selera, a college cafeteria that was built specifically for students staying in college and it
              is also open for the non-residents. Medan Selera currently has 10 stalls, each of which serves a
              wide selection of foods and beverages for breakfast, lunch and dinner. The college cafeteria is
              managed by Unit Pengurusan Kolej (UPK). This department is responsible for assisting
              students' welfare as well as providing facilities to students such as the college cafeteria. One of
              the units under UPK is Jawatankuasa Unit Ruang Niaga (JKRN). The secretary of JKRN, Encik
              Muazmer bin Mustapa is the one in charge of renting out business spaces to vendors in the
              college area.</p>
            <p></p>
          </div>
        </div>
        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
          <h2 class="h2">Contact Us</h2>
          <ul class="addressFooter">
            <li><i class="icon anm anm-map-marker-al"></i><p>Universiti Teknologi MARA (UiTM), Cawangan Melaka Kampus Jasin, 77300 Merlimau, Melaka MALAYSIA</p></li>
            <li class="phone"><i class="icon anm anm-phone-s"></i><p>(+606) 264 5000</p></li>
            <li class="email"><i class="icon anm anm-envelope-l"></i><p>korporatmelaka@uitm.edu.my</p></li>
          </ul>
          <hr />
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
  <!--End Body Content-->


  <!--Scoll Top-->
  <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
  <!--End Scoll Top-->

  <!-- Including Jquery -->
  <script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-3.3.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.cookie.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-3.6.0.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/vendor/wow.min.js"></script>
  <!-- Including Javascript -->
  <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/lazysizes.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</div>
</body>

<!-- belle/about-us.html   11 Nov 2019 12:44:39 GMT -->
</html>
