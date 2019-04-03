package org.dcu.utils;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/**
 * Hashing utilities for password save
 */
public class HashingUtilities {
  /**
   * Used to generate the salt to hash the user password
   * @return the generated Salt
   */
  public static String generateSalt() {
    SecureRandom random = new SecureRandom();
    byte[] salt = new byte[16];
    random.nextBytes(salt);
    String generated = new String(salt);
    if (generated.contains("\'"))
      return generateSalt();
    return generated;
  }

  /**
   * Hash the given password using SHA-256 algorithm
   * @param password user input
   * @param salt application generated salt to hash
   * @return the hashed password
   * @throws NoSuchAlgorithmException
   */
  public static String generateHashedPassword(String password, String salt) throws NoSuchAlgorithmException {
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    md.update(salt.getBytes());
    byte[] hashedPassword = md.digest(password.getBytes(StandardCharsets.UTF_8));
    StringBuilder sb = new StringBuilder();
    for (byte b : hashedPassword)
      sb.append(String.format("%02x", b));
    return sb.toString();
  }
}
