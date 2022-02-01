package emfos;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;


@WebServlet(name = "cafeworkerAddMenuServlet", value = "/cafeworkerAddMenuServlet")
@MultipartConfig(maxFileSize = 16177215)//16mb

public class cafeworkerAddMenuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String MENUNAME = request.getParameter("MENUNAME");
        System.out.println("Menu name is " + MENUNAME);//nak check betul ke data yang dia get
        Part filePart = request.getPart("MENUIMAGE");
        String fileName = extractFileName(filePart);
        System.out.println("Image name is " + fileName);//nak check betul ke data yang dia get
        String savePath = "C:\\Users\\Lenovo\\IdeaProjects\\E-Medan-Food-Ordering-System\\src\\main\\webapp\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);

        filePart.write(savePath + File.separator);
        System.out.println("Image path is " + savePath);//nak check betul ke data yang dia get
        String MENUDESC = request.getParameter("MENUDESC");
        System.out.println("Menu desc is " + MENUDESC);//nak check betul ke data yang dia get
        double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
        System.out.println("Menu price is " +MENUPRICE);//nak check betul ke data yang dia get
        String MENUTYPE = request.getParameter("MENUTYPE");
        System.out.println("Menu type " + MENUTYPE);//nak check betul ke data yang dia get

        HttpSession session = request.getSession();

        try{
            if ((String) session.getAttribute("CWORKID") == null){
                response.sendRedirect("cafeworkerLogin.jsp");
            }else{
                String CWORKID = (String) session.getAttribute("CWORKID");
                        System.out.println("Cafeworker ID is " + CWORKID);//nak check betul ke dia retrieve cworkid yang login

                menu addmenu = new menu(MENUNAME, fileName, savePath, MENUDESC, MENUPRICE, MENUTYPE, CWORKID);
                menuDAO mn = new menuDAO();
                String result = mn.addMenu(addmenu);
                System.out.println(result);
                response.getWriter().print(result);

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


        //int MENUID = Integer.parseInt(request.getParameter("MENUID"));



//        response.getWriter().print(result);

//        if(result == "Data successfully entered!")
//        {
//            PrintWriter out = response.getWriter();
//            out.println("<script type=\"text/javascript\">");
//            out.println("alert('Menu successfully added!');");
//            out.println("location='cafeworkerMenuList.jsp';");
//            out.println("</script>");
//
//        } else{
//            PrintWriter out = response.getWriter();
//            out.println("<script type=\"text/javascript\">");
//            out.println("alert('Data not inserted. Please try again.');");
//            out.println("location='cafeworkerAddMenu.jsp';");
//            out.println("</script>");
//
//        }
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
