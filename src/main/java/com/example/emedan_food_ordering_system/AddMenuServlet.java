package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.sql.Blob;

@WebServlet(name = "AddMenuServlet", value = "/AddMenuServlet")
public class AddMenuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        String MENUID = request.getParameter("MENUID");
        String MENUNAME = request.getParameter("MENUNAME");
        String MENUIMAGE= request.getParameter("MENUIMAGE");
        String MENUDESC = request.getParameter("MENUDESC");
        double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
        String MENUTYPE = request.getParameter("MENUTYPE");
//        int CWORKID = Integer.parseInt(request.getParameter("CWORKID"));

        Menu addmenu = new Menu(MENUID,MENUNAME,MENUIMAGE,MENUDESC,MENUPRICE,MENUTYPE);
        MenuDAO mn = new MenuDAO();
        String result = mn.addMenu(addmenu);
        response.getWriter().print(result);
    }
}
