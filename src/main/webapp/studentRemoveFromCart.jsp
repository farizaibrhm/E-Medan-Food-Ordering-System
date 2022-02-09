<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 6/2/2022
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="emfos.DAO.cartDAO" %>
<%@ page import="emfos.Model.cart" %>
<html>
<head>

</head>

<%
    String STUDENTNAME = (String) session.getAttribute("STUDENTNAME");
    if (STUDENTNAME== null) {
        response.sendRedirect("studentLogin.jsp");
    }
%>
<body>

<% cart crt = new cart(); %>
<% cartDAO cdao = new cartDAO(); %>

<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/studentCartServlet">

    <input type="hidden" name="Action" value="Remove from Cart" /> <%
    String cid = request.getParameter("id");
    String STUDENTID = (String) session.getAttribute("STUDENTID");

    if (!((cid) == null)) {
        int MENUID = Integer.parseInt(cid);
        crt = cdao.getItemByMENUID(MENUID, STUDENTID);
%>

    <input type="hidden" name="id" value="<%=crt.getMENUID()%>" />
    <p>Are you sure you would like to remove this item from the cart?</p>

    <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-danger">Delete</button>
    </div>
    <%
        } else
            out.println("ID Not Found");
    %>
</form>
<%--</div>--%>
</body>
</html>