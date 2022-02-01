

package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "UpdateMenuServlet", value = "/UpdateMenuServlet")
@MultipartConfig(maxFileSize = 16177215)//16mb
public class UpdateMenuServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static String EDIT = "/updateMenu.jsp";
    private static String LIST_USER = "cafe/cafeMenuList.jsp";
    private MenuDAO menu;
    public UpdateMenuServlet()
    {
        super();
        menu = new MenuDAO();

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        if (request.getParameter("Action").equals("Update Menu")) {
            System.out.println("in");
            PrintWriter out = response.getWriter();

            Menu mn = new Menu();
            MenuDAO upMenu = new MenuDAO();

            String id = request.getParameter("MENUID");

            if (!((id) == null))
            {
                int sid = Integer.parseInt(id);
                mn.setMENUID(sid);
            }


            mn.setMENUNAME(request.getParameter("MENUNAME"));
            mn.setMENUDESC(request.getParameter("MENUDESC"));
            mn.setMENUTPRICE(Double.parseDouble(request.getParameter("MENUPRICE")));
            mn.setMENUTYPE(request.getParameter("MENUTYPE"));

            request.setAttribute("mn", mn);

            boolean result = upMenu.updateMenu(mn);
            System.out.println(result);

            if (result == true){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Menu updated successfully!');");
                out.println("location='cafe/cafeMenuList.jsp';");
                out.println("</script>");
            }else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Menu unsuccessfully updated. Please try again.');");
                out.println("location='cafe/cafeMenuList.jsp';");
                out.println("</script>");
            }
        }



    }



}


