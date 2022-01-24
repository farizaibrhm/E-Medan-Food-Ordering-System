package com.example.emedan_food_ordering_system;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StreamCorruptedException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.emedan_food_ordering_system.Student;
import com.example.emedan_food_ordering_system.StudentDAO;
import javax.servlet.http.HttpSession;


@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public StudentServlet(){
    super();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  {
        response.getWriter().append("Served at : ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int studentID = Integer.parseInt(request.getParameter("studentID"));
        String studentName = request.getParameter("studentEmail");
        String studentPhoneNum = request.getParameter("studentPhoneNum");
        String studentEmail = request.getParameter("studentEmail");
        String studentPassword = request.getParameter("studentPassword");

        Student student = new Student(studentID, studentName, studentPhoneNum, studentEmail, studentPassword);

        StudentDAO studentDAO = new StudentDAO();
        String result = studentDAO.insert(student);

        response.getWriter().print(result);
    }


}



