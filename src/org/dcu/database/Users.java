package org.dcu.database;

import org.dcu.models.User;
import org.dcu.utils.HashingUtilities;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Users database implementation
 */
public class Users {

  /**
   * Create table mouraua2_users in database
   * @throws SQLException
   * @throws ClassNotFoundException
   */
  public static void createTable() throws SQLException, ClassNotFoundException {
    Statement stmt = DatabaseConnection.connect();
    stmt.executeQuery("CREATE TABLE mouraua2_users (" +
            "    id INTEGER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1)," +
            "    email VARCHAR(255) NOT NULL UNIQUE," +
            "    password VARCHAR(255) NOT NULL," +
            "    firstname VARCHAR(255) NOT NULL," +
            "    lastname VARCHAR(255) NOT NULL," +
            "    gender INTEGER," +
            "    salt VARCHAR(255)," +
            "    PRIMARY KEY(id)" +
            ")");
    DatabaseConnection.close();
  }

  /**
   * Drop table mouraua2_users from database
   * @throws SQLException
   * @throws ClassNotFoundException
   */
  public static void dropTable() throws SQLException, ClassNotFoundException {
      Statement stmt = DatabaseConnection.connect();
      stmt.execute("DROP TABLE mouraua2_users");
    DatabaseConnection.close();
  }

  /**
   * Add user to database
   * @param user
   */
  public static void add(User user) {
    try {
      Statement stmt = DatabaseConnection.connect();
      stmt.executeUpdate("INSERT INTO mouraua2_users (email, password, firstname, lastname, gender, salt)"
              + " VALUES ('" + user.getEmail() +"', '" + user.getPassword()+ "', '" + user.getFirstName() + "', '" + user.getLastName() + "', " + user.getGender() + ", '" + user.getSalt() + "')");
      DatabaseConnection.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
  }

  /**
   * Get a user from his credentials, perform salted hash validation
   * @param email user email
   * @param password user non hashed password
   * @return the user
   */
  public static User get(String email, String password) {
    try {
      Statement stmt = DatabaseConnection.connect();
      ResultSet rs = stmt.executeQuery("select * from mouraua2_users where email='" + email + "'");
      User user = null;
      if (rs.next()) {
        user = new User();
        user.setId(rs.getInt(1));
        user.setEmail(rs.getString(2));
        user.setPassword(rs.getString(3));
        user.setFirstName(rs.getString(4));
        user.setLastName(rs.getString(5));
        user.setGender(rs.getInt(6));
        user.setSalt(rs.getString(7));
      }
      DatabaseConnection.close();
      System.out.println("input   :" + password);
      System.out.println("hashed  :" + HashingUtilities.generateHashedPassword(password, user.getSalt()));
      System.out.println("database:" + user.getPassword());
      if (HashingUtilities.generateHashedPassword(password, user.getSalt()).equals(user.getPassword()))
        return user;
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
    return null;
  }

}
