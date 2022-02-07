package emfos.DAO;
import emfos.DBConnect.DBConnection;
import emfos.Model.cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class cartDAO {
    public boolean addItemToCart(cart c){

        Connection con = DBConnection.getConn();

        String sql = "INSERT INTO public.cart(\n" +
                "\t\"CARTID\", \"MENUID\", \"CARTPRICE\", \"CARTQUANTITY\", \"CARTTOTALPRICE\", \"CWORKID\", \"STUDENTID\")\n" +
                "\tVALUES (default, ?, ?, 1, ?, ?, ?);";

        int i = 0;

        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, c.getMENUID());
            ps.setDouble(2, c.getCARTPRICE());
            ps.setDouble(3, c.getCARTTOTALPRICE());
            ps.setString(4, c.getCWORKID());
            ps.setString(5, c.getSTUDENTID());

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

    public Double getPriceByMenuID(int id, String stuid){
        Connection con = DBConnection.getConn();

        Double price =0.0;

        cart crt = new cart();

        String sql="SELECT \"CARTPRICE\" FROM public.cart WHERE \"MENUID\"=? AND \"STUDENTID\"=? ;";

        try{PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, stuid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                price = rs.getDouble("CARTPRICE");
            }

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return price;
    }

    public boolean updateQuantity (cart crt){
        Connection con = DBConnection.getConn();
        int i=0;
        String sql ="UPDATE public.cart SET \"CARTQUANTITY\"=?, \"CARTTOTALPRICE\"=? WHERE \"MENUID\"=? AND \"STUDENTID\"=?;";

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, crt.getCARTQUANTITY());
            ps.setDouble(2, crt.getCARTTOTALPRICE());
            ps.setInt(3, crt.getMENUID());
            ps.setString(4, crt.getSTUDENTID());
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



}
