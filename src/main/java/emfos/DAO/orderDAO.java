package emfos.DAO;

import emfos.DBConnect.DBConnection;
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
}