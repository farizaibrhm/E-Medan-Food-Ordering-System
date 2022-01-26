package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginCafeWorkerServlet", value = "/LoginCafeWorkerServlet")
public class LoginCafeWorkerServlet extends HttpServlet {
    private CafeWorkerDAO cafeWorkerDAO;
    private static final long serialVersionUID = 1L;

    public void init(){cafeWorkerDAO = new CafeWorkerDAO();}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String CWORKID = request.getParameter("CWORKID");
        String CWORKPASSWORD = request.getParameter("CWORKPASSWORD");
        CafeWorker cafeWorker = new CafeWorker();
        cafeWorker.setCWORKID(CWORKID);
        cafeWorker.setCWORKPASSWORD(CWORKPASSWORD);

        try {
            if (cafeWorkerDAO.validate(cafeWorker)){
                response.sendRedirect(request.getContextPath() + "/cafe/homepagecw.jsp");
            }else {
                HttpSession session = request.getSession();
            }
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
