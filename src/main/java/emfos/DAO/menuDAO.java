package emfos.DAO;

import java.sql.*;

import emfos.DBConnect.DBConnection;
import emfos.Model.menu;

public class menuDAO {
    static ResultSet rs = null;

    public String addMenu(menu addmenu)
    {
        Connection con = DBConnection.getConn();
        String result = "Data successfully entered!";
        PreparedStatement ps;

        String sql = "INSERT INTO public.menu(\n" +
                "\t\"MENUID\", \"MENUNAME\", \"MENUDESC\", \"MENUTPRICE\", \"MENUTYPE\", \"fileName\", \"savePath\", \"CWORKID\")\n" + "\tVALUES (default, ?, ?, ?, ?, ?, ?, ?);";


        try{
            ps = con.prepareStatement(sql);

            ps.setString(1, addmenu.getMENUNAME());
            ps.setString(2, addmenu.getMENUDESC());
            ps.setDouble(3, addmenu.getMENUTPRICE());
            ps.setString(4, addmenu.getMENUTYPE());
            ps.setString(5, addmenu.getFileName());
            ps.setString(6, addmenu.getSavePath());
            ps.setString(7, addmenu.getCWORKID());
        }catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            result = "Data not entered";
        }
        return result;
    }

    public boolean updateMenu(menu mn)
    {
        Connection con = DBConnection.getConn();

        int i = 0;
        try
        {
            PreparedStatement preparedStatement = (PreparedStatement)
                    con.prepareStatement("UPDATE public.menu \n" +
                            "\tSET  \"MENUNAME\"=?, \"MENUDESC\"=?, \"MENUTPRICE\"=?, \"MENUTYPE\"=?" +
                            "\tWHERE \"MENUID\" =? AND \"CWORKID\" = ?;");
            // Parameters start with 1

            preparedStatement.setString(1, mn.getMENUNAME());
            preparedStatement.setString(2, mn.getMENUDESC());
            preparedStatement.setDouble(3, mn.getMENUTPRICE());
            preparedStatement.setString(4, mn.getMENUTYPE());
            preparedStatement.setInt(5, mn.getMENUID());
            preparedStatement.setString(6, mn.getCWORKID());
            //preparedStatement.setString(5, mn.getFileName());
            //preparedStatement.setString(6, mn.getSavePath());

            //preparedStatement.setString(8, upMenu.getCWORKID());
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

    public menu getMenuID (int menuId)
    {
        Connection con = DBConnection.getConn();
        menu mn = new menu();
        try {
            PreparedStatement preparedStatement = (PreparedStatement)
                    con.prepareStatement("SELECT * FROM public.menu WHERE \"MENUID\" = ? AND \"CWORKID\" = ?;");
            preparedStatement.setInt(1, menuId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {

                mn.setMENUID(rs.getInt("MENUID"));
                mn.setMENUNAME(rs.getString("MENUNAME"));
                mn.setMENUDESC( rs.getString("MENUDESC"));
                mn.setMENUTPRICE(rs.getDouble("MENUTPRICE")); ;
                mn.setMENUTYPE( rs.getString("MENUTYPE"));
                mn.setFileName(rs.getString("fileName"));
                mn.setSavePath(rs.getString("savePath"));
                mn.setSavePath(rs.getString("CWORKID"));
                //int menuId= rs.getInt("MENUID");
                //String cworkid = rs.getString("CWORKID");

            }
        }

        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return mn;
    }

}
