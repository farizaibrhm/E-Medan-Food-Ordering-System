package com.example.emedan_food_ordering_system;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddMenuServlet", value = "/AddMenuServlet")
@MultipartConfig(maxFileSize = 16177215)//16mb

public class AddMenuServlet extends HttpServlet
{


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {


        String MENUNAME = request.getParameter("MENUNAME");
        Part filePart = request.getPart("MENUIMAGE");
        String fileName = extractFileName(filePart);
        String savePath = "C:\\Users\\User\\IdeaProjects\\E-Medan-Food-Ordering-System\\src\\main\\webapp\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        filePart.write(savePath + File.separator);
        String MENUDESC = request.getParameter("MENUDESC");
        double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
        String MENUTYPE = request.getParameter("MENUTYPE");
        //String CWORKID = request.getParameter("CWORKID");
        //int MENUID = Integer.parseInt(request.getParameter("MENUID"));

        Menu addmenu = new Menu(MENUNAME, fileName, savePath, MENUDESC, MENUPRICE, MENUTYPE);
        MenuDAO mn = new MenuDAO();
        String result = mn.addMenu(addmenu);
        if(result != null)
        {
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Menu successfully added!');");
            out.println("location='cafe/cafeMenuList.jsp';");
            out.println("</script>");

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