package com.example.emedan_food_ordering_system;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "ReadStudentProfileServlet", value = "/ReadStudentProfileServlet")
public class ReadStudentProfileServlet extends HttpServlet {
    private StudentDAO studentDAO;
    private static final long serialVersionUID = 1L;

    public  void init(){studentDAO = new StudentDAO();}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();

        String STUDENTID = request.getParameter("STUDENTID");
        String STUDENTNAME = request.getParameter("STUDENTNAME");
        String STUDENTPHONENO = request.getParameter("STUDENTPHONENO");
        String STUDENTEMAIL = request.getParameter("STUDENTEMAIL");
        String STUDENTPASSWORD = request.getParameter("STUDENTPASSWORD");
        Student student = new Student();
        student.setStudentID(STUDENTID);
        student.setStudentName(STUDENTNAME);

        out.println("<html><body>");
        ResultSet rs = null;
        try {
            if (studentDAO.readprofile(student)){
                try {
                    out.println("Student ID:" + rs.getString("STUDENTID"));
                    out.println("STUDENT NAME: " +rs.getString("STUDENTNAME"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
