package emfos.DAO;

import emfos.DBConnect.DBConnection;
import emfos.Model.menu;
import emfos.Model.order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class orderDAO {

    public boolean placeOrder(String stuid){
        Connection con = DBConnection.getConn();
        int ORDERNO = 1000, i = 0;

        try {
            PreparedStatement ps = con.prepareStatement("SELECT MAX(\"ORDERNO\") from public.forder;");
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                ORDERNO = rs.getInt(1);
                ORDERNO = 1000 + ORDERNO;
            }
            PreparedStatement ps1 = con.prepareStatement("SELECT \"m\".\"MENUNAME\", \"c\".\"MENUID\", \"c\".\"CWORKID\", \"c\".\"CARTQUANTITY\", \"c\".\"CARTPRICE\", \"c\".\"CARTTOTALPRICE\" FROM public.menu \"m\", public.cart \"c\" WHERE \"c\".\"MENUID\" = \"m\".\"MENUID\" AND \"c\".\"CWORKID\" = \"m\".\"CWORKID\" AND  \"c\".\"STUDENTID\"=?;");

            ps1.setString(1, stuid);
            ResultSet rs1 = ps1.executeQuery();

            while (rs1.next()){
                ORDERNO++;
                int mID = rs1.getInt("MENUID");
                String mName = rs1.getString("MENUNAME");
                int cQuantity = rs1.getInt("CARTQUANTITY");
                double cPrice = rs1.getDouble("CARTPRICE");
                double cTPrice = rs1.getDouble("CARTTOTALPRICE");
                String cWorkID = rs1.getString("CWORKID");
                String oStatus = "Pending";

                i = con.createStatement().executeUpdate("INSERT INTO public.forder( \"ORDERID\", \"ORDERQUANTITY\", \"ORDERPRICE\", \"ORDERSTATUS\", \"STUDENTID\", \"CWORKID\", \"ORDERNO\", \"ORDERTPRICE\", \"MENUID\") VALUES " +
                        "(default,'" + cQuantity + "','" + cPrice + "','" + oStatus + "','" + stuid + "', '" + cWorkID + "', '" + ORDERNO + "', '"+cTPrice+"', '"+mID+"')");
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

    public boolean updateOrder(order upOrder)
    {

        Connection con = DBConnection.getConn();

        int i = 0;
        try
        {
            PreparedStatement preparedStatement = (PreparedStatement)
                    con.prepareStatement("UPDATE public.forder \n" +
                            "\tSET  \"ORDERSTATUS\"=?" +
                            "\tWHERE \"ORDERID\" =?  ;");
            // Parameters start with 1

            preparedStatement.setString(1, upOrder.getORDERSTATUS());
            preparedStatement.setInt(2, upOrder.getORDERID());

            //preparedStatement.setString(5, mn.getFileName());
            //preparedStatement.setString(6, mn.getSavePath());

            i = preparedStatement.executeUpdate();
        }

        catch (SQLException e)
        {
            e.printStackTrace();
        }
        if (i == 0)
        {
            return false;
        } else {
            return true;
        }
    }

    public order getOrderByOrderNoCwork(int id, String cworkid)
    {
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
