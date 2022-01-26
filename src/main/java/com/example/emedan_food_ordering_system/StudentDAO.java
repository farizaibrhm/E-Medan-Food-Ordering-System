package com.example.emedan_food_ordering_system;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Member;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.example.emedan_food_ordering_system.Student;

import javax.servlet.ServletResponse;


public class StudentDAO {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emfos", "root", "");

        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;
    }

    public static int save(Student s) {
        int status = 0;
        try {
            Connection con = StudentDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO STUDENT(STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD) VALUES (?,?,?,?,?)");
            ps.setString(1, s.getStudentID());
            ps.setString(2, s.getStudentName());
            ps.setString(3, s.getStudentPhoneNo());
            ps.setString(4, s.getStudentEmail());
            ps.setString(5, s.getStudentPassword());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public boolean validate(Student student) throws ClassNotFoundException {
        boolean status = false;
        try {
            Connection con = StudentDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM student WHERE STUDENTID = ? AND STUDENTPASSWORD = ?");
            ps.setString(1, student.getStudentID());
            ps.setString(2, student.getStudentPassword());
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            status = rs.next();


        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
}


//    public String addStudent(Student addStudent)
//    {
//        loadDriver(dbDriver);
//        Connection con = getConnection();
//        String result = "Data successfully entered!";
//        PreparedStatement ps;
//        String sql = "INSERT INTO student (STUDENTID, STUDENTNAME, STUDENTPHONENUM, STUDENTEMAIL, STUDENTPASSWORD) VALUES ('?','?','?','?','?')";
//
//        try {
//            ps = con.prepareStatement(sql);
//            ps.setString(1, addStudent.getStudentID());
//            ps.setString(2, addStudent.getStudentName());
//            ps.setString(3, addStudent.getStudentPhoneNo());
//            ps.setString(4, addStudent.getStudentEmail());
//            ps.setString(5, addStudent.getStudentPassword());
//            ps.executeUpdate();
//        }
//        catch (SQLException e)
//        {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//            result = "Data not entered";
//        }
//        return result;
//
//}


