package emfos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

import emfos.DBConnect.DBConnection;

public class cafeworkerDAO {

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

        //login
//    public static cafeworker login(cafeworker cw){
//        Statement st = null;
//
//        Connection con = DBConnection.getConn();
//
//        String CWORKID = cw.getCWORKID();
//        String CWORKPASSWORD = cw.getCWORKPASSWORD();
//
//        String sql = "SELECT * FROM public.cafeworker WHERE \"CWORKID\"='" + CWORKID + "'AND \"CWORKPASSWORD\"='" + CWORKPASSWORD + "'";
//
//        System.out.println("Cafeworker ID is " + CWORKID);
//        System.out.println("Password is " + CWORKPASSWORD);
//        System.out.println("Query: "+sql);
//
//        try {
//            st = con.createStatement();
//            ResultSet rs = st.executeQuery(sql);
//            boolean more = rs.next();
//
//            //if cafeworker does not exist, set the isValid variable to false
//
//            if(!more){
//                System.out.println("Not a registered cafeworker");
//                cw.setValid(false);
//            }
//
//            //if cafeworker exist set the isValid variable to true
//            else if(more){
//
//                String CWORKSTALLNAME =rs.getString("CWORKSTALLNAME") ;
//                String CWORKPHONENO = rs.getString("CWORKPHONENO");
//                String CWORKEMAIL = rs.getString("CWORKEMAIL");
//                String CWORKACCNUM = rs.getString("CWORKACCNUM");
//                String CWORKACCNAME =rs.getString("CWORKACCNAME") ;
//                String CWORKBANKNAME = rs.getString("CWORKBANKNAME");
//
//                System.out.println("Welcome "+ CWORKSTALLNAME);
//
//                cw.setCWORKSTALLNAME(CWORKSTALLNAME);
//                cw.setCWORKPHONENO(CWORKPHONENO);
//                cw.setCWORKEMAIL(CWORKEMAIL);
//                cw.setCWORKACCNUM(CWORKACCNUM);
//                cw.setCWORKACCNAME(CWORKACCNAME);
//                cw.setCWORKBANKNAME(CWORKBANKNAME);
//                cw.setValid(true);
//            }
//        } catch (Exception ex){
//            System.out.println("Log In failed: An Exception has occurred! " + ex);
//        }
//        return cw;
//    }

    public  boolean loginCafeworker(cafeworker cwlogin){

        boolean status = false;

        Connection con = DBConnection.getConn();

        String sql = "SELECT \"CWORKID\", \"CWORKSTALLNAME\", \"CWORKPHONENO\", \"CWORKEMAIL\", \"CWORKPASSWORD\", \"CWORKACCNUM\", \"CWORKACCNAME\", \"CWORKBANKNAME\"\n" +
                "\tFROM public.cafeworker WHERE \"CWORKID\"=? AND \"CWORKPASSWORD\"=?;";
        PreparedStatement ps;
        try {

            ps = con.prepareStatement(sql);
            ps.setString(1,cwlogin.getCWORKID());
            ps.setString(2, cwlogin.getCWORKPASSWORD());

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

    public void updateCafeworker(cafeworker cw){
        Connection con = DBConnection.getConn();
        String sql ="UPDATE public.cafeworker\n" +
                "\tSET \"CWORKSTALLNAME\"=?, \"CWORKPHONENO\"=?, \"CWORKEMAIL\"=?, \"CWORKPASSWORD\"=?, \"CWORKACCNUM\"=?, \"CWORKACCNAME\"=?, \"CWORKBANKNAME\"=?\n" +
                "\tWHERE \"CWORKID\"=?;";
        PreparedStatement ps;

        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, cw.getCWORKSTALLNAME());
            ps.setString(2, cw.getCWORKPHONENO());
            ps.setString(3, cw.getCWORKEMAIL());
            ps.setString(4, cw.getCWORKPASSWORD());
            ps.setString(5, cw.getCWORKACCNUM());
            ps.setString(6, cw.getCWORKACCNAME());
            ps.setString(7, cw.getCWORKBANKNAME());
            ps.setString(8, cw.getCWORKID());
            ps.executeUpdate();

        } catch(SQLException e)
        {
            e.printStackTrace();
        }
    }

    public cafeworker getById (String CWORKID){
        Connection con = DBConnection.getConn();
        cafeworker cw = null;

        String sql ="SELECT * FROM public.cafeworker WHERE \"CWORKID\"=?;";
        PreparedStatement ps;

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, CWORKID);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                String CWORKSTALLNAME =rs.getString("CWORKSTALLNAME") ;
                String CWORKPHONENO = rs.getString("CWORKPHONENO");
                String CWORKEMAIL = rs.getString("CWORKEMAIL");
                String CWORKPASSWORD = rs.getString("CWORKPASSWORD");
                String CWORKACCNUM = rs.getString("CWORKACCNUM");
                String CWORKACCNAME =rs.getString("CWORKACCNAME") ;
                String CWORKBANKNAME = rs.getString("CWORKBANKNAME");
                cw = new cafeworker(CWORKID, CWORKSTALLNAME, CWORKPHONENO, CWORKEMAIL, CWORKPASSWORD, CWORKACCNUM, CWORKACCNAME, CWORKBANKNAME);

            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return cw;
    }

}
