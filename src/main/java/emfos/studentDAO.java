package emfos;

import emfos.DBConnect.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class studentDAO {

    //registration

    static PreparedStatement ps = null;
    static ResultSet rs = null;

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

    public void updateStudent(student bean)
    {
        String STUDENTID = bean.getSTUDENTID();
        String STUDENTNAME = bean.getSTUDENTNAME();
        String STUDENTPHONENO = bean.getSTUDENTPHONENO();
        String STUDENTEMAIL = bean.getSTUDENTEMAIL();
        String STUDENTPASSWORD = bean.getSTUDENTPASSWORD();
        try {

            //New step using CONNECTION MANAGER
            //Call getConnection() method
            Connection con = DBConnection.getConn();
            //3. create statement
            //Statement stmt = con.createStatement();
            ps = con.prepareStatement("UPDATE public.student SET  \"STUDENTNAME\"=?," +
                    " \"STUDENTPHONENO\"=?, \"STUDENTEMAIL\"=?, \"STUDENTPASSWORD\"=? WHERE \"STUDENTID\"=?");
            //ps.setString(1,bean.getName());
            ps.setString(1, STUDENTNAME);
            ps.setString(2, STUDENTPHONENO);
            ps.setString(3, STUDENTEMAIL);
            ps.setString(4, STUDENTPASSWORD);
            ps.setString(5, STUDENTID);

            //4. execute query
            //execute, executequery(select stmt), executeupdate(ddl,dml)
            ps.executeUpdate();
            System.out.println("Successfully updated");

            //5. close connection
            con.close();
            //can use exception only, if using sqlexception add surround
        }catch(SQLException e) {
            e.printStackTrace();
            //System.out.print(e);}
        }
    }
    public static List<student> getAllStudents()
    {
        List<student> sts = new ArrayList<student>();

        try {
            //2. create connection
            Connection con = DBConnection.getConn();

            //3. create statement
            Statement stmt = con.createStatement();
            String sql = "SELECT \"*\" FROM public.student order by \"STUDENTID\"";
            ResultSet rs = stmt.executeQuery(sql);
            //4. execute query

            while(rs.next()) {	//process result
                student st = new student();
                st.setSTUDENTID(rs.getString("STUDENTID"));
                st.setSTUDENTNAME(rs.getString("STUDENTNAME"));
                st.setSTUDENTPHONENO(rs.getString("STUDENTPHONENO"));
                st.setSTUDENTEMAIL(rs.getString("STUDENTEMAIL"));
                st.setSTUDENTPASSWORD(rs.getString("STUDENTPASSWORD"));
                sts.add(st);

            }
            //5. close connection
            con.close();
            //can use exception only, if using sqlexception add surround
        }catch(SQLException e) {
            e.printStackTrace();
            //System.out.print(e);}
        }
        return sts;
    }


    public static student getStudentsById(String STUDENTID)
    {
        student st = new student();

        try {
            //2. create connection
            Connection con = DBConnection.getConn();

            //3. create statement
            ps = con.prepareStatement("SELECT \"*\" FROM public.student WHERE \"STUDENTID\"=?"); //? refer to id we pass
            ps.setString(1, STUDENTID);

            //4. execute query
            rs = ps.executeQuery();
            if(rs.next()) {
                st.setSTUDENTID(rs.getString("STUDENTID"));
                st.setSTUDENTNAME(rs.getString("STUDENTNAME"));
                st.setSTUDENTPHONENO(rs.getString("STUDENTPHONENO"));
                st.setSTUDENTEMAIL(rs.getString("STUDENTEMAIL"));
                st.setSTUDENTPASSWORD(rs.getString("STUDENTPASSWORD"));
            }
            //5. close connection
            con.close();
            //can use exception only, if using sqlexception add surround
        }catch(SQLException e) {
            e.printStackTrace();
            //System.out.print(e);}
        }

        return st;
    }

}
