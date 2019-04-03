package org.dcu.customer;

import org.dcu.database.Restaurants;
import org.dcu.models.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Order home Servlet
 */
@WebServlet("")
public class HomeServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Displays the order home page
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws ServletException
   * @throws IOException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    req.setAttribute("contextPath", req.getContextPath());
    List<Restaurant> restaurantList = Restaurants.getList();
    req.setAttribute("restaurantList", restaurantList);
    req.getRequestDispatcher("/home.jsp").forward(req, res);
  }
}