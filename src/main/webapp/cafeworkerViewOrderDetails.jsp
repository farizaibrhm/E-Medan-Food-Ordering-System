<%@ page import="emfos.DBConnect.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    String oid = request.getParameter("id");
    String cid = (String) session.getAttribute("CWORKID");
    if (cid== null)
    { response.sendRedirect("cafeworkerLogin.jsp")
    ;}

    String SNAME = null, SPHONE = null, SEMAIL = null, ONO = null, OAMOUNT = null;
    Time OTIME = null;
    Date ODATE = null;

    Connection con = DBConnection.getConn();
    SimpleDateFormat ft = new SimpleDateFormat ("dd-MMM-yyyy");
    SimpleDateFormat ft2 = new SimpleDateFormat("HH:mm:ss");
    Statement st = con.createStatement();
    String sql = "SELECT * FROM public.forder \"o\", public.orderitem \"oi\", public.menu \"m\", public.cafeworker \"c\", public.student \"s\" WHERE \"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"o\".\"STUDENTID\" = \"s\".\"STUDENTID\" AND \"oi\".\"MENUID\" = \"m\".\"MENUID\" AND \"m\".\"CWORKID\" = \"c\".\"CWORKID\" AND \"o\".\"ORDERNO\"='" + oid + "' AND \"m\".\"CWORKID\" ='" + cid + "'";
    ResultSet rs = st.executeQuery(sql);
    while (rs.next())
    {
        SNAME =rs.getString("STUDENTNAME");
        SPHONE = rs.getString("STUDENTPHONENO");
        SEMAIL =rs.getString("STUDENTEMAIL");
        ONO = rs.getString("ORDERNO");
        ODATE = rs.getDate("ORDERDATE");
        OTIME =rs.getTime("ORDERTIME");
        OAMOUNT =rs.getString("ORDERTPRICE");

    }
%>

<html>
<head>
    <title>ORDER #<%=ONO%></title>
    <link rel="stylesheet" href="assets/css/orderDetails.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/e-favicon.svg" />
</head>
<body>
<div class="container mt-5 mb-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="text-left logo p-2 px-5"> <img src="assets/images/e-Medan.svg" width="150"> </div>
                <div class="invoice p-5">
                    <h5>ORDER NO #<%=ONO%></h5><span class="font-weight-bold d-block mt-4">Sold to: <%=SNAME%></span><span>Tel. No: <%=SPHONE%> | Email: <%=SEMAIL%></span>
                    <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">
                        <table class="table table-borderless">
                            <tbody>
                            <tr>
                                <td>
                                    <div class="py-1"> <span class="d-block text-muted">Order Date</span> <span><%=ft.format(ODATE)%></span> </div>
                                </td>
                                <td>
                                    <div class="py-1"> <span class="d-block text-muted">Order Time</span> <span><%=ft2.format(OTIME)%></span> </div>
                                </td>
                                <td>
                                    <div class="py-1"> <span class="d-block text-muted">Payment</span> <span>Receipt Upload</span> </div>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                    <div class="product border-bottom table-responsive">
                        <table class="table table-borderless">
                            <tbody>
                            <%
                                Statement st1 = con.createStatement();
                                String sql1 = "SELECT * FROM public.forder \"o\", public.orderitem \"oi\", public.menu \"m\", public.cafeworker \"c\", public.student \"s\" WHERE \"o\".\"ORDERID\" = \"oi\".\"ORDERID\" AND \"o\".\"STUDENTID\" = \"s\".\"STUDENTID\" AND \"oi\".\"MENUID\" = \"m\".\"MENUID\" AND \"m\".\"CWORKID\" = \"c\".\"CWORKID\" AND \"o\".\"ORDERNO\"='" + oid + "' AND \"m\".\"CWORKID\" ='" + cid + "'";
                                ResultSet rs1 = st1.executeQuery(sql1);
                                while (rs1.next())
                                {
                            %>

                            <tr>
                                <td width="20%"> <img src="<%=rs1.getString("savePath")%>" width="90"> </td>
                                <td width="60%"> <span class="font-weight-bold"><%=rs1.getString("MENUNAME")%></span>
                                    <div class="product-qty"> <span class="d-block"><%=rs1.getString("CWORKSTALLNAME")%></span></div>
                                </td>
                                <td width="20%">
                                    <div class="text-right"><span class="font-weight-bold">RM <%=rs1.getString("MENUTPRICE")%></span></div>
                                    <div class="product-qty text-right"> <span class="d-block">x<%=rs1.getInt("ORDERITEMQUANTITY")%></span></div>
                                </td>
                            </tr>
                            <%
                                }
                            %>
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
                                        <div class="text-right"> <span>RM <%=OAMOUNT%></span> </div>
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
                                <tr class="border-top border-bottom">
                                    <td>
                                        <div class="text-left"> <span class="font-weight-bold">Subtotal</span> </div>
                                    </td>
                                    <td>
                                        <div class="text-right"> <span class="font-weight-bold">RM <%=OAMOUNT%></span> </div>
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


