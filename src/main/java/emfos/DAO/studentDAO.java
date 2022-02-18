package emfos.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import emfos.DBConnect.DBConnection;
import emfos.Model.student;

public class studentDAO {

    //registration
    public String registerStudent (student streg){

        String result = "User successfully registered!";
        Connection con = DBConnection.getConn();

        String sql = "INSERT INTO public.student(\n" +
                "\t\"STUDENTID\", \"STUDENTNAME\", \"STUDENTPHONENO\", \"STUDENTEMAIL\", \"STUDENTPASSWORD\")\n" +
                "\tVALUES (?, ?, ?, ?, ?);";

        PreparedStatement ps;

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, streg.getSTUDENTID());
            ps.setString(2, streg.getSTUDENTNAME());
            ps.setString(3, streg.getSTUDENTPHONENO());
            ps.setString(4, streg.getSTUDENTEMAIL());
            ps.setString(5, streg.getSTUDENTPASSWORD());
            ps.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
            result = "User not registered!";
        }
        return result;
    }

    public boolean loginStudent(student stlogin){
        boolean status = false;

        Connection con = DBConnection.getConn();

        String sql = "SELECT \"STUDENTID\", \"STUDENTNAME\", \"STUDENTPHONENO\", \"STUDENTEMAIL\", \"STUDENTPASSWORD\"\n" +
                "\tFROM public.student WHERE \"STUDENTID\"=? AND \"STUDENTPASSWORD\"=?;";
        PreparedStatement ps;

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, stlogin.getSTUDENTID());
            ps.setString(2, stlogin.getSTUDENTPASSWORD());

            ResultSet rs = ps.executeQuery();
            status = rs.next();

            stlogin.setSTUDENTID(rs.getString("STUDENTID"));
            stlogin.setSTUDENTNAME(rs.getString("STUDENTNAME"));
            stlogin.setSTUDENTPHONENO(rs.getString("STUDENTPHONENO"));
            stlogin.setSTUDENTEMAIL(rs.getString("STUDENTEMAIL"));
            stlogin.setSTUDENTPASSWORD(rs.getString("STUDENTPASSWORD"));

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    public void updateStudent(student st){
        Connection con = DBConnection.getConn();
        String sql = "UPDATE public.student\n" +
                "\tSET \"STUDENTNAME\"=?, \"STUDENTPHONENO\"=?, \"STUDENTEMAIL\"=?, \"STUDENTPASSWORD\"=?\n" +
                "\tWHERE \"STUDENTID\"=?";

        PreparedStatement ps;

        try {
            ps = con.prepareStatement(sql);

            ps.setString(1, st.getSTUDENTNAME());
            ps.setString(2, st.getSTUDENTPHONENO());
            ps.setString(3, st.getSTUDENTEMAIL());
            ps.setString(4, st.getSTUDENTPASSWORD());
            ps.setString(5, st.getSTUDENTID());
            ps.executeUpdate();

        }catch(SQLException e)
        {
            e.printStackTrace();
        }
    }

    public student getById (String STUDENTID){
        Connection con = DBConnection.getConn();
        student st = null;

        String sql ="SELECT * FROM public.student WHERE \"STUDENTID\"=?;";
        PreparedStatement ps;

        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, STUDENTID);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String STUDENTNAME = rs.getString("STUDENTNAME") ;
                String STUDENTPHONENO = rs.getString("STUDENTPHONENO") ;
                String STUDENTEMAIL = rs.getString("STUDENTEMAIL");
                String STUDENTPASSWORD = rs.getString("STUDENTPASSWORD");

                st = new student (STUDENTID, STUDENTNAME, STUDENTPHONENO, STUDENTEMAIL, STUDENTPASSWORD);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return st;
    }

    public boolean deleteStudentAccount(String STUDENTID){
        Connection con = DBConnection.getConn();

        String sql = "DELETE FROM public.student WHERE \"STUDENTID\"=?";

        int i = 0;

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, STUDENTID);

            i = ps.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
        if (i == 0){
            return false;
        } else {
            return true;
        }
    }

}
