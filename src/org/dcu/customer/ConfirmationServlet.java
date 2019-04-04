package org.dcu.customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Order confirmation Servlet
 */
@WebServlet("/application/confirmation")
public class ConfirmationServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * Displays the confirmation page
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws ServletException
   * @throws IOException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    req.setAttribute("contextPath", req.getContextPath());
    req.getRequestDispatcher("/confirmation.jsp").forward(req, res);
  }
}