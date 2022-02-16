<html>
<head>
    <link rel="stylesheet" href="assets/css/orderDetails.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</head>
<body>
<div class="container mt-5 mb-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="text-left logo p-2 px-5"> <img src="assets/images/e-Medan.svg" width="150"> </div>
                <div class="invoice p-5">
                    <h5>ORDER NO #456786</h5><span class="font-weight-bold d-block mt-4">Sold to: Nurfatihah Yunus</span><span>Tel. No: 019-5788745 | Email: nfy@gmail.com</span>
                    <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">
                        <table class="table table-borderless">
                            <tbody>
                            <tr>
                                <td>
                                    <div class="py-1"> <span class="d-block text-muted">Order Date</span> <span>12 Jan,2018</span> </div>
                                </td>
                                <td>
                                    <div class="py-1"> <span class="d-block text-muted">Order Time</span> <span>MT12332345</span> </div>
                                </td>
                                <td>
                                    <div class="py-1"> <span class="d-block text-muted">Payment</span> <span>Cash on Pickup</span> </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="product border-bottom table-responsive">
                        <table class="table table-borderless">
                            <tbody>
                            <tr>
                                <td width="20%"> <img src="https://i.imgur.com/u11K1qd.jpg" width="90"> </td>
                                <td width="60%"> <span class="font-weight-bold">Men's Sports cap</span>
                                    <div class="product-qty"> <span class="d-block">Quantity: 1</span></div>
                                </td>
                                <td width="20%">
                                    <div class="text-right"> <span class="font-weight-bold">RM 67.50</span> </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row d-flex justify-content-end">
                        <div class="col-md-5">
                            <table class="table table-borderless">
                                <tbody class="totals">
                                <tr>
                                    <td>
                                        <div class="text-left"> <span class="text-muted">Subtotal</span> </div>
                                    </td>
                                    <td>
                                        <div class="text-right"> <span>RM 168.50</span> </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="text-left"> <span class="text-muted">Shipping Fee</span> </div>
                                    </td>
                                    <td>
                                        <div class="text-right"> <span>0.00</span> </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-between footer p-3"></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<%--String sql = "SELECT * FROM public.forder \"o\", public.menu \"m\", public.orderitem \"oi\" WHERE\n" +--%>
<%--"\"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"m\".\"MENUID\" = \"oi\".\"MENUID\" AND " +--%>
<%--"\"o\".\"STUDENTID\" ='" + session.getAttribute("STUDENTID") + "' ";--%>

