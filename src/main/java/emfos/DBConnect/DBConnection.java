package emfos.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {

    public static Connection con;

    public static Connection getConn() {
        String loadDriver = "org.postgresql.Driver";
        String dbURL = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
        String dbUSERNAME = "kgkcfexavaezbv";
        String dbPASSWORD = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";

        try {
            Class.forName(loadDriver);
            con = DriverManager.getConnection(dbURL, dbUSERNAME, dbPASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (con);
    }

    //Creating universal method to close connect will mysql database
//    public static void CloseConnection() {
//        if (con!= null) {
//            try {
//                con.close();
//                con = null;
//            } catch (SQLException ex) {
//                ex.printStackTrace();
//            }
//        }
//    }


        //Creating universal method to query for inserting or updating information in mysql database
        public static int insertUpdateFromSqlQuery (String SqlQueryString){
            int i = 2;
            try {
                //Checking whether the connection is null or null
                if (con == null) {
                    getConn();
                }
                //Querying the query
                i = con.createStatement().executeUpdate(SqlQueryString);

            } catch (Exception ex) {
                ex.printStackTrace();
            }
            return i;
        }
    }

