package org.dcu.customer;

import org.dcu.database.Menus;
import org.dcu.database.Orders;
import org.dcu.database.Restaurants;
import org.dcu.models.Menu;
import org.dcu.models.Order;
import org.dcu.models.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Order Servlet
 */
@WebServlet("/application/order")
public class OrderServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Displays the order page
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws ServletException
   * @throws IOException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    req.setAttribute("contextPath", req.getContextPath());
    Menu menu = Menus.get(Integer.parseInt(req.getParameter("id")));
    if (menu == null) {
      res.sendRedirect("");
      return;
    }
    Restaurant restaurant = Restaurants.get(menu.getRestaurant());
    req.setAttribute("menu", menu);
    req.setAttribute("restaurant", restaurant);
    req.getRequestDispatcher("/order.jsp").forward(req, res);
  }

  /**
   * Used to perform actions taken on the forms page and call the Order creation
   * @param req
   * @param res
   * @throws IOException
   */
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
    req.setAttribute("contextPath", req.getContextPath());
    Integer restaurant = Integer.parseInt(req.getParameter("restaurant"));
    Integer menu = Integer.parseInt(req.getParameter("menu"));

    Order order = createOrder(restaurant, menu, req.getParameter("customerField"));
    req.setAttribute("order", order);
    res.sendRedirect(req.getContextPath() + "/application/confirmation");
  }

  /**
   * Create the order
   * @param restaurant the Restaurant id
   * @param menu the Menu id
   * @param customer the Customer name
   * @return the new Order
   */
  private Order createOrder(Integer restaurant, Integer menu, String customer) {
      Order order = new Order(restaurant, menu, customer);
      Orders.add(order);
      return order;
  }
}