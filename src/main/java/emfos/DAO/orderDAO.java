package emfos.DAO;

import emfos.DBConnect.DBConnection;
import emfos.Model.order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class orderDAO {

    public boolean placeOrder(String stuid, double amount, String fileName, String savepath){
        Connection con = DBConnection.getConn();
        int ORDERNO = 1000, oID = 0, i = 0;

        try {
            PreparedStatement ps = con.prepareStatement("SELECT MAX(\"ORDERNO\") from public.forder;");
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                ORDERNO = rs.getInt(1);
                ORDERNO = ORDERNO + 1000;

                String oStatus = "Pending";

                i = con.createStatement().executeUpdate("INSERT INTO public.forder( \"ORDERID\", \"ORDERNO\", \"ORDERTPRICE\", \"ORDERSTATUS\", \"STUDENTID\") VALUES " +
                        "(default,'" + ORDERNO + "','" + amount + "','" + oStatus + "','" + stuid + "')");

                if (i>0){
                    PreparedStatement ps1 = con.prepareStatement("SELECT \"CARTQUANTITY\", \"MENUID\", \"CWORKID\" FROM public.cart WHERE \"STUDENTID\"=?");
                    ps1.setString(1, stuid);
                    ResultSet rs1 = ps1.executeQuery();
                    while (rs1.next()){
                        int quantity = rs1.getInt("CARTQUANTITY");
                        String mid = rs1.getString("MENUID");
                        String cafeid = rs1.getString("CWORKID");

                        PreparedStatement ps2 = con.prepareStatement("SELECT MAX(\"ORDERID\")from public.forder;");
                        ResultSet rs2 = ps2.executeQuery();

                        if (rs2.next()) {
                            oID= rs2.getInt(1);
                        }

                        con.createStatement().executeUpdate("INSERT INTO public.orderitem(\"ORDERITEMID\", \"ORDERITEMQUANTITY\", \"ORDERID\", \"MENUID\", \"CWORKID\")" +
                                "VALUES (default,'" + quantity + "','" + oID + "','" + mid + "', '" + cafeid + "')");

                        con.createStatement().executeUpdate("INSERT INTO public.payment(\"PAYMENTID\", \"FILENAME\", \"SAVEPATH\", \"ORDERID\", \"STUDENTID\")" +
                                "VALUES (default,'" + fileName + "','" + savepath + "','" + oID + "', '" + stuid + "')");
                    }
                }
                ORDERNO++;
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        if (i == 0){
            return false;
        } else {
            return true;
        }
    }

    public order getOrderByOrderNoStudent(int id, String stuid){
        Connection con = DBConnection.getConn();

        order o = new order();

        //kalau retrieve kat student
        String sql= "SELECT \"m\".\"MENUID\", \"m\".\"MENUNAME\", \"c\".\"CWORKSTALLNAME\", \"s\".\"STUDENTNAME\", \"o\".* FROM public.menu \"m\", public.student \"s\", public.cafeworker \"c\", public.forder \"o\" WHERE \"m\".\"MENUID\" = \"o\".\"MENUID\" AND \"s\".\"STUDENTID\" = \"o\".\"STUDENTID\" AND \"c\".\"CWORKID\"=\"o\".\"CWORKID\" AND \"o\".\"ORDERNO\" =? AND \"o\".\"STUDENTID\"=?";

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, stuid);
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                o.setORDERID(rs.getInt("ORDERID"));
                o.setORDERNO(rs.getInt("ORDERNO"));
                o.setORDERDATE(rs.getString("ORDERDATE"));
                o.setORDERTIME(rs.getString("ORDERTIME"));
                o.setORDERSTATUS(rs.getString("ORDERSTATUS"));
                o.setMENUID(rs.getInt("MENUID"));
                o.setMENUNAME(rs.getString("MENUNAME"));
                o.setORDERPRICE(rs.getDouble("ORDERPRICE"));
                o.setORDERQUANTITY(rs.getInt("ORDERQUANTITY"));
                o.setORDERTPRICE(rs.getDouble("ORDERTPRICE"));
                o.setSTUDENTID(rs.getString("STUDENTID"));
                o.setSTUDENTNAME(rs.getString("STUDENTNAME"));
                o.setCWORKID(rs.getString("CWORKID"));
                o.setCWORKSTALLNAME(rs.getString("CWORKSTALLNAME"));
            }

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return o;
    }

    public order getOrderByOrderNoCwork(int id, String cworkid){
        Connection con = DBConnection.getConn();

        order o = new order();
        // kalau retrieve kat cafeworker
        String sql= "SELECT \"m\".\"MENUID\", \"m\".\"MENUNAME\", \"c\".\"CWORKSTALLNAME\", \"s\".\"STUDENTNAME\", \"o\".* FROM public.menu \"m\", public.student \"s\", public.cafeworker \"c\", public.forder \"o\" WHERE \"m\".\"MENUID\" = \"o\".\"MENUID\" AND \"s\".\"STUDENTID\" = \"o\".\"STUDENTID\" AND \"c\".\"CWORKID\"=\"o\".\"CWORKID\" AND \"o\".\"ORDERNO\" =? AND \"o\".\"CWORKID\"=?";

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2,  cworkid);
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                o.setORDERID(rs.getInt("ORDERID"));
                o.setORDERNO(rs.getInt("ORDERNO"));
                o.setORDERDATE(rs.getString("ORDERDATE"));
                o.setORDERTIME(rs.getString("ORDERTIME"));
                o.setORDERSTATUS(rs.getString("ORDERSTATUS"));
                o.setMENUID(rs.getInt("MENUID"));
                o.setMENUNAME(rs.getString("MENUNAME"));
                o.setORDERPRICE(rs.getDouble("ORDERPRICE"));
                o.setORDERQUANTITY(rs.getInt("ORDERQUANTITY"));
                o.setORDERTPRICE(rs.getDouble("ORDERTPRICE"));
                o.setSTUDENTID(rs.getString("STUDENTID"));
                o.setSTUDENTNAME(rs.getString("STUDENTNAME"));
                o.setCWORKID(rs.getString("CWORKID"));
                o.setCWORKSTALLNAME(rs.getString("CWORKSTALLNAME"));
            }

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return o;
    }
}