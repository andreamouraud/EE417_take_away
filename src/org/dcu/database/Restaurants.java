package org.dcu.database;

import org.dcu.models.Restaurant;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 * Restaurants database implementation
 */
public class Restaurants {

  /**
   * Create table mouraua2_restaurants in database
   * @throws SQLException
   * @throws ClassNotFoundException
   */
  public static void createTable() throws SQLException, ClassNotFoundException {
    Statement stmt = DatabaseConnection.connect();
    stmt.executeQuery("CREATE TABLE mouraua2_restaurants (" +
            "    id INTEGER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1)," +
            "    name VARCHAR(255)," +
            "    location VARCHAR(255)," +
            "    owner INTEGER," +
            "    PRIMARY KEY(id)," +
            "    CONSTRAINT FK_RESTAURANTS_USERS_owner FOREIGN KEY (owner) REFERENCES MOURAUA2_USERS(ID) ON DELETE SET NULL" +
            ")");
    DatabaseConnection.close();
  }

  /**
   * Drop table mouraua2_restaurants from database
   * @throws SQLException
   * @throws ClassNotFoundException
   */
  public static void dropTable() throws SQLException, ClassNotFoundException {
    Statement stmt = DatabaseConnection.connect();
    stmt.execute("DROP TABLE mouraua2_restaurants");
    DatabaseConnection.close();
  }

  /**
   * Get restaurant list from owner
   * @param owner the owner id
   * @return the list of restaurant
   */
  public static Vector<Restaurant> getList(int owner) {
    Vector<Restaurant> restaurants = new Vector<>();
    try {
      Statement stmt = DatabaseConnection.connect();
      ResultSet rs = stmt.executeQuery("select * from mouraua2_restaurants where owner=" + owner);
      while (rs.next()) {
        Restaurant restaurant = new Restaurant();
        restaurant.setId(rs.getInt(1));
        restaurant.setName(rs.getString(2));
        restaurant.setLocation(rs.getString(3));
        restaurant.setOwner(rs.getInt(4));
        restaurants.add(restaurant);
      }
      DatabaseConnection.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
    return restaurants;
  }


  /**
   * Get all restaurants
   * @return a list a restaurant
   */
  public static Vector<Restaurant> getList() {
    Vector<Restaurant> restaurants = new Vector<>();
    try {
      Statement stmt = DatabaseConnection.connect();
      ResultSet rs = stmt.executeQuery("select * from mouraua2_restaurants");
      while (rs.next()) {
        Restaurant restaurant = new Restaurant();
        restaurant.setId(rs.getInt(1));
        restaurant.setName(rs.getString(2));
        restaurant.setLocation(rs.getString(3));
        restaurant.setOwner(rs.getInt(4));
        restaurants.add(restaurant);
      }
      DatabaseConnection.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
    return restaurants;
  }

  /**
   * Get a restaurant from its id
   * @param id
   * @return the restaurant
   */
  public static Restaurant get(int id) {
    try {
      Statement stmt = DatabaseConnection.connect();
      ResultSet rs = stmt.executeQuery("select * from mouraua2_restaurants where id=" + id);
      Restaurant restaurant = null;
      if (rs.next()) {
        restaurant = new Restaurant();
        restaurant.setId(rs.getInt(1));
        restaurant.setName(rs.getString(2));
        restaurant.setLocation(rs.getString(3));
        restaurant.setOwner(rs.getInt(4));
      }
      DatabaseConnection.close();
      return restaurant;
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * Add a restaurant to the database
   * @param restaurant
   */
  public static void add(Restaurant restaurant) {
    try {
      Statement stmt = DatabaseConnection.connect();

      stmt.executeUpdate("INSERT INTO mouraua2_restaurants (name, location, owner) VALUES ('" +
              restaurant.getName() +"', '" + restaurant.getLocation() +"', " + restaurant.getOwner()+ ")");
      DatabaseConnection.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
  }
}
