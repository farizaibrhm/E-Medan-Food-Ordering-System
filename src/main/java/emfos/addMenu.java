package emfos;

import emfos.DBConnect.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "addMenu", value = "/addMenu")
@MultipartConfig(maxFileSize = 16177215)//16mb
public class addMenu extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        //Getting all the parameters from the user
        String MENUNAME = request.getParameter("MENUNAME");
        System.out.println("Menu name is " + MENUNAME);//nak check betul ke data yang dia get
        String MENUDESC = request.getParameter("MENUDESC");
        System.out.println("Menu desc is " + MENUDESC);//nak check betul ke data yang dia get
        double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
        System.out.println("Menu price is " +MENUPRICE);//nak check betul ke data yang dia get
        String MENUTYPE = request.getParameter("MENUTYPE");
        System.out.println("Menu type " + MENUTYPE);//nak check betul ke data yang dia get
        Part filePart = request.getPart("MENUIMAGE");
        String fileName = extractFileName(filePart);
        System.out.println("Image name is " + fileName);//nak check betul ke data yang dia get
        String savePath = "C:\\Users\\Lenovo\\IdeaProjects\\E-Medan-Food-Ordering-System\\src\\main\\webapp\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        filePart.write(savePath + File.separator);
        System.out.println("Image path is " + savePath);//nak check betul ke data yang dia get



        HttpSession session = request.getSession();

        try{
            if ((String) session.getAttribute("CWORKID") == null){
                response.sendRedirect("cafeworkerLogin.jsp");
            }else{
                String CWORKID = (String) session.getAttribute("CWORKID");
                System.out.println("Cafeworker ID is " + CWORKID);//nak check betul ke dia retrieve cworkid yang login

                int addMenu = DBConnection.insertUpdateFromSqlQuery("INSERT INTO public.menu(\"MENUID\", \"MENUNAME\", \"MENUDESC\", \"MENUTPRICE\", \"MENUTYPE\", \"fileName\", \"savePath\", \"CWORKID\") VALUES(default,'" + MENUNAME + "','" + MENUDESC + "','" + MENUPRICE + "','" + MENUTYPE + "','" + fileName + "','" + savePath + "','" + CWORKID + "')");

                if (addMenu > 0){
                    PrintWriter out = response.getWriter();
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Menu successfully added!');");
                    out.println("location='cafeworkerMenuList.jsp';");
                    out.println("</script>");
                }

//                if (result != null){
//                    PrintWriter out = response.getWriter();
//                    out.println("<script type=\"text/javascript\">");
//                    out.println("alert('Menu successfully added!');");
//                    out.println("location='cafeworkerMenuList.jsp';");
//                    out.println("</script>");
//                }else{
//                    PrintWriter out = response.getWriter();
//                    out.println("<script type=\"text/javascript\">");
//                    out.println("alert('Data not inserted. Please try again.');");
//                    out.println("location='cafeworkerAddMenu.jsp';");
//                    out.println("</script>");
//                }
            }
        }catch (Exception e) {
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
