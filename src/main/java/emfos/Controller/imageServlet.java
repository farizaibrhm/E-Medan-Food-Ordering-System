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



        String applicationPath = getServletContext().getRealPath("");

        //Getting all the parameters from the user
        String MENUNAME = request.getParameter("MENUNAME");
        String MENUDESC = request.getParameter("MENUDESC");
        double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
        String MENUTYPE = request.getParameter("MENUTYPE");
        Part filePart = request.getPart("MENUIMAGE");

        String host = request.getScheme() + "://" + request.getHeader("host") + "/";

        http://localhost:8088/images/burger.jpg

        String fileName = filePart.getSubmittedFileName();
        String urlPathForDB = host + "images/" + fileName;
        String savePath = applicationPath + "images" + File.separator + fileName;

        new File(applicationPath + "images").mkdir();
        filePart.write(savePath);

        HttpSession session = request.getSession();

        try{
            if ((String) session.getAttribute("CWORKID") == null){
                response.sendRedirect("cafeworkerLogin.jsp");
            }else{
                String CWORKID = (String) session.getAttribute("CWORKID");

                int addMenu = DBConnection.insertUpdateFromSqlQuery("INSERT INTO public.menu(\"MENUID\", \"MENUNAME\", \"MENUDESC\", \"MENUTPRICE\", \"MENUTYPE\", \"fileName\", \"savePath\", \"CWORKID\") VALUES(default,'" + MENUNAME + "','" + MENUDESC + "','" + MENUPRICE + "','" + MENUTYPE + "','" + fileName + "','" + urlPathForDB + "','" + CWORKID + "')");

                if (addMenu > 0){
                    PrintWriter out = response.getWriter();
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Menu successfully added!');");
                    out.println("location='cafeworkerMenuList.jsp';");
                    out.println("</script>");
                }

            }
        }catch (Exception e) {
            e.printStackTrace();
        }

    }
    }

}
