package emfos.DAO;

import emfos.DBConnect.DBConnection;
import emfos.Model.feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class feedbackDAO {

    public boolean sendFeedback(feedback f){

        Connection con = DBConnection.getConn();

        String sql = "INSERT INTO public.feedback(\"FEEDBACKID\", \"FEEDBACKMESSAGE\", \"ORDERID\") VALUES (default , ?,  ?);";

        int i = 0;

        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, f.getFEEDBACKMESSAGE());
            ps.setInt(2, f.getORDERID());

            i = ps.executeUpdate();

        }catch (SQLException e){
            e.printStackTrace();
        }
        if (i == 0){
            return false;
        } else {
            return true;
        }
    }

    public int getFeedbackbyORDERID(int oid){
        Connection con = DBConnection.getConn();

        int sfid = 0;

        String sql="SELECT \"ORDERID\" FROM public.feedback WHERE \"ORDERID\"=?;";

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, oid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                sfid = rs.getInt("ORDERID");
            }

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return sfid;
    }
}
