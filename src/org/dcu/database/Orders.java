package org.dcu.database;

import org.dcu.models.Order;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 * Orders database implementation
 */
public class Orders {

  /**
   * Create table mouraua2_orders in database
   * @throws SQLException
   * @throws ClassNotFoundException
   */
  public static void createTable() throws SQLException, ClassNotFoundException {
    Statement stmt = DatabaseConnection.connect();
    stmt.executeQuery("CREATE TABLE mouraua2_orders (" +
            "    id INTEGER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1)," +
            "    restaurant INTEGER," +
            "    menu INTEGER," +
            "    customer VARCHAR(255)," +
            "    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP," +
            "    PRIMARY KEY(id)," +
            "    CONSTRAINT FK_ORDERS_RESTAURANT_id FOREIGN KEY (restaurant) REFERENCES MOURAUA2_RESTAURANTS(ID) ON DELETE SET NULL," +
            "    CONSTRAINT FK_ORDERS_MENU_id FOREIGN KEY (menu) REFERENCES MOURAUA2_MENUS(ID) ON DELETE SET NULL" +
            ")");
    DatabaseConnection.close();
  }

  /**
   * Drop table mouraua2_orders from database
   * @throws SQLException
   * @throws ClassNotFoundException
   */
  public static void dropTable() throws SQLException, ClassNotFoundException {
    Statement stmt = DatabaseConnection.connect();
    stmt.execute("DROP TABLE mouraua2_orders");
    DatabaseConnection.close();
  }

  /**
   * Get a List of Order for a given restaurant
   * @param restaurant the restaurant id
   * @return the list of Order
   */
  public static Vector<Order> getList(int restaurant) {
    Vector<Order> orders = new Vector<>();
    try {
      Statement stmt = DatabaseConnection.connect();
      ResultSet rs = stmt.executeQuery("select * from mouraua2_orders where restaurant=" + restaurant);
      while (rs.next()) {
        Order order = new Order();
        order.setId(rs.getInt(1));
        order.setRestaurant(rs.getInt(2));
        order.setMenu(rs.getInt(3));
        order.setCustomer(rs.getString(4));
        order.setTime(rs.getTimestamp(5));
        orders.add(order);
      }
      DatabaseConnection.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
    return orders;
  }

  /**
   * Get an order from its id
   * @param id
   * @return the Order
   */
  public static Order get(int id) {
    try {
      Statement stmt = DatabaseConnection.connect();
      ResultSet rs = stmt.executeQuery("select * from mouraua2_orders where id=" + id);
      Order order = null;
      if (rs.next()) {
        order = new Order();
        order.setId(rs.getInt(1));
        order.setRestaurant(rs.getInt(2));
        order.setMenu(rs.getInt(3));
        order.setCustomer(rs.getString(4));
        order.setTime(rs.getTimestamp(5));
      }
      DatabaseConnection.close();
      return order;
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * Add an Order to the database
   * @param order
   */
  public static void add(Order order) {
    try {
      Statement stmt = DatabaseConnection.connect();

      stmt.executeUpdate("INSERT INTO mouraua2_orders (restaurant, menu, customer) VALUES ('" +
              order.getRestaurant() +"', '" + order.getMenu() +"', '" + order.getCustomer()+ "')");
      DatabaseConnection.close();
    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
    }
  }
}
