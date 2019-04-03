package org.dcu.database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Database Connection Utils
 */
public class DatabaseConnection {
  private static String driver = "oracle.jdbc.OracleDriver";
  private static String server = "jdbc:oracle:thin:@ee417.c7clh2c6565n.eu-west-1.rds.amazonaws.com:1521:ee417";
  private static String user = "ee_user";
  private static String password = "ee_pass";

  static Connection con;

  /**
   * Open the connection and create a Statement to communicate
   * @return the created Statement
   * @throws ClassNotFoundException
   * @throws SQLException
   */
  static Statement connect() throws ClassNotFoundException, SQLException {
      Class.forName(driver);
      con = DriverManager.getConnection(server, user, password);
      return con.createStatement();
  }

  /**
   * Close the current connection
   * @throws SQLException
   */
  static void close() throws SQLException {
      con.close();
  }







}
