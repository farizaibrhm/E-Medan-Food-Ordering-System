package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.sql.*;


@WebServlet(name = "AddMenuServlet", value = "/AddMenuServlet")
@MultipartConfig(maxFileSize = 16177215)//16mb

public class AddMenuServlet extends HttpServlet
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        /*HttpSession session = request.getSession(); // if nk wujudkan session mcm sir buat

        // tarik value dri form dalam jsp lalu kot javascript bawah tu
        int MENUID = (int) session.getAttribute("MENUID");
        String MENUNAME = (String) session.getAttribute("MENUNAME");
        String MENUIMAGE = (String) session.getAttribute("MENUIMAGE");
        String MENUDESC = (String) session.getAttribute("MENUDESC");
        double MENUPRICE = (double) session.getAttribute("MENUPRICE");
        String MENUTYPE = (String) session.getAttribute("MENUTYPE");
        int CWORKID = (int) session.getAttribute("CWORKID");

        //masukkan value ke dlm java class StudentDetails
        Menu addmenu = new Menu(MENUID,MENUNAME,MENUIMAGE,MENUDESC,MENUPRICE,MENUTYPE,CWORKID);*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {


            String MENUID = request.getParameter("MENUID");
            String MENUNAME = request.getParameter("MENUNAME");
            InputStream MENUIMAGE = request.getInputStream();
            String MENUDESC = request.getParameter("MENUDESC");
            double MENUPRICE = Double.parseDouble(request.getParameter("MENUPRICE"));
            String MENUTYPE = request.getParameter("MENUTYPE");
            int CWORKID = Integer.parseInt(request.getParameter("CWORKID"));



            Menu addmenu = new Menu(MENUID, MENUNAME, MENUIMAGE, MENUDESC, MENUPRICE, MENUTYPE, CWORKID);
            MenuDAO mn = new MenuDAO();

            String result = mn.addMenu(addmenu);
            response.getWriter().print(result);

            /* //File image= new File(MENUIMAGE);
            ps.setInt(1,MENUID);
            ps.setString(2, MENUNAME);
            InputStream is = MENUIMAGE.getInputStream();
            ps.setBlob(3, is);
            //fis=new FileInputStream(image);
            //ps.setBinaryStream(3,fis, (int) (image.length()));
            ps.setString(4, MENUDESC);
            ps.setDouble(5, MENUPRICE);
            ps.setString(6,MENUTYPE);
            ps.setInt(7,CWORKID);
            ps.executeUpdate();
            int row= ps.executeUpdate();//return no of row effected*/

    }
}
