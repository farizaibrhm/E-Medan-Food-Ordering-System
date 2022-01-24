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
    private String dbUrl = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
    private String dbUname = "kgkcfexavaezbv";
    private String dbPassword = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";
    private String dbDriver = "org.postgresql.Driver";

//    private String dbUrl = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
//    private String dbUname = "kgkcfexavaezbv";
//    private String dbPassword = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";
//    private String dbDriver = "org.postgresql.Driver";




    static ResultSet rs = null;
    public void loadDriver(String dbDriver)
    {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public Connection getConnection()
    {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }

    public String addStudent(Student addStudent)
    {
        loadDriver(dbDriver);
        Connection con = getConnection();
        String result = "Data successfully entered!";
        PreparedStatement ps;
        FileInputStream fis;
        String sql = "INSERT into student (STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD) VALUES ( ?,?, ?, ?, ?);";

        try {
            ps = con.prepareStatement(sql);
            //File image= new File(addmenu.getMENUIMAGE());
            ps.setInt(1, addStudent.getStudentID());
            ps.setString(2, addStudent.getStudentName());
            ps.setString(3, addStudent.getStudentPhoneNum());
            ps.setString(4, addStudent.getStudentEmail());
            ps.setString(5, addStudent.getStudentPassword());
            ps.executeUpdate();
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            result = "Data not entered";
        }
        /*catch (FileNotFoundException e)
        {
            e.printStackTrace();
        }*/
        return result;

}}

