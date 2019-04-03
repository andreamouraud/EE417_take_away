package org.dcu.pro;

import org.dcu.database.Users;
import org.dcu.models.User;
import org.dcu.utils.HashingUtilities;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/professional/signup")
public class SignupServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;


  /**
   * Redirects to Dashboard if login is successful, to login otherwise
   * @param req the Servlet request
   * @param res the Servlet response
   * @throws IOException any issue while redirecting
   */
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
    req.setAttribute("contextPath", req.getContextPath());
    User user = createUser(req.getParameter("firstNameField"), req.getParameter("surNameField"),
            req.getParameter("emailField"), req.getParameter("passwordField"),
            req.getParameter("passwordConfirmField"),
            Integer.parseInt(req.getParameter("genderField")));
    res.sendRedirect(req.getContextPath() + (user != null ? "/professional" : "/professional/signup.jsp"));
  }


  public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
    req.setAttribute("contextPath", req.getContextPath());
    req.getRequestDispatcher("/professional/signup.jsp").forward(req, res);
  }

  /**
   * Create user based on his information
   * @param email
   * @param password
   * @return an instance of the user or null if unknown
   */
  private User createUser(String firstName, String surName, String email, String password, String passwordConfirm, int gender) {
    if (validateEmail(email) && validatePassword(password, passwordConfirm) && validateIdentity(firstName, surName)) {
      String salt = HashingUtilities.generateSalt();

      User user = null;
      try {
        user = new User(firstName, surName, email, HashingUtilities.generateHashedPassword(password, salt), gender, salt);
      } catch (NoSuchAlgorithmException e) {
        e.printStackTrace();
      }
      Users.add(user);
      return user;
    }
    Logger.getLogger (SignupServlet.class.getName()).log(Level.INFO, "NULL");
    return null;
  }

  /**
   * Validate identity
   * @param firstName
   * @param surName
   * @return whether identity is valid or not
   */
  private boolean validateIdentity(String firstName, String surName) {
    return !firstName.isEmpty() && !surName.isEmpty();
  }

  /**
   * Validate password
   * @param password
   * @param passwordConfirm
   * @return whether password is valid or not
   */
  private boolean validatePassword(String password, String passwordConfirm) {
    Logger.getLogger (SignupServlet.class.getName()).log(Level.INFO, password);
    return !password.isEmpty() && password.equals(passwordConfirm);
  }

  /**
   * Validate email address
   * @param email
   * @return whether email is valid or not
   * TODO: validate
   */
  private boolean validateEmail(String email) {
      return true;
  }
}