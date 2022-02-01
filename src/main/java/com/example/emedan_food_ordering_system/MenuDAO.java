package com.example.emedan_food_ordering_system;


import java.io.FileInputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class MenuDAO
{

    private String dbUrl = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
    private String dbUname = "kgkcfexavaezbv";
    private String dbPassword = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";
    private String dbDriver = "org.postgresql.Driver";




    static ResultSet rs = null;
    public void loadDriver(String dbDriver)
    {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public Connection getConnection()
    {
        Connection con = null;
        try
        {
            con = DriverManager.getConnection(dbUrl,dbUname,dbPassword);
        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }

    public String addMenu(Menu addmenu)
    {
        loadDriver(dbDriver);
        Connection con = getConnection();
        String result = "Data successfully entered!";
        PreparedStatement ps;
        String sql = "INSERT INTO public.menu(\n" +
                "\t\"MENUID\", \"MENUNAME\", \"MENUDESC\", \"MENUTPRICE\", \"MENUTYPE\", \"fileName\", \"savePath\")\n" + "\tVALUES (default, ?, ?, ?, ?, ?, ?);";

        try
        {
            ps = con.prepareStatement(sql);

            ps.setString(1, addmenu.getMENUNAME());
            ps.setString(2, addmenu.getMENUDESC());
            ps.setDouble(3, addmenu.getMENUTPRICE());
            ps.setString(4, addmenu.getMENUTYPE());
            ps.setString(5, addmenu.getFileName());
            ps.setString(6, addmenu.getSavePath());
            //ps.setString(8, addmenu.getCWORKID());


            ps.executeUpdate();
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            result = "Data not entered";
        }
        return result;
    }

  public boolean updateMenu(Menu mn)
    {
        loadDriver(dbDriver);
        Connection con = getConnection();

        int i = 0;
        try
        {
            PreparedStatement preparedStatement = (PreparedStatement)
                    con.prepareStatement("UPDATE public.menu \n" +
                            "\tSET  \"MENUNAME\"=?, \"MENUDESC\"=?, \"MENUTPRICE\"=?, \"MENUTYPE\"=?" +
                            "\tWHERE \"MENUID\" =?;");
            // Parameters start with 1

            preparedStatement.setString(1, mn.getMENUNAME());
            preparedStatement.setString(2, mn.getMENUDESC());
            preparedStatement.setDouble(3, mn.getMENUTPRICE());
            preparedStatement.setString(4, mn.getMENUTYPE());
            preparedStatement.setInt(5, mn.getMENUID());
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

    public List<Menu> getAllUsers()
    {
        List<Menu> menus = new ArrayList<Menu>();
        try
        {
            loadDriver(dbDriver);
            Connection con = getConnection();
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery("SELECT \"MENUID\", \"MENUNAME\", \"MENUDESC\", \"MENUTPRICE\", \"MENUTYPE\", \"fileName\",\"savePath\"\n" +
                    "\tFROM public.menu;");
            while (rs.next()) {
                int MENUID = rs.getInt("MENUID");
                String MENUNAME = rs.getString("MENUNAME");
                String fileName = rs.getString("MENUIMAGE");
                String savePath = rs.getString("MENUIMAGE");
                String MENUDESC = rs.getString("MENUDESC");
                double MENUPRICE = rs.getDouble("MENUPRICE");
                String MENUTYPE = rs.getString("MENUTYPE");
                Menu menu = new Menu(MENUID,MENUNAME,fileName,savePath,MENUDESC,MENUPRICE,MENUTYPE);
                menus.add(menu);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return menus;
    }

   public Menu getMenuID (int menuId)
   {
        loadDriver(dbDriver);
        Connection con = getConnection();
        Menu mn = new Menu();
        try {
              PreparedStatement preparedStatement = (PreparedStatement)
                      con.prepareStatement("SELECT * FROM public.menu WHERE \"MENUID\" = ?;");
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
