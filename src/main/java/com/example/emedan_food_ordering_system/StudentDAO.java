package com.example.emedan_food_ordering_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.emedan_food_ordering_system.Student;

public class StudentDAO {
    private String dbUrl = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
    private String dbUname = "kgkcfexavaezbv";
    private String dbPassword = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";
    private String dbDriver = "org.postgresql.Driver";

    public static final String INSERT_STUDENT_SQL = "INSERT INTO student" + "(STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD) VALUES " + "(?, ?, ?, ?, ?);";

    public StudentDAO(){

    }
    protected Connection getConnection(){
        Connection connection = null;
        try{
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e){
            e.printStackTrace();
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return connection;
    }

    public void insertStudent(Student student) throws SQLException{
        System.out.println(INSERT_STUDENT_SQL);

        try(Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENT_SQL)){
            preparedStatement.setInt(1, student.getStudentID());
            preparedStatement.setString(2,student.getStudentName());
            preparedStatement.setString(3,student.getStudentPhoneNum());
            preparedStatement.setString(4,student.getStudentEmail());
            preparedStatement.setString(5,student.getStudentPassword());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }


    }
}

