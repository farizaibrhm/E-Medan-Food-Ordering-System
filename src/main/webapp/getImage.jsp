
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="emfos.DBConnect.DBConnection" %>
<%
    String id = request.getParameter("imageid");
    int oid = Integer.parseInt(id);

    Connection con = DBConnection.getConn();

    try{

        PreparedStatement ps = con.prepareStatement("select \"imagename\" from public.testimage where \"imageid\"=?");

        ps.setInt(1, oid);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            Blob blob = rs.getBlob("imagename");
            byte byteArray[] = blob.getBytes(1, (int)blob.length());
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
        }
    }
    catch(Exception e){
        e.printStackTrace();
    }
    finally{
        if(con != null){
            try{
                con.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
    }
%>