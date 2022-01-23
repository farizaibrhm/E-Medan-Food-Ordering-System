

package com.example.emedan_food_ordering_system;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;


public class MenuDAO
{
    private String dbUrl = "jdbc:mysql://localhost:3306/emfos";
    private String dbUname = "root";
    private String dbPassword = "";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";



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
        String sql = "INSERT into menu (MENUID, MENUNAME,MENUIMAGE, MENUDESC, MENUTPRICE, MENUTYPE, CWORKID) VALUES ( ?,?, ?, ?, ?, ?,?);";




        try {
                ps = con.prepareStatement(sql);
                //File image= new File(addmenu.getMENUIMAGE());
                ps.setString(1, addmenu.getMENUID());
                ps.setString(2, addmenu.getMENUNAME());
                //fis=new FileInputStream(image);
                //ps.setBinaryStream(3,fis, (int) (image.length()))
                ps.setBlob(3, addmenu.getMENUIMAGE());
                ps.setString(4, addmenu.getMENUDESC());
                ps.setDouble(5, addmenu.getMENUPRICE());
                ps.setString(6, addmenu.getMENUTYPE());
                ps.setInt(7, addmenu.getCWORKID());
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


}


