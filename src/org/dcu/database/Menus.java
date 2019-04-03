package org.dcu.database;

import org.dcu.models.Menu;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 * Menu Database Implementation
 */
public class Menus {

  /**
   * Create table mouraua2_menus in database
   * @throws SQLException
   * @throws ClassNotFoundException
   */
  public static void createTable() throws SQLException, ClassNotFoundException {
    Statement stmt = DatabaseConnection.connect();
    stmt.executeQuery("CREATE TABLE mouraua2_menus (" +
            "    id INTEGER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1)," +
            "    name VARCHAR(255)," +
            "    description VARCHAR(255)," +
            "    restaurant INTEGER," +
            "    price BINARY_DOUBLE," +
            "    PRIMARY KEY(id)," +
            "    CONSTRAINT FK_MENUS_RESTAURANTS_id FOREIGN KEY (restaurant) REFERENCES MOURAUA2_RESTAURANTS(ID) ON DELETE SET NULL" +
            ")");
    DatabaseConnection.close();
  }

  /**
   * Drop table mouraua2_menus from database
   * @throws SQLException
   * @throws ClassNotFoundException
   */
  public static void dropTable() throws SQLException, ClassNotFoundException {
    Statement stmt = DatabaseConnection.connect();
    stmt.execute("DROP TABLE mouraua2_menus");
    DatabaseConnection.close();
  }

  /**
   * Get a List of Menu from the given restaurant
   * @param restaurant the restaurant id
   * @return the List a Menu
   */
  public static Vector<Menu> getList(int restaurant) {
    Vector<Menu> menus = new Vector<>();
    try {
      Statement stmt = DatabaseConnection.connect();
      ResultSet rs = stmt.executeQuery("select * from mouraua2_menus where restaurant=" + restaurant);
      while (rs.next()) {
        Menu menu = new Menu();
        menu.setId(rs.getInt(1));
        menu.setName(rs.getString(2));
        menu.setDescription(rs.getString(3));
        menu.setRestaurant(rs.getInt(4));
        menu.setPrice(rs.getDouble(5));
        menus.add(menu);
      }
      DatabaseConnection.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
    return menus;
  }

  /**
   * Get a menu from his id
   * @param id
   * @return the Menu
   */
  public static Menu get(int id) {
    try {
      Statement stmt = DatabaseConnection.connect();
      ResultSet rs = stmt.executeQuery("select * from mouraua2_menus where id=" + id);
      Menu menu = null;
      if (rs.next()) {
        menu = new Menu();
        menu.setId(rs.getInt(1));
        menu.setName(rs.getString(2));
        menu.setDescription(rs.getString(3));
        menu.setRestaurant(rs.getInt(4));
        menu.setPrice(rs.getDouble(5));
      }
      DatabaseConnection.close();
      return menu;
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * Add a new menu in database
   * @param menu
   */
  public static void add(Menu menu) {
    try {
      Statement stmt = DatabaseConnection.connect();
      stmt.executeUpdate("INSERT INTO mouraua2_menus (name, description, restaurant, price) VALUES ('" +
              menu.getName() +"', '" + menu.getDescription() +"', " + menu.getRestaurant() + ", " + menu.getPrice()+ ")");
      DatabaseConnection.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
  }
}
