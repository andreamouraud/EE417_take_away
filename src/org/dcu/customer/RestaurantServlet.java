package org.dcu.customer;

import org.dcu.database.Menus;
import org.dcu.database.Restaurants;
import org.dcu.models.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Restaurant Order Servlet
 */
@WebServlet("/application/restaurant")
public class RestaurantServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Displays the page
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws ServletException
   * @throws IOException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    req.setAttribute("contextPath", req.getContextPath());
    Restaurant restaurant = Restaurants.get(Integer.parseInt(req.getParameter("id")));
    restaurant.setMenu(Menus.getList(Integer.parseInt(req.getParameter("id"))));
    req.setAttribute("restaurant", restaurant);
    req.getRequestDispatcher("/restaurant.jsp").forward(req, res);
  }
}