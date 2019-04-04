package org.dcu.admin;

import org.dcu.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Admin login Servlet
 */
@WebServlet("/application/admin/login")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Redirects to Admin page if login is successful, to login otherwise
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException any issue while redirecting
   */
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
    req.setAttribute("contextPath", req.getContextPath());
    if (req.getParameter("emailField").equals("admin@dcu.ie") && req.getParameter("passwordField").equals("adminpass")) {
      HttpSession session = req.getSession();
      session.setAttribute("user", new User());
    }
    res.sendRedirect(req.getContextPath() + "/application/admin");
  }

  /**
   * Display the login form
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException
   * @throws ServletException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    req.setAttribute("contextPath", req.getContextPath());
    User user = (User)req.getSession().getAttribute("user");
    req.getRequestDispatcher("/admin/login.jsp").forward(req, res);
  }

}