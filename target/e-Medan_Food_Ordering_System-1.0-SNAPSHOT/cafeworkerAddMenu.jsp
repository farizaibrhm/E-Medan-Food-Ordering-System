
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Menu</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/e-favicon.svg" />
    <style>
        div, form, input, select, textarea, p {
            padding: 0;
            margin: 0;
            outline: none;
            font-family: Roboto, Arial, sans-serif;
            font-size: 14px;
            color: #6D6D6D;
            line-height: 22px;
        }
        h1 {
            position: absolute;
            margin: 0;
            line-height: 42px;
            font-size: 42px;
            color: #fff;
            z-index: 2;
        }
        .testbox {
            display: flex;
            justify-content: center;
            align-items: center;
            height: inherit;
            padding: 20px;
        }
        form {
            width: 80%;
            padding: 20px;
            border-radius: 6px;
            background: #fff;
            box-shadow: 0 0 25px 0 #d6e0f5;
        }
        .banner {
            position: relative;
            height: 300px;
            background-color:white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .banner::after {
            content: "";
            background-color:black;
            position: absolute;
            width: 100%;
            height: 60%;
        }
        input, select, textarea {
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input {
            width: calc(100% - 10px);
            padding: 5px;
        }
        input[type="date"] {
            padding: 4px 5px;
        }
        select {
            width: 100%;
            padding: 7px 0;
            background: transparent;
        }
        textarea {
            width: calc(100% - 12px);
            padding: 5px;
        }
        .item input:hover, .item select:hover, .item textarea:hover {
            border: 1px solid transparent;
            box-shadow: 0 0 6px 0 #d6e0f5;
            color:black;
        }
        .item {
            position: relative;
            margin: 10px 0;
        }
        input[type="date"]::-webkit-inner-spin-button {
            display: none;
        }
        .item i, input[type="date"]::-webkit-calendar-picker-indicator {
            position: absolute;
            font-size: 20px;
            color: #a9a9a9;
        }
        .item i {
            right: 2%;
            top: 28px;
            z-index: 1;
        }
        [type="date"]::-webkit-calendar-picker-indicator {
            right: 1%;
            z-index: 2;
            opacity: 0;
            cursor: pointer;
        }
        button {
            width: 150px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: #0087cc;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
        }
        button:hover {
            background: #6eb8dd;
        }
        @media (min-width: 568px) {
            .name-item
        }
    </style>

</head>

<%
    String CWORKID = (String) session.getAttribute("CWORKID");
    if (CWORKID== null)
    { response.sendRedirect("cafeworkerLogin.jsp")
    ;}
%>

<body class="template-product belle">
<div class="pageWrapper">

    <!--Body Content-->
    <div id="page-content">
        <!--MainContent-->
        <div id="MainContent" class="main-content" role="main">
            <div class="testbox">
            <form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/cafeworkerAddMenuServlet">
                    <div class="banner">
                        <h1>ADD MENU</h1>
                    </div>
                    <div class="item">
                        <p>MENU NAME</p>
                        <input type="text" name="MENUNAME"/>
                    </div>
                    <div class="item">
                        <p>MENU DESCRIPTION</p>
                        <input type="text" name="MENUDESC"/>
                    </div>
                    <div class="item">
                        <p>MENU PRICE (RM)</p>
                        <input type="text" name="MENUPRICE"/>
                    </div>
                    <div class="item">
                        <p>MENU TYPE</p>
                        <select id="menuType" name="MENUTYPE">
                            <option value="choose" selected>CHOOSE MENU TYPE</option>
                            <option value="F">FOOD</option>
                            <option value="D">DRINK</option>
                        </select>
                    </div>
                    <div class="item">
                        <p>UPLOAD IMAGE</p>
                        <div class="name-item">
                            <input type="file" id="MENUIMAGE" name="MENUIMAGE"/>
                        </div>
                    </div>
                    <div class="btn-block">
                        <button type="submit" value="submit">Submit</button>
                    </div>
                </form>


            </div>
            <!--MainContent-->
        </div>
        <!--End Body Content-->

        <!--Footer-->
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
        <!-- Photoswipe Gallery -->
        <script src="assets/js/vendor/photoswipe.min.js"></script>
        <script src="assets/js/vendor/photoswipe-ui-default.min.js"></script>
    </div>
</div>

</body>
</html>