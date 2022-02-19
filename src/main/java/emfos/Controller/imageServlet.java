package emfos.Controller;

import emfos.DBConnect.DBConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

@MultipartConfig(maxFileSize = 16177215)//16mb
@WebServlet(name = "imageServlet", value = "/imageServlet")
public class imageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Connection con = DBConnection.getConn();

        Part part = request.getPart("imagename");
        int result = 0;

        if(part != null){
            try{

                PreparedStatement ps = con.prepareStatement("INSERT INTO public.testimage(\n" +
                        "\timageid, imagename)\n" +
                        "\tVALUES (default, ?);");
                InputStream is = part.getInputStream();

                ps.setBlob(1, is);
                result = ps.executeUpdate();
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
        }
        if(result > 0){
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Menu successfully added!');");
            out.println("location='testimage.jsp';");
            out.println("</script>");
        }
        else{
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Menu unsuccessfully added!');");
            out.println("location='testimage.jsp';");
            out.println("</script>");
        }




    }

}
