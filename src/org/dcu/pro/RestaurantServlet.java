package org.dcu.pro;

import org.dcu.database.Menus;
import org.dcu.database.Orders;
import org.dcu.database.Restaurants;
import org.dcu.models.Menu;
import org.dcu.models.Restaurant;
import org.dcu.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Professional Restaurant Servlet
 */
@WebServlet("/professional/restaurant")
public class RestaurantServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;


  /**
   * Redirects to Dashboard if login is successful, to login otherwise
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException any issue while redirecting
   */
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
    req.setAttribute("contextPath", req.getContextPath());
    HttpSession session = req.getSession(true);

    User currentUser = (User) req.getSession(true).getAttribute("user");
    Restaurant restaurant = createRestaurant(req.getParameter("nameField"), req.getParameter("locationField"), currentUser.getId());

    if (restaurant != null) {
      res.sendRedirect(req.getContextPath() + "/professional");
    }
  }

  /**
   * Displays the page
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException
   * @throws ServletException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    req.setAttribute("contextPath", req.getContextPath());
    HttpSession session = req.getSession();
    User currentUser = (User)session.getAttribute("user");
    if (currentUser == null) {
      res.sendRedirect(req.getContextPath() + "/professional");
      return;
    }
    Restaurant restaurant = Restaurants.get(Integer.parseInt(req.getParameter("id")));
    List<Menu> menuList = Menus.getList(restaurant.getId());
    req.getSession().setAttribute("restaurant", Integer.parseInt(req.getParameter("id")));
    req.setAttribute("restaurant", restaurant);
    req.setAttribute("menuList", menuList);
    req.setAttribute("orderList", Orders.getList(restaurant.getId()));
    req.getRequestDispatcher("/professional/restaurant.jsp").forward(req, res);
  }


  /**
   * Create the restaurant in database
   * @param name
   * @param location
   * @param owner
   * @return the new restaurant
   */
  private Restaurant createRestaurant(String name, String location, int owner) {
    if (validateIdentity(name)) {
      Restaurant restaurant = new Restaurant(name, location, owner);
      Restaurants.add(restaurant);
      return restaurant;
    }
    return null;
  }

  /**
   * Validate the restaurant name
   * @param name
   * @return
   */
  private boolean validateIdentity(String name) {
    return !name.isEmpty();
  }
}