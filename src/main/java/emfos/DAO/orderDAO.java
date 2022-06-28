package emfos.DAO;

import emfos.DBConnect.DBConnection;
import emfos.Model.cart;
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

                    PreparedStatement ps1 = con.prepareStatement("SELECT \"CARTQUANTITY\", \"MENUID\" FROM public.cart WHERE \"STUDENTID\"=?");

                    ps1.setString(1, stuid);
                    ResultSet rs1 = ps1.executeQuery();
                    while (rs1.next()){
                        int quantity = rs1.getInt("CARTQUANTITY");
                        String mid = rs1.getString("MENUID");

                        PreparedStatement ps2 = con.prepareStatement("SELECT MAX(\"ORDERID\")from public.forder;");
                        ResultSet rs2 = ps2.executeQuery();

                        if (rs2.next()) {
                            oID= rs2.getInt(1);
                        }

                        con.createStatement().executeUpdate("INSERT INTO public.orderitem(\"ORDERITEMID\", \"ORDERITEMQUANTITY\", \"ORDERID\", \"MENUID\")" +
                                "VALUES (default,'" + quantity + "','" + oID + "','" + mid + "')");

                        con.createStatement().executeUpdate("INSERT INTO public.payment(\"PAYMENTID\", \"FILENAME\", \"SAVEPATH\", \"ORDERID\")" +
                                "VALUES (default,'" + fileName + "','" + savepath + "','" + oID + "')");
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

    public boolean updateOrder(order upOrder)
    {
        Connection con = DBConnection.getConn();

        int i = 0;
        try
        {
            PreparedStatement preparedStatement = (PreparedStatement)
                    con.prepareStatement("UPDATE public.forder \n" +
                            "\tSET  \"ORDERSTATUS\"=?" +
                            "\tWHERE \"ORDERNO\" =?  ;");

            preparedStatement.setString(1, upOrder.getORDERSTATUS());
            preparedStatement.setInt(2, upOrder.getORDERNO());

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

    public order getOrderByORDERID(int id, String stuid){
        Connection con = DBConnection.getConn();

        order o = new order();

        String sql = "SELECT * FROM public.forder WHERE \"ORDERID\"=? AND \"STUDENTID\"=?;";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, stuid);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                o.setORDERID(rs.getInt("ORDERID"));
                o.setORDERNO(rs.getInt("ORDERNO"));
                o.setORDERDATE(rs.getString("ORDERDATE"));
                o.setORDERTIME(rs.getString("ORDERTIME"));
                o.setORDERSTATUS(rs.getString("ORDERSTATUS"));
                o.setORDERTPRICE(rs.getDouble("ORDERTPRICE"));
                o.setSTUDENTID(rs.getString("STUDENTID"));
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return o;
    }

    public boolean cancelOrder(int id, String stuid){
        Connection con = DBConnection.getConn();

        String sql = "DELETE FROM public.forder WHERE \"ORDERID\"=? AND \"STUDENTID\"=?;";

        int i = 0;

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, stuid);

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