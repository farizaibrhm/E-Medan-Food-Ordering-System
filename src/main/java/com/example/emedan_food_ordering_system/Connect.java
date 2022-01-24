//package com.example.emedan_food_ordering_system;
//
//import org.postgresql.Driver;
//
//import java.net.URI;
//import java.sql.Connection;
//import java.sql.DriverManager;
//
//public class Connect {
//    public static Connection createConnection() {
//        Connection con = null;
//        String url = "jdbc:postgresql://ec2-44-199-52-133.compute-1.amazonaws.com:5432/danpunma7i9eh0";
//        String username = "kgkcfexavaezbv";
//        String password = "452a173c45857bc5d4a0e09e553e6748e19271602a8311160d7dca2ee3cf40a6";
//        System.out.println("In DBConnection.java.class");
//        try {
//        try {
//            Class.forName("org.postgresql.Driver");
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//        con = DriverManager.getConnection(url, username, password);
//        System.out.println("Printing connection object" + con);
//    }catch(
//    Exception e)
//    {
//        e.printStackTrace();
//    }
//    return con;
//}
//}
