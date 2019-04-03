package org.dcu.utils;

import org.dcu.models.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Session Manager for Professionals
 */
public class Session {
  public static User user;

  /**
   * Valide a user session
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   * @return whether the user is logged in or not
   * @throws IOException
   */
  public static boolean validate(HttpServletRequest req, HttpServletResponse res) throws IOException {
    HttpSession session = req.getSession(true);
    user = (User) session.getAttribute("user");
    if (user == null) {
      res.sendRedirect("/professional");
      return false;
    }
    return true;
  }

  /**
   * Clear the current session
   * @param req HttpServletRequest
   * @param res HttpServletResponse
   */
  public static void clear(HttpServletRequest req, HttpServletResponse res) throws IOException {
    req.setAttribute("contextPath", req.getContextPath());
    HttpSession session = req.getSession(true);
    session.removeAttribute("user");
  }
}
