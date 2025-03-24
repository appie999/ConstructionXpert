package com.constraction.constructionxpert.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConstrDB {

   private static final String URL = "jdbc:mysql://localhost:3306/construction";
   private static final String USER = "root";
   private static final String PASSWORD = "";

   public static Connection getConnection() throws SQLException {
      try {
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
         System.out.println("Connected to database");
         return con;
      } catch (ClassNotFoundException e) {
          throw new SQLException("could not load MySQL driver",e);
      }
   }
}
