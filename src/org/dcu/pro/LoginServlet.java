package org.dcu.pro;

import org.dcu.database.Users;
import org.dcu.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Professional Login Servlet
 */
@WebServlet("/professional/login")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Redirects to Dashboard if login is successful, to login otherwise
   * @param req the Servlet request
   * @param res the Servlet response
   * @throws IOException any issue while redirecting
   */
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
    req.setAttribute("contextPath", req.getContextPath());
    User user = Users.get(req.getParameter("emailField"), req.getParameter("passwordField"));
    if (user != null) {
      HttpSession session = req.getSession();
      session.setAttribute("user", user);
    }
    res.sendRedirect(req.getContextPath() + "/professional");
  }

  /**
   * Displays the login page
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws IOException
   * @throws ServletException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    req.setAttribute("contextPath", req.getContextPath());
    req.getRequestDispatcher("/professional/login.jsp").forward(req, res);
  }

}