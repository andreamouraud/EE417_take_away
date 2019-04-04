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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Professional Restaurant Servlet
 */
@WebServlet("/application/professional/restaurant")
public class RestaurantServlet extends HttpServlet {
  private static final String REGEX_PHONENUMBER = "\\d{10}|(?:\\d{3}-){2}\\d{4}|\\(\\d{3}\\)\\d{3}-?\\d{4}";
  private static final long serialVersionUID = 1L;


  /**
   * Redirects to Dashboard if login is successful, to login otherwise
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException any issue while redirecting
   */
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    req.setAttribute("contextPath", req.getContextPath());
    HttpSession session = req.getSession(true);

    User currentUser = (User) req.getSession(true).getAttribute("user");
    Restaurant restaurant = createRestaurant(req.getParameter("nameField"), req.getParameter("locationField"), currentUser.getId(), req.getParameter("descriptionField"), req.getParameter("phoneNumberField"));

    if (restaurant == null)
      req.getRequestDispatcher( "/professional/createRestaurant.jsp").forward(req, res);
    else
      res.sendRedirect(req.getContextPath() + "/application/professional");

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
      res.sendRedirect(req.getContextPath() + "/application/professional");
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
  private Restaurant createRestaurant(String name, String location, int owner, String description, String phoneNumber) {
    if (validateIdentity(name) && validatePhoneNumber(phoneNumber)) {
      Restaurant restaurant = new Restaurant(name, location, owner, description, phoneNumber);
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

  /**
   * Validate phone number
   * @param email
   * @return whether number is valid or not
   */
  private boolean validatePhoneNumber(String email) {
    Pattern pattern = Pattern.compile(REGEX_PHONENUMBER);
    Matcher matcher = pattern.matcher(email);
    return matcher.matches();
  }
}