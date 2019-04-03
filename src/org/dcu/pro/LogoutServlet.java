package org.dcu.pro;

import org.dcu.utils.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Professional Logout Servlet
 */
@WebServlet("/professional/logout")
public class LogoutServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Logout user
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException
   * @throws ServletException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    req.setAttribute("contextPath", req.getContextPath());
    Session.clear(req, res);
    req.getRequestDispatcher("/professional").forward(req, res);
  }

}