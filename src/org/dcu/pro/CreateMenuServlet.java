package org.dcu.pro;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Menu Creation Servlet
 */
@WebServlet("/application/professional/createMenu")
public class CreateMenuServlet extends HttpServlet {
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
    req.getRequestDispatcher( "/professional/createMenu.jsp").forward(req, res);
  }
}