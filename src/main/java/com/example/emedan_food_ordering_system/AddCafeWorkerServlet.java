package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddCafeWorkerServlet", value = "/AddCafeWorkerServlet")
public class AddCafeWorkerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String CWORKID = request.getParameter("CWORKID");
        String CWORKSTALLNAME = request.getParameter("CWORKSTALLNAME");
        String CWORKPHONENO = request.getParameter("CWORKPHONENO");
        String CWORKEMAIL = request.getParameter("CWORKEMAIL");
        String CWORKPASSWORD = request.getParameter("CWORKPASSWORD");
        String CWORKACCNUM = request.getParameter("CWORKACCNUM");
        String CWORKACCNAME = request.getParameter("CWORKACCNAME");
        String CWORKBANKNAME = request.getParameter("CWORKBANKNAME");
        CafeWorker cw = new CafeWorker();
        cw.setCWORKID(CWORKID);;
        cw.setCWORKSTALLNAME(CWORKSTALLNAME);
        cw.setCWORKPHONENO(CWORKPHONENO);
        cw.setCWORKEMAIL(CWORKEMAIL);
        cw.setCWORKPASSWORD(CWORKPASSWORD);
        cw.setCWORKACCNUM(CWORKACCNUM);
        cw.setCWORKACCNAME(CWORKACCNAME);
        cw.setCWORKBANKNAME(CWORKBANKNAME);

        int status = CafeWorkerDAO.save(cw);
        if (status>0){

            out.print("Record save successfully");
            request.getRequestDispatcher("index.jsp").include(request, response);
        }else {
            out.print("Sorry, problem occur :( ");
        }
        out.close();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
