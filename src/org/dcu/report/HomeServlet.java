package org.dcu.report;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Report Page Servlet
 */

@WebServlet("/report")
public class HomeServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  /**
   * Called when getting on the page
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @throws ServletException
   * @throws IOException
   */
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    req.setAttribute("contextPath", req.getContextPath());
    req.getRequestDispatcher("/report/report.jsp").forward(req, res);
  }

  /**
   * Convert a file to String
   * @param path file path
   * @return the content
   * @throws IOException
   */
  private String readFile(String path) throws IOException {
    return new String(Files.readAllBytes(Paths.get(path)));
  }
}