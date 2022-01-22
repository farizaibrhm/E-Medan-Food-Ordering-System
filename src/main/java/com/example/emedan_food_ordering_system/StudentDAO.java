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

    public static final String INSERT_STUDENT_SQL = "INSERT INTO student" + "(STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD)" + "(?, ?, ?, ?, ?);";
    public static final String SELECT_STUDENT_BY_ID = "SELECT STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD FROM student WHERE STUDENTID = ?;";
    public static final String SELECT_ALL_STUDENT = "SELECT * FROM student;";
    public static final String DELETE_STUDENT_SQL = "DELETE FROM student WHERE STUDENTID = ?;";
    private static final String UPDATE_STUDENT_SQL = "UPDATE student SET STUDENTNAME = ?, STUDENTPHONENO = ?, STUDENTEMAIL = ?, STUDENTPASSWORD = ? WHERE ID = ?;";

    static ResultSet rs = null;

    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }

    public void addStudent(Student student){
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUname, dbPassword)) {
            PreparedStatement preparedStatement = getConnection().prepareStatement(INSERT_STUDENT_SQL);{
                preparedStatement.setInt(1, student.getStudentID());
                preparedStatement.setString(2, student.getStudentName());
                preparedStatement.setString(3, student.getStudentPhoneNum());
                preparedStatement.setString(4, student.getStudentEmail());
                preparedStatement.setString(5, student.getStudentPassword());

                System.out.println(preparedStatement);

                preparedStatement.executeUpdate();
                }
            } catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    public static void  printSQLException (SQLException ex){
        for (Throwable e: ex){
            if(e instanceof SQLException){
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
