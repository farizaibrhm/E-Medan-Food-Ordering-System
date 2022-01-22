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

@WebServlet("/")
public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1;
    private StudentDAO studentDAO;

    public void init() {
        studentDAO = new StudentDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException{
        String action = request.getServletPath();
        try{
            switch (action){
                case "/insert":
                    insertStudent(request, response);
            }
        } catch (SQLException ex){
            throw new ServletException(ex);
        }
    }

    private void insertStudent(HttpServletRequest request, HttpServletResponse response) throws  SQLException, IOException{
        int studentID = Integer.parseInt(request.getParameter("studentID"));
        String studentName = request.getParameter("studentName");
        String studentPhoneNum = request.getParameter("studentPhoneNum");
        String studentEmail = request.getParameter("studentEmail");
        String studentPassword = request.getParameter("studentPassword");
        Student newStudent = new Student(studentID, studentName, studentPhoneNum, studentEmail, studentPassword);
        studentDAO.insertStudent(newStudent);
        response.sendRedirect("index.jsp");
    }

}
