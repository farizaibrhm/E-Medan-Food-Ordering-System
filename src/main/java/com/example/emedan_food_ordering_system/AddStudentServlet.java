package com.example.emedan_food_ordering_system;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

public class AddStudentServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String MENUID = request.getParameter("MENUID");
        String MENUNAME = request.getParameter("MENUNAME");

        Part filePart = request.getPart("MENUIMAGE");
        String fileName = extractFileName(filePart);
        //letak path kat mana yall nak save gambar tu.
        String savePath = "C:\\Users\\Lenovo\\IdeaProjects\\E-Medan-Food-Ordering-System\\src\\main\\webapp\\images\\" + File.separator + fileName;
        File fileSaveDir = new File(savePath);

        filePart.write(savePath + File.separator);

        String MENUDESC = request.getParameter("MENUDESC");
        double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
        String MENUTYPE = request.getParameter("MENUTYPE");
        String CWORKID = request.getParameter("CWORKID");


        Menu addmenu = new Menu(MENUID, MENUNAME, fileName, savePath, MENUDESC, MENUPRICE, MENUTYPE, CWORKID);
        MenuDAO mn = new MenuDAO();
        String result = mn.addMenu(addmenu);
        response.getWriter().print(result);
//        response.sendRedirect("cafe/cafeMenuList.jsp");

    }

    private String extractFileName (Part filePart){
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
