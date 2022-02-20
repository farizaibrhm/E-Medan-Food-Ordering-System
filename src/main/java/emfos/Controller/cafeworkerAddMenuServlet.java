package emfos.Controller;

import emfos.DBConnect.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "cafeworkerAddMenuServlet", value = "/cafeworkerAddMenuServlet")
@MultipartConfig(maxFileSize = 16177215)//16mb
public class cafeworkerAddMenuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String applicationPath = getServletContext().getRealPath("");

        //Getting all the parameters from the user
        String MENUNAME = request.getParameter("MENUNAME");
        String MENUDESC = request.getParameter("MENUDESC");
        double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
        String MENUTYPE = request.getParameter("MENUTYPE");
        Part filePart = request.getPart("MENUIMAGE");

        String host = request.getScheme() + "://" + request.getHeader("e-medanfoodorderingsystem.herokuapp.com") + "/";
        System.out.println(host);

//        http://localhost:8088/images/burger.jpg

        String fileName = filePart.getSubmittedFileName();
        String urlPathForDB = host + "images/" + fileName;
        String savePath = applicationPath + "images" + File.separator + fileName;

        new File(applicationPath + "images").mkdir();
        filePart.write(savePath);

        HttpSession session = request.getSession();

        try {
            if ((String) session.getAttribute("CWORKID") == null) {
                response.sendRedirect("cafeworkerLogin.jsp");
            } else {
                String CWORKID = (String) session.getAttribute("CWORKID");

                int addMenu = DBConnection.insertUpdateFromSqlQuery("INSERT INTO public.menu(\"MENUID\", \"MENUNAME\", \"MENUDESC\", \"MENUTPRICE\", \"MENUTYPE\", \"fileName\", \"savePath\", \"CWORKID\") " +
                        "VALUES(default,'" + MENUNAME + "','" + MENUDESC + "','" + MENUPRICE + "','" + MENUTYPE + "','" + fileName + "','" + urlPathForDB + "','" + CWORKID + "')");

                if (addMenu > 0) {
                    PrintWriter out = response.getWriter();
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Menu successfully added!');");
                    out.println("location='cafeworkerMenuList.jsp';");
                    out.println("</script>");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    private String extractFileName (Part filePart)
    {
        String contentDisp = filePart.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s: items){
            if (s.trim().startsWith("filename")){
                return s.substring(s.indexOf("=") + 2, s.length() -1);
            }
        }
        return "";
    }
}