package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddStudentServlet", value = "/AddStudentServlet")
public class AddStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String STUDENTID = request.getParameter("STUDENTID");
        String STUDENTNAME = request.getParameter("STUDENTNAME");
        String STUDENTPHONENO= request.getParameter("STUDENTPHONENO");
        String STUDENTEMAIL = request.getParameter("STUDENTEMAIL");
        String STUDENTPASSWORD = request.getParameter("STUDENTPASSWORD");
        Student addstudent = new Student(STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD);
        StudentDAO st = new StudentDAO();
        String result = st.addStudent(addstudent);
        response.getWriter().print(result);
//        response.sendRedirect("cafe/cafeMenuList.jsp");

    }
}
//@ -1,14 +1,22 @@
//        package com.example.emedan_food_ordering_system;
//
//        import javax.servlet.*;
//        import javax.servlet.http.*;
//        import javax.servlet.annotation.*;
//        import javax.servlet.ServletException;
//        import javax.servlet.annotation.MultipartConfig;
//        import javax.servlet.annotation.WebServlet;
//        import javax.servlet.http.HttpServlet;
//        import javax.servlet.http.HttpServletRequest;
//        import javax.servlet.http.HttpServletResponse;
//        import javax.servlet.http.Part;
//        import java.io.File;
//        import java.io.IOException;
//        import java.sql.Blob;
//
//@WebServlet(name = "AddMenuServlet", value = "/AddMenuServlet")
//public class AddMenuServlet extends HttpServlet {
//    @MultipartConfig(maxFileSize = 16177215)//16mb
//
//    public class AddMenuServlet extends HttpServlet
//    {
//
//
//        @Override
//        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
//        {
//            @ -18,18 +26,41 @@ public class AddMenuServlet extends HttpServlet {
//            @Override
//            protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
//            {
//
//                String MENUID = request.getParameter("MENUID");
//                String MENUNAME = request.getParameter("MENUNAME");
//                String MENUIMAGE= request.getParameter("MENUIMAGE");
//
//                Part filePart = request.getPart("MENUIMAGE");
//                String fileName = extractFileName(filePart);
//                //letak path kat mana yall nak save gambar tu.
//                String savePath = "C:\\Users\\Lenovo\\IdeaProjects\\E-Medan-Food-Ordering-System\\src\\main\\webapp\\images\\" + File.separator + fileName;
//                File fileSaveDir = new File(savePath);
//
//                filePart.write(savePath + File.separator);
//
//                String MENUDESC = request.getParameter("MENUDESC");
//                double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
//                String MENUTYPE = request.getParameter("MENUTYPE");
////        int CWORKID = Integer.parseInt(request.getParameter("CWORKID"));
//                String CWORKID = request.getParameter("CWORKID");
//
//                Menu addmenu = new Menu(MENUID,MENUNAME,MENUIMAGE,MENUDESC,MENUPRICE,MENUTYPE);
//
//                Menu addmenu = new Menu(MENUID, MENUNAME, fileName, savePath, MENUDESC, MENUPRICE, MENUTYPE, CWORKID);
//                MenuDAO mn = new MenuDAO();
//                String result = mn.addMenu(addmenu);
//                response.getWriter().print(result);
////        response.sendRedirect("cafe/cafeMenuList.jsp");
//
//            }
//
//            private String extractFileName (Part filePart){
//                String contentDisp = filePart.getHeader("content-disposition");
//                String[] items = contentDisp.split(";");
//                for (String s: items){
//                    if (s.trim().startsWith("filename")){
//                        return s.substring(s.indexOf("=") + 2, s.length() -1);
//                    }
//                }
//                return "";
//            }
//        }