<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/shop-listview.html   11 Nov 2019 12:41:02 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>CAFE MENU LIST</title>
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
<body class="template-collection belle">
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
                    <a href="<%=request.getContextPath()%>/cafe/homepagecw.jsp">
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
                            <li class="lvl1 parent megamenu"><a href="#">Home <i class="anm anm-angle-down-l"></i></a>
                                <div class="megamenu style1">
                                    <ul class="grid mmWrapper">
                                        <li class="grid__item large-up--one-whole">
                                            <ul class="grid">
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Home Group 1</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="../index.html" class="site-nav lvl-2">Home 1 - Classic</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Home 2 - Default</a></li>
                                                        <li class="lvl-2"><a href="../home15-funiture.html" class="site-nav lvl-2">Home 15 - Furniture <span class="lbl nm_label1">New</span></a></li>
                                                        <li class="lvl-2"><a href="../home3-boxed.html" class="site-nav lvl-2">Home 3 - Boxed</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Home 4 - Fullwidth</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Home 5 - Cosmetic</a></li>
                                                        <li class="lvl-2"><a href="../home6-modern.html" class="site-nav lvl-2">Home 6 - Modern</a></li>
                                                        <li class="lvl-2"><a href="../home7-shoes.html" class="site-nav lvl-2">Home 7 - Shoes</a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Home Group 2</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="../home8-jewellery.html" class="site-nav lvl-2">Home 8 - Jewellery</a></li>
                                                        <li class="lvl-2"><a href="../home9-parallax.html" class="site-nav lvl-2">Home 9 - Parallax</a></li>
                                                        <li class="lvl-2"><a href="../home10-minimal.html" class="site-nav lvl-2">Home 10 - Minimal</a></li>
                                                        <li class="lvl-2"><a href="../home11-grid.html" class="site-nav lvl-2">Home 11 - Grid</a></li>
                                                        <li class="lvl-2"><a href="../home12-category.html" class="site-nav lvl-2">Home 12 - Category</a></li>
                                                        <li class="lvl-2"><a href="../home13-auto-parts.html" class="site-nav lvl-2">Home 13 - Auto Parts</a></li>
                                                        <li class="lvl-2"><a href="../home14-bags.html" class="site-nav lvl-2">Home 14 - Bags <span class="lbl nm_label1">New</span></a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">New Sections</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="../home11-grid.html" class="site-nav lvl-2">Image Gallery</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Featured Product</a></li>
                                                        <li class="lvl-2"><a href="../home7-shoes.html" class="site-nav lvl-2">Columns with Items</a></li>
                                                        <li class="lvl-2"><a href="../home6-modern.html" class="site-nav lvl-2">Text columns with images</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Products Carousel</a></li>
                                                        <li class="lvl-2"><a href="../home9-parallax.html" class="site-nav lvl-2">Parallax Banner</a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">New Features</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="../home13-auto-parts.html" class="site-nav lvl-2">Top Information Bar <span class="lbl nm_label1">New</span></a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Age Varification <span class="lbl nm_label1">New</span></a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Footer Blocks</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">2 New Megamenu style</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Show Total Savings <span class="lbl nm_label3">Hot</span></a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">New Custom Icons</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Auto Currency</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="lvl1 parent megamenu"><a href="#">Shop <i class="anm anm-angle-down-l"></i></a>
                                <div class="megamenu style4">
                                    <ul class="grid grid--uniform mmWrapper">
                                        <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Shop Pages</a>
                                            <ul class="subLinks">
                                                <li class="lvl-2"><a href="../shop-left-sidebar.html" class="site-nav lvl-2">Left Sidebar</a></li>
                                                <li class="lvl-2"><a href="../shop-right-sidebar.html" class="site-nav lvl-2">Right Sidebar</a></li>
                                                <li class="lvl-2"><a href="../shop-fullwidth.html" class="site-nav lvl-2">Fullwidth</a></li>
                                                <li class="lvl-2"><a href="../shop-grid-3.html" class="site-nav lvl-2">3 items per row</a></li>
                                                <li class="lvl-2"><a href="../shop-grid-4.html" class="site-nav lvl-2">4 items per row</a></li>
                                                <li class="lvl-2"><a href="../shop-grid-5.html" class="site-nav lvl-2">5 items per row</a></li>
                                                <li class="lvl-2"><a href="../shop-grid-6.html" class="site-nav lvl-2">6 items per row</a></li>
                                                <li class="lvl-2"><a href="../shop-grid-7.html" class="site-nav lvl-2">7 items per row</a></li>
                                                <li class="lvl-2"><a href="#" class="site-nav lvl-2">Product Listview</a></li>
                                            </ul>
                                        </li>
                                        <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Shop Features</a>
                                            <ul class="subLinks">
                                                <li class="lvl-2"><a href="../shop-left-sidebar.html" class="site-nav lvl-2">Product Countdown <span class="lbl nm_label3">Hot</span></a></li>
                                                <li class="lvl-2"><a href="../shop-right-sidebar.html" class="site-nav lvl-2">Infinite Scrolling</a></li>
                                                <li class="lvl-2"><a href="../shop-grid-3.html" class="site-nav lvl-2">Pagination - Classic</a></li>
                                                <li class="lvl-2"><a href="../shop-grid-6.html" class="site-nav lvl-2">Pagination - Load More</a></li>
                                                <li class="lvl-2"><a href="#" class="site-nav lvl-2">Dynamic Product Labels</a></li>
                                                <li class="lvl-2"><a href="../product-swatches-style.html" class="site-nav lvl-2">Product Swatches <span class="lbl nm_label2">Sale</span></a></li>
                                                <li class="lvl-2"><a href="../product-hover-info.html" class="site-nav lvl-2">Product Hover Info</a></li>
                                                <li class="lvl-2"><a href="../shop-grid-3.html" class="site-nav lvl-2">Product Reviews</a></li>
                                                <li class="lvl-2"><a href="../shop-left-sidebar.html" class="site-nav lvl-2">Discount Label <span class="lbl nm_label1">New</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="grid__item lvl-1 col-md-6 col-lg-6">
                                            <a href="#"><img src="../assets/images/megamenu-bg1.jpg" alt="" title="" /></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="lvl1 parent megamenu"><a href="#">Product <i class="anm anm-angle-down-l"></i></a>
                                <div class="megamenu style2">
                                    <ul class="grid mmWrapper">
                                        <li class="grid__item one-whole">
                                            <ul class="grid">
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Product Page</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="../product-layout-1.html" class="site-nav lvl-2">Product Layout 1</a></li>
                                                        <li class="lvl-2"><a href="../product-layout-2.html" class="site-nav lvl-2">Product Layout 2</a></li>
                                                        <li class="lvl-2"><a href="#" class="site-nav lvl-2">Product Layout 3</a></li>
                                                        <li class="lvl-2"><a href="../product-with-left-thumbs.html" class="site-nav lvl-2">Product With Left Thumbs</a></li>
                                                        <li class="lvl-2"><a href="../product-with-right-thumbs.html" class="site-nav lvl-2">Product With Right Thumbs</a></li>
                                                        <li class="lvl-2"><a href="../product-with-bottom-thumbs.html" class="site-nav lvl-2">Product With Bottom Thumbs</a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Product Features</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="../short-description.html" class="site-nav lvl-2">Short Description</a></li>
                                                        <li class="lvl-2"><a href="../product-countdown.html" class="site-nav lvl-2">Product Countdown</a></li>
                                                        <li class="lvl-2"><a href="../product-video.html" class="site-nav lvl-2">Product Video</a></li>
                                                        <li class="lvl-2"><a href="../product-quantity-message.html" class="site-nav lvl-2">Product Quantity Message</a></li>
                                                        <li class="lvl-2"><a href="../product-visitor-sold-count.html" class="site-nav lvl-2">Product Visitor/Sold Count <span class="lbl nm_label3">Hot</span></a></li>
                                                        <li class="lvl-2"><a href="../product-zoom-lightbox.html" class="site-nav lvl-2">Product Zoom/Lightbox <span class="lbl nm_label1">New</span></a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Product Features</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="../product-with-variant-image.html" class="site-nav lvl-2">Product with Variant Image</a></li>
                                                        <li class="lvl-2"><a href="../product-with-color-swatch.html" class="site-nav lvl-2">Product with Color Swatch</a></li>
                                                        <li class="lvl-2"><a href="../product-with-image-swatch.html" class="site-nav lvl-2">Product with Image Swatch</a></li>
                                                        <li class="lvl-2"><a href="../product-with-dropdown.html" class="site-nav lvl-2">Product with Dropdown</a></li>
                                                        <li class="lvl-2"><a href="../product-with-rounded-square.html" class="site-nav lvl-2">Product with Rounded Square</a></li>
                                                        <li class="lvl-2"><a href="../swatches-style.html" class="site-nav lvl-2">Product Swatches All Style</a></li>
                                                    </ul>
                                                </li>
                                                <li class="grid__item lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1">Product Features</a>
                                                    <ul class="subLinks">
                                                        <li class="lvl-2"><a href="../product-accordion.html" class="site-nav lvl-2">Product Accordion</a></li>
                                                        <li class="lvl-2"><a href="../product-pre-orders.html" class="site-nav lvl-2">Product Pre-orders <span class="lbl nm_label1">New</span></a></li>
                                                        <li class="lvl-2"><a href="../product-labels-detail.html" class="site-nav lvl-2">Product Labels</a></li>
                                                        <li class="lvl-2"><a href="../product-discount.html" class="site-nav lvl-2">Product Discount In %</a></li>
                                                        <li class="lvl-2"><a href="../product-shipping-message.html" class="site-nav lvl-2">Product Shipping Message</a></li>
                                                        <li class="lvl-2"><a href="../size-guide.html" class="site-nav lvl-2">Size Guide <span class="lbl nm_label1">New</span></a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="grid__item large-up--one-whole imageCol"><a href="#"><img src="../assets/images/megamenu-bg2.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="lvl1 parent dropdown"><a href="#">Pages <i class="anm anm-angle-down-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="../cart-variant1.html" class="site-nav">Cart Page <i class="anm anm-angle-right-l"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="../cart-variant1.html" class="site-nav">Cart Variant1</a></li>
                                            <li><a href="../cart-variant2.html" class="site-nav">Cart Variant2</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="../compare-variant1.html" class="site-nav">Compare Product <i class="anm anm-angle-right-l"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="../compare-variant1.html" class="site-nav">Compare Variant1</a></li>
                                            <li><a href="../compare-variant2.html" class="site-nav">Compare Variant2</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="../checkout.html" class="site-nav">Checkout</a></li>
                                    <li><a href="../about-us.html" class="site-nav">About Us <span class="lbl nm_label1">New</span> </a></li>
                                    <li><a href="../contact-us.html" class="site-nav">Contact Us</a></li>
                                    <li><a href="../faqs.html" class="site-nav">FAQs</a></li>
                                    <li><a href="../lookbook1.html" class="site-nav">Lookbook<i class="anm anm-angle-right-l"></i></a>
                                        <ul>
                                            <li><a href="../lookbook1.html" class="site-nav">Style 1</a></li>
                                            <li><a href="../lookbook2.html" class="site-nav">Style 2</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="../404.html" class="site-nav">404</a></li>
                                    <li><a href="../coming-soon.html" class="site-nav">Coming soon <span class="lbl nm_label1">New</span> </a></li>
                                </ul>
                            </li>
                            <li class="lvl1 parent dropdown"><a href="#">Blog <i class="anm anm-angle-down-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="../blog-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                                    <li><a href="../blog-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                                    <li><a href="../blog-fullwidth.html" class="site-nav">Fullwidth</a></li>
                                    <li><a href="../blog-grid-view.html" class="site-nav">Gridview</a></li>
                                    <li><a href="#" class="site-nav">Article</a></li>
                                </ul>
                            </li>
                            <li class="lvl1"><a href="#"><b>Buy Now!</b> <i class="anm anm-angle-down-l"></i></a></li>
                        </ul>
                    </nav>
                    <!--End Desktop Menu-->
                </div>
                <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
                    <div class="logo">
                        <a href="<%=request.getContextPath()%>/cafe/homepagecw.jsp">
                            <img src="<%=request.getContextPath()%>/assets/images/logo.svg" alt="Belle Multipurpose Html Template" title="Belle Multipurpose Html Template" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Header-->

    <!--Body Content-->
    <div id="page-content">
        <!--Collection Banner-->
        <div class="collection-header">
            <div class="collection-hero">
                <div class="collection-hero__image"><img src="${pageContext.request.contextPath}/assets/images/bg1.jpg" height="500" width="620" alt="Menu" title="Menu" /></div>
                <div class="collection-hero__title-wrapper"><h1 class="collection-hero__title page-width">MENU LIST</h1></div>
            </div>
        </div>
        <!--End Collection Banner-->

        <h1 style="text-align: center">GERAI C</h1> <br><br>
        <a  href="AddMenu.html" class="button"  style="color: black;">ADD MENU </a>



        <br><br><br><br>

        <!--Menu List-->
        <table  class="t1">
            <thead class="cart__row cart__header">
            <tr>
                <th class="text-center">IMAGE</th>
                <th class="text-center">MENU ID</th>
                <th class="text-center">MENU NAME</th>
                <th class="text-center">MENU DESCRIPTION</th>
                <th class="text-center">MENU PRICE</th>
                <th class="text-center">MENU TYPE</th>
                <th class="text-center">CAFE WORKER ID</th>
                <th class="text-center" colspan="2">ACTION</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <img src="<%=request.getContextPath()%>/assets/images/nasi goreng pataya.jpg" alt="NGP" style="position: center; height:47mm; width:155mm;"/>
                </td>
                <td>
                    <h3 style="text-align: center">#101</h3>
                </td>
                <td>
                    <h3 style="text-align: center">NASI GORENG PATAYA</h3>
                </td>
                <td>
                    <h3 style="text-align: center">NASI GORENG PATAYA SEDAP!!</h3>
                </td>
                <td>
                    <h3 style="text-align: center">RM5.00</h3>
                </td>
                <td>
                    <h3 style="text-align: center">FOOD</h3>
                </td>
                <td>
                    <h3 style="text-align: center">CW01</h3>
                </td>
                <td>
                    <a  href="updateMenu.html" class="button" style="color: black;">UPDATE </a>
                    <a  href="deleteMenu.html" class="button" style="color: black;">DELETE </a>
                </td>

            </tr>

            <!-- <tr>
                 <th class="th1" ><span style="color: #dae0e5; ">IMAGE</span></th>
                 <th class="th1" ><span style="color: #dae0e5; ">MENU ID</span></th>
                 <th class="th1" ><span style="color: #dae0e5; ">MENU NAME</span></th>
                 <th class="th1" ><span style="color: #dae0e5; ">MENU DESCRIPTION</span></th>
                 <th class="th1" ><span style="color: #dae0e5; ">MENU PRICE</span></th>
                 <th class="th1" ><span style="color: #dae0e5; ">MENU TYPE</span></th>
                 <th class="th1" ><span style="color: #dae0e5; ">CAFE WORKER ID</span></th>
                 <th colspan="2"><span style="color: #dae0e5; text-align: center; ">ACTION</span></th>
             </tr>-->
            </tbody>
        </table>

        <style>
            .button {
                background-color: greenyellow;
                border: none;
                color: white;
                padding: 10px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                position: relative;
                left: 3%;

            }

            .t1{
                width:1250px ;
                /*height: 31px;*/
                border: 2px solid silver;
                align-content: center;
                position: relative;
                top: 30px;
                left:10%;
                /*background-color: black;*/
            }

            th,td{
                width: 400px;
                border: 1px silver solid;
                text-align:center;
            }



        </style>

        <br><br><br><br><br><br><br><br>

    </div>


    <!--End Menu List-->
    <!--Main Content-->
    <!-- <div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col">
         <div class="productList">
             <div class="list-view-items grid&#45;&#45;view-items">
                 &lt;!&ndash;ListView Item&ndash;&gt;
                 <div class="list-product list-view-item">
                     <div class="list-view-item__image-column">
                         <div class="list-view-item__image-wrapper">
                             &lt;!&ndash; Image &ndash;&gt;
                             <a href="product-layout-2.html"><img class="list-view-item__image blur-up lazyload" data-src="assets/images/product-images/product-image1.jpg" src="assets/images/product-images/product-image1.jpg" alt="image" title="product"></a>
                             &lt;!&ndash; End Image &ndash;&gt;
                         </div>
                     </div>
                     <div class="list-view-item__title-column">
                         <div class="h4 grid-view-item__title"><a href="product-layout-2.html">Camelia Reversible Jacket</a></div>
                         &lt;!&ndash; Product Review &ndash;&gt;
                         <p class="product-review"><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i></p>
                         &lt;!&ndash; End Product Review &ndash;&gt;
                         &lt;!&ndash; Sort Description &ndash;&gt;
                         <p>Belle Multipurpose Bootstrap 4 Html Template that will give you and your customers a smooth shopping experience which can be used for various kinds of stores such as boutiques, bookstores, technology stores, jewelries and other types of web shops....</p>
                         &lt;!&ndash; End Sort Description &ndash;&gt;
                         &lt;!&ndash; Price &ndash;&gt;
                         <p class="product-price grid-view-item__meta">
                             <span class="old-price">$600.00</span>
                             <span class="product-price__price product-price__sale"><span class="money">$500.00</span></span>
                         </p>
                         &lt;!&ndash; End Price &ndash;&gt;
                         <form class="variants" action="#">
                             <button class="btn btn&#45;&#45;small" type="button">Select Options</button>
                         </form>
                     </div>
                 </div>
                 &lt;!&ndash;End ListView Item&ndash;&gt;

             </div>
         </div>
     </div>
     End Main Content-->
    <!--End Body Content-->

    <!--Footer-->
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

<!-- belle/shop-listview.html   11 Nov 2019 12:41:09 GMT -->
</html>
