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
    public static final String SELECT_STUDENT_BY_ID = "SELECT STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD FROM STUDENT WHERE STUDENTID = ?;";
    public static final String SELECT_ALL_STUDENT = "SELECT * FROM STUDENT;";
    public static final String DELETE_STUDENT_SQL = "DELETE FROM STUDENT WHERE STUDENTID = ?;";
    private static final String UPDATE_STUDENT_SQL = "UPDATE STUDENT SET STUDENTNAME = ?, STUDENTPHONENO = ?, STUDENTEMAIL = ?, STUDENTPASSWORD = ? WHERE ID = ?;";

    public StudentDAO(){

        public Connection connection(){
            Connection conn = null;
            try {
                conn = DriverManager.getConnection(dbUrl, dbUname, dbPassword);

                if(conn != null){
                    System.out.println("Connected to the PostgreSQL successed !");
                } else {
                    System.out.println("Failed to make connection");
                }
            }catch (SQLException e){
                System.out.println(e.getMessage());
            }
            return conn;
        }


    }

}
