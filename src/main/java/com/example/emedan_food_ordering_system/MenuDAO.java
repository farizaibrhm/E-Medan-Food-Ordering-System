package com.example.emedan_food_ordering_system;


import java.io.FileInputStream;
import java.sql.*;


public class MenuDAO
{
    private String dbUrl = "jdbc:mysql://localhost:3306/emfos";
    private String dbUname = "root";
    private String dbPassword = "";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";

//    private String dbUrl = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
//    private String dbUname = "kgkcfexavaezbv";
//    private String dbPassword = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";
//    private String dbDriver = "org.postgresql.Driver";




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
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
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
        FileInputStream fis;
        String sql = "INSERT into menu (MENUID, MENUNAME, fileName, savePath, MENUDESC, MENUTPRICE, MENUTYPE, CWORKID) VALUES ( ?,?, ?, ?, ?, ?,?,?);";

        try {
            ps = con.prepareStatement(sql);
            //File image= new File(addmenu.getMENUIMAGE());
            ps.setString(1, addmenu.getMENUID());
            ps.setString(2, addmenu.getMENUNAME());
            //fis=new FileInputStream(image);
            //ps.setBinaryStream(3,fis, (int) (image.length()))
//            ps.setBlob(3, addmenu.getMENUIMAGE());
            ps.setString(3, addmenu.getFileName());
            ps.setString(4, addmenu.getSavePath());
            ps.setString(5, addmenu.getMENUDESC());
            ps.setDouble(6, addmenu.getMENUTPRICE());
            ps.setString(7, addmenu.getMENUTYPE());
            ps.setString(8, addmenu.getCWORKID());
            ps.executeUpdate();
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            result = "Data not entered";
        }
        /*catch (FileNotFoundException e)
        {
            e.printStackTrace();
        }*/
        return result;
    }

//
//    public void deleteMenu(String MENUID) throws SQLException {
////        boolean rowDeleted = true;
//
//        try (Connection con = getConnection();){
////             PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);)
////            statement.setInt(1, id);
////            rowDeleted = statement.executeUpdate() > 0;
//            String sql="delete from menu where MENUID=";
//            Statement statement = con.createStatement();
//
//            int i= statement.executeUpdate(sql+MENUID);
//        }catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }





}

