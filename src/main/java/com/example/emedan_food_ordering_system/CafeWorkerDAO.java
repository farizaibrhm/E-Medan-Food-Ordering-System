package com.example.emedan_food_ordering_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CafeWorkerDAO {
    public static Connection getConnection(){
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emfos","root","");

        } catch (SQLException e){
            System.out.println(e);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;
    }

    public static int save(CafeWorker cw) {
        int status = 0;
        try {
            Connection con = StudentDAO.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO cafeworker(CWORKID, CWORKSTALLNAME, CWORKPHONENO, CWORKEMAIL, CWORKPASSWORD, CWORKACCNUM, CWORKACCNAME, CWORKBANKNAME) VALUES (?,?,?,?,?,?,?,?)");
            ps.setString(1, cw.getCWORKID());
            ps.setString(2, cw.getCWORKSTALLNAME());
            ps.setString(3, cw.getCWORKPHONENO());
            ps.setString(4, cw.getCWORKEMAIL());
            ps.setString(5, cw.getCWORKPASSWORD());
            ps.setString(6, cw.getCWORKACCNUM());
            ps.setString(7, cw.getCWORKACCNAME());
            ps.setString(8, cw.getCWORKBANKNAME());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
}
