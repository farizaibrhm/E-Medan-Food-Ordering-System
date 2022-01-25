package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginStudentServlet", value = "/LoginStudentServlet")
public class LoginStudentServlet extends HttpServlet {
    private StudentDAO studentDAO;
    private  static final long serialVersionUID = 1L;

    public void init(){
        studentDAO = new StudentDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String STUDENTID = request.getParameter("STUDENTID");
        String STUDENTPASSWORD = request.getParameter("STUDENTPASSWORD");
        Student student = new Student();
        student.setStudentID(STUDENTID);
        student.setStudentPassword(STUDENTPASSWORD);

        try {
            if(studentDAO.validate(student)){
                response.sendRedirect("homepagestudent.jsp");
            }else {
                HttpSession session = request.getSession();
            }

        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        out.close();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }


}
