//package com.example.emedan_food_ordering_system;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//
//@WebServlet(name = "ViewStudentServlet", value = "/ViewStudentServlet")
//public class ViewStudentServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String STUDENTID = request.getParameter("STUDENTID");
//        String STUDENTNAME = request.getParameter("STUDENTNAME");
//        String STUDENTPHONENO= request.getParameter("STUDENTPHONENO");
//        String STUDENTEMAIL = request.getParameter("STUDENTEMAIL");
//        String STUDENTPASSWORD = request.getParameter("STUDENTPASSWORD");
//        Student viewStudent = new Student(STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD);
//        StudentDAO st = new StudentDAO();
//        String result = st.viewStudent(viewStudent);
//        response.getWriter().print(result);
//    }
//}
