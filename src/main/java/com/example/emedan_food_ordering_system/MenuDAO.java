package com.example.emedan_food_ordering_system;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

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
        String result = "Data successfully inserted!";
        String sql = "INSERT INTO menu values (?,?,?,?,?,?)";

        PreparedStatement ps;
        FileInputStream fis;


        try {
            File image= new File(addmenu.getMENUIMAGE());
            ps = con.prepareStatement(sql);
            ps.setString(1, addmenu.getMENUID());
            ps.setString(2, addmenu.getMENUNAME());
            fis=new FileInputStream(image);
            ps.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
            ps.setString(4, addmenu.getMENUDESC());
            ps.setDouble(5, addmenu.getMENUPRICE());
            ps.setString(6, addmenu.getMENUTYPE());
//            ps.setInt(7, addmenu.getCWORKID());
            ps.executeUpdate();

        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            result = "Data not inserted!";
        }
        catch (FileNotFoundException e)
        {
            e.printStackTrace();
        }
        return result;
    }


}
