package emfos.DAO;

import emfos.DBConnect.DBConnection;
import emfos.Model.cafeworker;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class cafeworkerDAO {

    static PreparedStatement ps = null;
    static ResultSet rs = null;

    //registration
    public String registerCafeworker (cafeworker cwreg){

        String result = "User successfully registered!";
        Connection con = DBConnection.getConn();
        String sql = "INSERT INTO public.cafeworker(\n" +
                "\t\"CWORKID\", \"CWORKSTALLNAME\", \"CWORKPHONENO\", \"CWORKEMAIL\", \"CWORKPASSWORD\", \"CWORKACCNUM\", \"CWORKACCNAME\", \"CWORKBANKNAME\")\n" +
                "\tVALUES (?, ?, ?, ?, ?, ?, ?, ?);";

        PreparedStatement ps;

        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, cwreg.getCWORKID());
            ps.setString(2, cwreg.getCWORKSTALLNAME());
            ps.setString(3, cwreg.getCWORKPHONENO());
            ps.setString(4, cwreg.getCWORKEMAIL());
            ps.setString(5, cwreg.getCWORKPASSWORD());
            ps.setString(6, cwreg.getCWORKACCNUM());
            ps.setString(7, cwreg.getCWORKACCNAME());
            ps.setString(8, cwreg.getCWORKBANKNAME());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            result = "User not registered!";
        }
        return result;
    }

    public  boolean loginCafeworker(cafeworker cwlogin){

        boolean status = false;

        Connection con = DBConnection.getConn();

        String sql = "SELECT \"CWORKID\", \"CWORKSTALLNAME\", \"CWORKPHONENO\", \"CWORKEMAIL\", \"CWORKPASSWORD\", \"CWORKACCNUM\", \"CWORKACCNAME\", \"CWORKBANKNAME\"\n" +
                "\tFROM public.cafeworker WHERE \"CWORKID\"=? AND \"CWORKPASSWORD\"=?;";
        PreparedStatement ps;
        try {

            ps = con.prepareStatement(sql);
            ps.setString(1,cwlogin.getCWORKID());
            ps.setString(2,cwlogin.getCWORKPASSWORD());

            ResultSet rs = ps.executeQuery();
            status = rs.next();

            cwlogin.setCWORKID(rs.getString("CWORKID"));
            cwlogin.setCWORKSTALLNAME(rs.getString("CWORKSTALLNAME"));
            cwlogin.setCWORKPHONENO(rs.getString("CWORKPHONENO"));
            cwlogin.setCWORKEMAIL(rs.getString("CWORKEMAIL"));
            cwlogin.setCWORKEMAIL(rs.getString("CWORKEMAIL"));
            cwlogin.setCWORKACCNUM(rs.getString("CWORKACCNUM"));
            cwlogin.setCWORKACCNAME(rs.getString("CWORKACCNAME"));
            cwlogin.setCWORKBANKNAME(rs.getString("CWORKBANKNAME"));

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    public boolean updateCafeWorker(cafeworker bean)
    {
        String CWORKID = bean.getCWORKID();
        String CWORKSTALLNAME = bean.getCWORKSTALLNAME();
        String CWORKPHONENO = bean.getCWORKPHONENO();
        String CWORKEMAIL = bean.getCWORKEMAIL();
        String CWORKPASSWORD = bean.getCWORKPASSWORD();
        String CWORKACCNUM = bean.getCWORKACCNUM();
        String CWORKACCNAME = bean.getCWORKACCNAME();
        String CWORKBANKNAME = bean.getCWORKBANKNAME();
        try {

            //New step using CONNECTION MANAGER
            //Call getConnection() method
            Connection con = DBConnection.getConn();
            //3. create statement
            //Statement stmt = con.createStatement();
            ps = con.prepareStatement("UPDATE public.cafeworker SET  \"CWORKSTALLNAME\"=?," +
                    " \"CWORKPHONENO\"=?, \"CWORKEMAIL\"=?, \"CWORKPASSWORD\"=?, \"CWORKACCNUM\"=?, " +
                    "\"CWORKACCNAME\"=? , \"CWORKBANKNAME\"=? WHERE \"CWORKID\"=?");
            //ps.setString(1,bean.getName());
            ps.setString(1, CWORKSTALLNAME);
            ps.setString(2, CWORKPHONENO);
            ps.setString(3, CWORKEMAIL);
            ps.setString(4, CWORKPASSWORD);
            ps.setString(5, CWORKACCNUM);
            ps.setString(6, CWORKACCNAME);
            ps.setString(7, CWORKBANKNAME);
            ps.setString(8, CWORKID);

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
        return false;
    }

    public static List <cafeworker> getAllCafeWorkers()
    {
        List<cafeworker> cws = new ArrayList<cafeworker>();

        try {
            //2. create connection
            Connection con = DBConnection.getConn();

            //3. create statement
            Statement stmt = con.createStatement();
            String sql = "SELECT \"*\" FROM public.cafeworker order by \"CWORKID\"";
            ResultSet rs = stmt.executeQuery(sql);
            //4. execute query

            while(rs.next()) {	//process result
                cafeworker cw = new cafeworker();
                cw.setCWORKID(rs.getString("CWORKID"));
                cw.setCWORKSTALLNAME(rs.getString("CWORKSTALLNAME"));
                cw.setCWORKPHONENO(rs.getString("CWORKPHONENO"));
                cw.setCWORKEMAIL(rs.getString("CWORKEMAIL"));
                cw.setCWORKPASSWORD(rs.getString("CWORKPASSWORD"));
                cw.setCWORKACCNUM(rs.getString("CWORKACCNUM"));
                cw.setCWORKACCNAME(rs.getString("CWORKACCNAME"));
                cw.setCWORKBANKNAME(rs.getString("CWORKBANKNAME"));
                cws.add(cw);

            }
            //5. close connection
            con.close();
            //can use exception only, if using sqlexception add surround
        }catch(SQLException e) {
            e.printStackTrace();
            //System.out.print(e);}
        }
        return cws;
    }

    public static cafeworker getCafeWorkersById(String CWORKID)
    {
        cafeworker cw = new cafeworker();

        try {
            //2. create connection
            Connection con = DBConnection.getConn();

            //3. create statement
            ps = con.prepareStatement("SELECT \"*\" FROM public.cafeworker WHERE \"CWORKID\"=?"); //? refer to id we pass
            ps.setString(1, CWORKID);

            //4. execute query
            rs = ps.executeQuery();
            if(rs.next()) {
                cw.setCWORKID(rs.getString("CWORKID"));
                cw.setCWORKSTALLNAME(rs.getString("CWORKSTALLNAME"));
                cw.setCWORKPHONENO(rs.getString("CWORKPHONENO"));
                cw.setCWORKEMAIL(rs.getString("CWORKEMAIL"));
                cw.setCWORKPASSWORD(rs.getString("CWORKPASSWORD"));
                cw.setCWORKACCNUM(rs.getString("CWORKACCNUM"));
                cw.setCWORKACCNAME(rs.getString("CWORKACCNAME"));
                cw.setCWORKBANKNAME(rs.getString("CWORKBANKNAME"));
            }
            //5. close connection
            con.close();
            //can use exception only, if using sqlexception add surround
        }catch(SQLException e) {
            e.printStackTrace();
        }

        return cw;
    }


    public boolean deleteCafeWorkerAccount(String CWORKID){
        Connection con = DBConnection.getConn();

        String sql = "DELETE FROM public.cafeworker WHERE \"CWORKID\"=?";

        int i = 0;

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, CWORKID);

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