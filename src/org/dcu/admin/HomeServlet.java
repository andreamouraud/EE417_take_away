package org.dcu.admin;

import org.dcu.database.Menus;
import org.dcu.database.Orders;
import org.dcu.database.Restaurants;
import org.dcu.database.Users;
import org.dcu.models.Menu;
import org.dcu.models.Order;
import org.dcu.models.Restaurant;
import org.dcu.models.User;
import org.dcu.utils.HashingUtilities;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Administration Page Servlet
 */
@WebServlet("/admin")
public class HomeServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Used to perform the actions taken on the page
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws ServletException
   * @throws IOException
   */
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    req.setAttribute("contextPath", req.getContextPath());
    String type = req.getParameter("type");
    if (type.equals("RESET DATABASE"))
        reset();
    else if (type.equals("POPULATE DATABASE"))
      populate();
    res.sendRedirect( req.getContextPath() + "/admin");
  }

  /**
   * Called when getting on the page, perform authentication check
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws ServletException
   * @throws IOException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    req.setAttribute("contextPath", req.getContextPath());
    User currentUser = (User) req.getSession(true).getAttribute("user");
    if (currentUser == null || currentUser.getId() != null) {
      req.getRequestDispatcher("admin/login").forward(req, res);
      return;
    }
    req.getRequestDispatcher( "admin/home.jsp").forward(req, res);
  }

  private void reset() throws IOException {
    try {
      Orders.dropTable();
      Menus.dropTable();
      Restaurants.dropTable();
      Users.dropTable();

      Users.createTable();
      Restaurants.createTable();
      Menus.createTable();
      Orders.createTable();
    } catch (Exception e) {
      throw new IOException("Failed to reset database");
    }
  }

  private void populate() throws IOException {
    try {
      reset();
      String salt = HashingUtilities.generateSalt();
      Users.add(new User("Andrea", "Mouraud", "user@dcu.ie", HashingUtilities.generateHashedPassword("password", salt), 1, salt));
      Restaurants.add(new Restaurant("Pizzeria", "O Connell Street, Dublin, Ireland", 1));
      Menus.add(new Menu("Pizza Margherita", "Pizza Margherita is a typical Neapolitan pizza made with San Marzano tomatoes, mozzarella fior di latte, fresh basil salt and extra-virgin olive oil.", 11.99, 1));
      Menus.add(new Menu("Pizza Neapolitan", "Pizza Neapolitan is a style of pizza made with tomatoes and mozzarella cheese.", 13.00, 1));
      Orders.add(new Order(1, 1, "New customer"));
    } catch (Exception e) {
      throw new IOException("Failed to populate database");
    }
  }
}