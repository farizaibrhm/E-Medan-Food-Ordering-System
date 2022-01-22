package com.example.emedan_food_ordering_system;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.emedan_food_ordering_system.StudentDAO;
import com.example.emedan_food_ordering_system.Student;

@WebServlet(name = "StudentServlet", value = "/StudentServlet")
public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    private StudentDAO studentDAO;

    public void init(){
        studentDAO = new StudentDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        PrintWriter out =response.getWriter();
        HttpSession session = request.getSession();

        int studentID = (int) session.getAttribute("studentID");
        String studentName = (String) session.getAttribute("studentName");
        String studentPhoneNum = (String) session.getAttribute("studentPhoneNum");
        String studentEmail = (String) session.getAttribute("studentEmail");
        String studentPassword = (String) session.getAttribute("studentPassword");


        String action = request.getServletPath();
        try {
            switch (action){
                case "/insert":
                    insertStudent(request, response);
            }
        } catch (SQLException ex){
            throw new ServletException(ex);
        }
    }

    private  void insertStudent(HttpServletRequest request, HttpServletResponse response) throws  SQLException, IOException{
        int studentID = Integer.parseInt(request.getParameter("STUDENTID"));
        String studentName = request.getParameter("STUDENTNAME");
        String studentPhoneNum = request.getParameter("STUDENTPHONENUM");
        String studentEmail = request.getParameter("STUDENTEMAIL");
        String studentPassword = request.getParameter("STUDENTPASSWORD");
        Student newStudent = new Student(studentID, studentName, studentPhoneNum, studentEmail, studentPassword);
        studentDAO.addStudent(newStudent);
        response.sendRedirect("list");
    }
}
