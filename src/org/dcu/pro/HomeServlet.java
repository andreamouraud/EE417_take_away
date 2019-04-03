package org.dcu.pro;

import org.dcu.database.Restaurants;
import org.dcu.models.Restaurant;
import org.dcu.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Professional home page Servlet
 */
@WebServlet("/professional")
public class HomeServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Displays the page if logged in, redirect to login page otherwise
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws ServletException
   * @throws IOException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    req.setAttribute("contextPath", req.getContextPath());
    User currentUser = (User) req.getSession(true).getAttribute("user");

    if (currentUser == null || currentUser.getId() == null) {
      req.getRequestDispatcher("professional/login").forward(req, res);
      return;
    }
    List<Restaurant> restaurantList = Restaurants.getList(currentUser.getId());
    req.setAttribute("restaurantList", restaurantList);
    req.getRequestDispatcher( "professional/home.jsp").forward(req, res);
  }
}