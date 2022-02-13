<%@ page import="emfos.Model.menu" %>
<%@ page import="emfos.DAO.menuDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UPDATE MENU</title>
</head>
<body>

<%
    String CWORKID = (String) session.getAttribute("CWORKID");
    if (CWORKID== null)
    { response.sendRedirect("cafeworkerLogin.jsp");}
%>

<% menu mn = new menu();%>
<% menuDAO upMenu = new menuDAO(); %>
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
    .item i, input[type="date"]::-webkit-calendar-picker-indicator
    {
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
        /*.city-item {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }*/
    }
</style>

<div class="testbox">
    <form method="post"  action="${pageContext.request.contextPath}/cafeworkerUpdateMenuServlet">
        <div class="banner">
            <h1>UPDATE MENU </h1>
        </div>

        <input type="hidden" name="Action" value="Update Menu" />
        <%
            String sid = request.getParameter("id");
            if (!((sid) == null))
            {
                int MENUID = Integer.parseInt(sid);
                mn = upMenu.getMenuID(MENUID);
        %>

        <div class="item">
            <p>MENU ID</p>
            <div class="name-item">
                <input type="text" name="MENUID" value="<%=mn.getMENUID()%>" readonly />
            </div>
        </div>
        <div class="item">
            <p>MENU NAME</p>
            <input type="text" name="MENUNAME" value="<%= mn.getMENUNAME()%>"/>
        </div>
        <div class="item">
            <p>MENU DESCRIPTION</p>
            <input type="text" name="MENUDESC" value="<%= mn.getMENUDESC()%>"/>
        </div>
        <div class="item">
            <p>MENU PRICE (RM)</p>
            <input type="text"  name="MENUTPRICE" value="<%=mn.getMENUTPRICE()%>"/>
        </div>
        <div class="item">
            <p>MENU TYPE (F-FOOD/ D-DRINK)</p>
            <input type="text" name="MENUTYPE" value="<%= mn.getMENUTYPE()%>"/>
        </div>
        <div class="item">
           <%-- <p>CAFE WORKER ID</p>--%>
           <input type="hidden" name="CWORKID" value="<%=mn.getCWORKID()%>"/>
        </div>
        <%--<div class="item">
            <p>PLEASE REUPLOAD IMAGE</p>
            <div class="name-item">
                <input type="file" id="MENUIMAGE" name="MENUIMAGE" value="<%= mn.getFileName()%>"/>
            </div>
        </div>--%>
        <div class="btn-block">
            <button type="submit" value="submit">UPDATE</button>
        </div>
    </form>
</div>

<%
    } else
        out.println("ID Not Found");
%>

</body>
</html>
