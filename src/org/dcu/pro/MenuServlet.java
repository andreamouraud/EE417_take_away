package org.dcu.pro;

import org.dcu.database.Menus;
import org.dcu.models.Menu;
import org.dcu.utils.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/professional/menu")
public class MenuServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Used to perform the actions taken on the page to create a menu
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException
   */
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
    req.setAttribute("contextPath", req.getContextPath());
    if (!Session.validate(req, res))
      return;
    Integer restaurant = (Integer) req.getSession().getAttribute("restaurant");
    if (restaurant == 0) {
      res.sendRedirect(req.getContextPath() + "/professional");
      return;
    }
    Menu menu = createMenu(req.getParameter("nameField"), req.getParameter("descriptionField"), Double.parseDouble(req.getParameter("priceField")), restaurant);

    if (menu != null) {
      res.sendRedirect(req.getContextPath() + "/professional/restaurant?id=" + restaurant);
    }
  }

  /**
   * Displays the page if logged in
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException
   * @throws ServletException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    req.setAttribute("contextPath", req.getContextPath());
    if (!Session.validate(req, res))
      return;
    Menu menu = Menus.get(Integer.parseInt(req.getParameter("id")));
    req.setAttribute("menu", menu);
    req.getRequestDispatcher("/professional/menu.jsp").forward(req, res);
  }

  /**
   * Create the menu in database
   * @param name
   * @param description
   * @param price
   * @param restaurant
   * @return the new Menu
   */
  private Menu createMenu(String name, String description, double price, Integer restaurant) {
    if (validateIdentity(name)) {
      Menu menu = new Menu(name, description, price, restaurant);
      Menus.add(menu);
      return menu;
    }
    return null;
  }

  /**
   * Validate that the menu name is valid
   * @param name
   * @return
   */
  private boolean validateIdentity(String name) {
    return !name.isEmpty();
  }
}