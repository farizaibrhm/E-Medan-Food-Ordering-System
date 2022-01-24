<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%
    String id=request.getParameter("id");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emfos", "root", "");
        Statement st=con.createStatement();
        int i=st.executeUpdate("DELETE FROM menu WHERE MENUID="+id);
        out.println("Data Deleted Successfully!");

//        Class.forName("org.postgresql.Driver");
//        String dbURL = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
//        String user = "kgkcfexavaezbv";
//        String pass = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";
//        Connection con = DriverManager.getConnection(dbURL, user, pass);
//        Statement st=con.createStatement();
//        int i=st.executeUpdate("DELETE FROM menu WHERE MENUID="+id);
//        out.println("Data Deleted Successfully!");

    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
        out.println("Delete Unsuccessful! Please try again.");
    }
%>