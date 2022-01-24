<%@page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("MENUID");
    String MENUNAME = request.getParameter("MENUNAME");
    String MENUDESC = request.getParameter("MENUDESC");
    double MENUTPRICE = Double.parseDouble(request.getParameter("MENUTPRICE"));
    String MENUTYPE = request.getParameter("MENUTYPE");

    if(id != null)
    {

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emfos", "root", "");
            String sql="Update menu set MENUID=?,MENUNAME=?,MENUDESC=?,,MENUTPRICE=?, MENUTYPE=? where MENUID="+id;
            PreparedStatement ps =con.prepareStatement(sql);
            ps.setString(1,id);
            ps.setString(2, MENUNAME);
            ps.setString(3, MENUDESC);
            ps.setDouble(4, MENUTPRICE);
            ps.setString(5, MENUTYPE);
            int i = ps.executeUpdate();
            if(i > 0)
            {
                out.print("Record Updated Successfully");
            }
            else
            {
                out.print("There is a problem in updating Record.");
            }
        }
        catch(SQLException sql)
        {
            request.setAttribute("error", sql);
            out.println(sql);
        }
    }
%>


%>