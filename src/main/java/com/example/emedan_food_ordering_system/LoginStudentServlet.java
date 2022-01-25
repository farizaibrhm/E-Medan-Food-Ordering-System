package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginStudentServlet", value = "/LoginStudentServlet")
public class LoginStudentServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String STUDENTID = request.getParameter("STUDENTID");
        String STUDENTPASSWORD = request.getParameter("STUDENTPASSWORD");
        Student s = new Student();
        s.setStudentID(STUDENTID);
        s.setStudentPassword(STUDENTPASSWORD);

        int status = StudentDAO.validate(s);
        if (status>0){
            out.print("Record save successfully ");
            request.getRequestDispatcher("homepagestudent.jsp").include(request, response);
        }else {
            out.print("Sorry, problem occur :(");
        }
        out.close();
//        StudentDAO st = new StudentDAO();
//        String result = st.addStudent(addstudent);
//        response.getWriter().print(result);

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
