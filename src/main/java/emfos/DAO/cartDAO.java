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
                "\t\"CARTID\", \"MENUID\", \"CARTQUANTITY\",\"CWORKID\", \"STUDENTID\")\n" +
                "\tVALUES (default,?, 1, ?, ?);";

        int i = 0;

        try {
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, c.getMENUID());
            ps.setString(2, c.getCWORKID());
            ps.setString(3, c.getSTUDENTID());

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

    public int getMenuByMenuID(int id, String stuid){
        Connection con = DBConnection.getConn();

        int mid = 0;

        String sql="SELECT \"MENUID\" FROM public.cart WHERE \"MENUID\"=? AND \"STUDENTID\"=? ;";

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, stuid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                 mid = rs.getInt("MENUID");
            }

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return mid;
    }

    public int getMenuByCafeID(int menuid, String cafeid, String stuid){
        Connection con = DBConnection.getConn();

        int mcid = 0;

        String sql="SELECT \"MENUID\" FROM public.cart WHERE \"MENUID\"=? AND \"CWORKID\"=? AND \"STUDENTID\"=? ;";

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, menuid);
            ps.setString(2, cafeid);
            ps.setString(3, stuid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                mcid = rs.getInt("MENUID");
            }

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return mcid;
    }

    public int getQuantityByMENUID(int id, String stuid){
        Connection con = DBConnection.getConn();

        int qty = 0;

        String sql="SELECT \"CARTQUANTITY\" FROM public.cart WHERE \"MENUID\"=? AND \"STUDENTID\"=? ;";

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, stuid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                qty = rs.getInt("CARTQUANTITY");
                qty = qty + 1;
            }

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return qty;
    }

    public boolean updateQuantity (cart crt){
        Connection con = DBConnection.getConn();
        int i=0;
        String sql ="UPDATE public.cart SET \"CARTQUANTITY\"=? WHERE \"MENUID\"=? AND \"STUDENTID\"=?;";

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, crt.getCARTQUANTITY());
            ps.setInt(2, crt.getMENUID());
            ps.setString(3, crt.getSTUDENTID());
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

    public cart getItemByMENUID (int id, String stuid){
        Connection con = DBConnection.getConn();

        cart crt = new cart();

        String sql = "SELECT * FROM public.cart WHERE \"MENUID\"=? AND \"STUDENTID\"=?;";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, stuid);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                crt.setCARTID(rs.getInt("CARTID"));
                crt.setMENUID(rs.getInt("MENUID"));
                crt.setCARTQUANTITY(rs.getInt("CARTQUANTITY"));
                crt.setCWORKID(rs.getString("CWORKID"));
                crt.setSTUDENTID(rs.getString("STUDENTID"));
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return crt;
    }

    public boolean removeItemFromCart(int id, String stuid){
        Connection con = DBConnection.getConn();

        String sql = "DELETE FROM public.cart WHERE \"MENUID\"=? AND \"STUDENTID\"=?;";

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


    public boolean deleteCartOnceOrderHasBeenPlaced(String STUDENTID) {
        Connection con = DBConnection.getConn();

        String sql = "DELETE FROM public.cart WHERE \"STUDENTID\"=?;";

        int i = 0;

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, STUDENTID);

            i = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (i == 0) {
            return false;
        } else {
            return true;
        }
    }
}
