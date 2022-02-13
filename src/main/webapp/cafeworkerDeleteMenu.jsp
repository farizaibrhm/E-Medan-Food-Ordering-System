<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2/14/2022
  Time: 2:59 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="emfos.Model.menu" %>
<%@ page import="emfos.DAO.menuDAO" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    String CWORKID = (String) session.getAttribute("CWORKID");
    if (CWORKID== null)
    { response.sendRedirect("cafeworkerLogin.jsp");}
%>
<body>

<% menu mn = new menu();%>
<% menuDAO upMenu = new menuDAO(); %>

<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/cafeworkerDeleteMenuServlet">

    <input type="hidden" name="Action" value="Delete Menu" />
    <%
        String sid = request.getParameter("id");
        if (!((sid) == null))
        {
            int MENUID = Integer.parseInt(sid);
            mn = upMenu.getMenuID(MENUID);
    %>

    <input type="hidden" name="id" value="<%=mn.getMENUID()%>" />
    <p>Do you really want to delete these records? This process cannot be undone.</p>

    <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-danger">Delete</button>
    </div>
    <%
        } else
            out.println("ID Not Found");
    %>
</form>

</body>
</html>
