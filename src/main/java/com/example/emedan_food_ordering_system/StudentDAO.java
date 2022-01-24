package com.example.emedan_food_ordering_system;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Member;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.example.emedan_food_ordering_system.Student;

import javax.servlet.ServletResponse;


public class StudentDAO {
    private String dbURL = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
    private String dbName = "kgkcfexavaezbv";
    private String dbPassword = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";
    private String dbDriver = "org.postgresql.Driver";

    public void loadDriver(String dbDriver){
        try {
            Class.forName(dbDriver);
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    }

    public Connection getConnection(){
        Connection con = null;
        try {
            con= DriverManager.getConnection(dbURL,dbName,dbPassword);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return con;
    }


    public String insert(Student student){
        loadDriver(dbDriver);
        Connection con =getConnection();
        String result = "Data entered successfully";
        String sql = "INSERT INTO STUDENT(STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, student.getStudentID());
            ps.setString(2,student.getStudentName());
            ps.setString(3,student.getStudentPhoneNum());
            ps.setString(4,student.getStudentEmail());
            ps.setString(5,student.getStudentPassword());
            ps.executeUpdate();

        }catch (SQLException e){
            e.printStackTrace();
            result =  "Data not entered";
        }
        return result;
    }

}

